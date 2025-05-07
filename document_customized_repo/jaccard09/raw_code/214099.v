module SgdLR_sw_SgdLR_sw_Pipeline_label_493 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_q0,v3_3_address1,v3_3_ce1,v3_3_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_q0,v2_2_address1,v2_2_ce1,v2_2_we1,v2_2_d1,v2_2_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_q0,v2_3_address1,v2_3_ce1,v2_3_we1,v2_3_d1,v2_3_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_2_address1,v3_2_ce1,v3_2_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,grp_fu_4764_p_din0,grp_fu_4764_p_din1,grp_fu_4764_p_opcode,grp_fu_4764_p_dout0,grp_fu_4764_p_ce,grp_fu_10140_p_din0,grp_fu_10140_p_din1,grp_fu_10140_p_dout0,grp_fu_10140_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [7:0] v3_3_address1;
output   v3_3_ce1;
input  [31:0] v3_3_q1;
output  [7:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [7:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [7:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [7:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [7:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
input  [31:0] v2_2_q0;
output  [7:0] v2_2_address1;
output   v2_2_ce1;
output   v2_2_we1;
output  [31:0] v2_2_d1;
input  [31:0] v2_2_q1;
output  [7:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
input  [31:0] v2_3_q0;
output  [7:0] v2_3_address1;
output   v2_3_ce1;
output   v2_3_we1;
output  [31:0] v2_3_d1;
input  [31:0] v2_3_q1;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [7:0] v3_2_address1;
output   v3_2_ce1;
input  [31:0] v3_2_q1;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [7:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [7:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [7:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [31:0] grp_fu_4764_p_din0;
output  [31:0] grp_fu_4764_p_din1;
output  [0:0] grp_fu_4764_p_opcode;
input  [31:0] grp_fu_4764_p_dout0;
output   grp_fu_4764_p_ce;
output  [31:0] grp_fu_10140_p_din0;
output  [31:0] grp_fu_10140_p_din1;
input  [31:0] grp_fu_10140_p_dout0;
output   grp_fu_10140_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_1105;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_3_reg_1096;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v2_0_addr_reg_1114;
reg   [7:0] v2_0_addr_reg_1114_pp0_iter1_reg;
reg   [7:0] v2_1_addr_reg_1119;
reg   [7:0] v2_1_addr_reg_1119_pp0_iter1_reg;
reg   [7:0] v2_2_addr_reg_1124;
reg   [7:0] v2_2_addr_reg_1124_pp0_iter1_reg;
reg   [7:0] v2_3_addr_reg_1129;
reg   [7:0] v2_3_addr_reg_1129_pp0_iter1_reg;
reg   [7:0] v2_0_addr_15_reg_1139;
reg   [7:0] v2_0_addr_15_reg_1139_pp0_iter1_reg;
reg   [7:0] v2_1_addr_15_reg_1145;
reg   [7:0] v2_1_addr_15_reg_1145_pp0_iter1_reg;
reg   [7:0] v2_2_addr_15_reg_1151;
reg   [7:0] v2_2_addr_15_reg_1151_pp0_iter1_reg;
reg   [7:0] v2_3_addr_15_reg_1157;
reg   [7:0] v2_3_addr_15_reg_1157_pp0_iter1_reg;
reg   [1:0] trunc_ln55_s_reg_1193;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] trunc_ln55_s_reg_1193_pp0_iter1_reg;
reg   [1:0] trunc_ln55_s_reg_1193_pp0_iter2_reg;
reg   [31:0] v26_reg_1203;
wire   [31:0] v28_fu_626_p11;
reg   [31:0] v28_reg_1208;
reg   [31:0] v26_15_reg_1213;
wire   [31:0] v28_15_fu_666_p11;
reg   [31:0] v28_15_reg_1218;
reg   [31:0] v26_16_reg_1223;
reg   [7:0] v2_0_addr_16_reg_1228;
reg   [7:0] v2_0_addr_16_reg_1228_pp0_iter1_reg;
reg   [7:0] v2_1_addr_16_reg_1233;
reg   [7:0] v2_1_addr_16_reg_1233_pp0_iter1_reg;
reg   [7:0] v2_2_addr_16_reg_1238;
reg   [7:0] v2_2_addr_16_reg_1238_pp0_iter1_reg;
reg   [7:0] v2_3_addr_16_reg_1243;
reg   [7:0] v2_3_addr_16_reg_1243_pp0_iter1_reg;
reg   [31:0] v26_17_reg_1248;
reg   [7:0] v2_0_addr_17_reg_1253;
reg   [7:0] v2_0_addr_17_reg_1253_pp0_iter1_reg;
reg   [7:0] v2_0_addr_17_reg_1253_pp0_iter2_reg;
reg   [7:0] v2_1_addr_17_reg_1259;
reg   [7:0] v2_1_addr_17_reg_1259_pp0_iter1_reg;
reg   [7:0] v2_1_addr_17_reg_1259_pp0_iter2_reg;
reg   [7:0] v2_2_addr_17_reg_1265;
reg   [7:0] v2_2_addr_17_reg_1265_pp0_iter1_reg;
reg   [7:0] v2_2_addr_17_reg_1265_pp0_iter2_reg;
reg   [7:0] v2_3_addr_17_reg_1271;
reg   [7:0] v2_3_addr_17_reg_1271_pp0_iter1_reg;
reg   [7:0] v2_3_addr_17_reg_1271_pp0_iter2_reg;
reg   [31:0] v26_18_reg_1277;
reg   [31:0] v26_19_reg_1282;
reg   [31:0] v26_20_reg_1287;
reg   [31:0] v26_21_reg_1292;
wire   [31:0] v28_16_fu_747_p11;
reg   [31:0] v28_16_reg_1297;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] v28_17_fu_786_p11;
reg   [31:0] v28_17_reg_1302;
wire   [4:0] tmp_11_fu_809_p4;
reg   [4:0] tmp_11_reg_1307;
reg   [4:0] tmp_11_reg_1307_pp0_iter1_reg;
reg   [7:0] v2_0_addr_18_reg_1313;
reg   [7:0] v2_0_addr_18_reg_1313_pp0_iter1_reg;
reg   [7:0] v2_0_addr_18_reg_1313_pp0_iter2_reg;
reg   [7:0] v2_1_addr_18_reg_1319;
reg   [7:0] v2_1_addr_18_reg_1319_pp0_iter1_reg;
reg   [7:0] v2_1_addr_18_reg_1319_pp0_iter2_reg;
reg   [7:0] v2_2_addr_18_reg_1325;
reg   [7:0] v2_2_addr_18_reg_1325_pp0_iter1_reg;
reg   [7:0] v2_2_addr_18_reg_1325_pp0_iter2_reg;
reg   [7:0] v2_3_addr_18_reg_1331;
reg   [7:0] v2_3_addr_18_reg_1331_pp0_iter1_reg;
reg   [7:0] v2_3_addr_18_reg_1331_pp0_iter2_reg;
reg   [7:0] v2_0_addr_19_reg_1337;
reg   [7:0] v2_0_addr_19_reg_1337_pp0_iter1_reg;
reg   [7:0] v2_0_addr_19_reg_1337_pp0_iter2_reg;
reg   [7:0] v2_1_addr_19_reg_1342;
reg   [7:0] v2_1_addr_19_reg_1342_pp0_iter1_reg;
reg   [7:0] v2_1_addr_19_reg_1342_pp0_iter2_reg;
reg   [7:0] v2_2_addr_19_reg_1347;
reg   [7:0] v2_2_addr_19_reg_1347_pp0_iter1_reg;
reg   [7:0] v2_2_addr_19_reg_1347_pp0_iter2_reg;
reg   [7:0] v2_3_addr_19_reg_1352;
reg   [7:0] v2_3_addr_19_reg_1352_pp0_iter1_reg;
reg   [7:0] v2_3_addr_19_reg_1352_pp0_iter2_reg;
wire   [31:0] v28_18_fu_887_p11;
reg   [31:0] v28_18_reg_1357;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v28_19_fu_926_p11;
reg   [31:0] v28_19_reg_1362;
reg   [7:0] v2_0_addr_20_reg_1367;
reg   [7:0] v2_0_addr_20_reg_1367_pp0_iter1_reg;
reg   [7:0] v2_0_addr_20_reg_1367_pp0_iter2_reg;
reg   [7:0] v2_1_addr_20_reg_1373;
reg   [7:0] v2_1_addr_20_reg_1373_pp0_iter1_reg;
reg   [7:0] v2_1_addr_20_reg_1373_pp0_iter2_reg;
reg   [7:0] v2_2_addr_20_reg_1379;
reg   [7:0] v2_2_addr_20_reg_1379_pp0_iter1_reg;
reg   [7:0] v2_2_addr_20_reg_1379_pp0_iter2_reg;
reg   [7:0] v2_3_addr_20_reg_1385;
reg   [7:0] v2_3_addr_20_reg_1385_pp0_iter1_reg;
reg   [7:0] v2_3_addr_20_reg_1385_pp0_iter2_reg;
wire   [31:0] v28_20_fu_980_p11;
reg   [31:0] v28_20_reg_1391;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] v27_reg_1396;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v27_15_reg_1401;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [31:0] v27_16_reg_1406;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] v27_17_reg_1411;
reg   [31:0] v27_18_reg_1416;
reg   [31:0] v27_19_reg_1421;
reg   [31:0] v27_20_reg_1426;
reg   [7:0] v2_0_addr_21_reg_1431;
reg   [7:0] v2_0_addr_21_reg_1431_pp0_iter2_reg;
reg   [7:0] v2_1_addr_21_reg_1436;
reg   [7:0] v2_1_addr_21_reg_1436_pp0_iter2_reg;
reg   [7:0] v2_2_addr_21_reg_1441;
reg   [7:0] v2_2_addr_21_reg_1441_pp0_iter2_reg;
reg   [7:0] v2_3_addr_21_reg_1446;
reg   [7:0] v2_3_addr_21_reg_1446_pp0_iter2_reg;
wire   [31:0] bitcast_ln60_fu_1018_p1;
reg   [31:0] bitcast_ln60_reg_1451;
reg   [31:0] v27_21_reg_1459;
wire   [31:0] v28_21_fu_1038_p11;
reg   [31:0] v28_21_reg_1464;
wire   [31:0] bitcast_ln60_15_fu_1061_p1;
reg   [31:0] bitcast_ln60_15_reg_1469;
wire   [31:0] bitcast_ln60_16_fu_1065_p1;
reg   [31:0] bitcast_ln60_16_reg_1477;
wire   [31:0] bitcast_ln60_17_fu_1069_p1;
reg   [31:0] bitcast_ln60_17_reg_1485;
wire   [31:0] bitcast_ln60_18_fu_1073_p1;
reg   [31:0] bitcast_ln60_18_reg_1493;
wire   [31:0] bitcast_ln60_19_fu_1077_p1;
reg   [31:0] bitcast_ln60_19_reg_1501;
wire   [31:0] bitcast_ln60_20_fu_1081_p1;
reg   [31:0] bitcast_ln60_20_reg_1509;
wire   [31:0] bitcast_ln60_21_fu_1085_p1;
reg   [31:0] bitcast_ln60_21_reg_1517;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_3_fu_541_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_523_p1;
wire   [63:0] zext_ln56_fu_567_p1;
wire   [63:0] zext_ln56_18_fu_593_p1;
wire   [63:0] zext_ln56_15_fu_707_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_16_fu_723_p1;
wire   [63:0] zext_ln56_17_fu_826_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln56_19_fu_853_p1;
wire   [63:0] zext_ln56_20_fu_956_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln56_21_fu_1010_p1;
reg   [10:0] v25_fu_98;
wire   [10:0] add_ln55_fu_861_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_3;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v2_0_ce1_local;
reg   [7:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [7:0] v2_0_address0_local;
reg    v2_0_we1_local;
reg   [31:0] v2_0_d1_local;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage4;
reg    v2_0_we0_local;
reg   [31:0] v2_0_d0_local;
reg    v2_1_ce1_local;
reg   [7:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [7:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg   [31:0] v2_1_d1_local;
reg    v2_1_we0_local;
reg   [31:0] v2_1_d0_local;
reg    v2_2_ce1_local;
reg   [7:0] v2_2_address1_local;
reg    v2_2_ce0_local;
reg   [7:0] v2_2_address0_local;
reg    v2_2_we1_local;
reg   [31:0] v2_2_d1_local;
reg    v2_2_we0_local;
reg   [31:0] v2_2_d0_local;
reg    v2_3_ce1_local;
reg   [7:0] v2_3_address1_local;
reg    v2_3_ce0_local;
reg   [7:0] v2_3_address0_local;
reg    v2_3_we1_local;
reg   [31:0] v2_3_d1_local;
reg    v2_3_we0_local;
reg   [31:0] v2_3_d0_local;
reg    v3_1_ce1_local;
reg    v3_1_ce0_local;
reg    v3_2_ce1_local;
reg    v3_2_ce0_local;
reg    v3_3_ce1_local;
reg    v3_3_ce0_local;
reg   [31:0] grp_fu_494_p0;
reg   [31:0] grp_fu_494_p1;
reg   [31:0] grp_fu_498_p0;
wire   [7:0] trunc_ln55_fu_519_p1;
wire   [7:0] lshr_ln55_s_fu_531_p4;
wire   [6:0] tmp_s_fu_549_p4;
wire   [7:0] or_ln56_s_fu_559_p3;
wire   [6:0] tmp_12_fu_575_p4;
wire   [7:0] or_ln56_18_fu_585_p3;
wire   [31:0] v28_fu_626_p2;
wire   [31:0] v28_fu_626_p4;
wire   [31:0] v28_fu_626_p6;
wire   [31:0] v28_fu_626_p8;
wire   [31:0] v28_fu_626_p9;
wire   [1:0] v28_fu_626_p10;
wire   [31:0] v28_15_fu_666_p2;
wire   [31:0] v28_15_fu_666_p4;
wire   [31:0] v28_15_fu_666_p6;
wire   [31:0] v28_15_fu_666_p8;
wire   [31:0] v28_15_fu_666_p9;
wire   [1:0] v28_15_fu_666_p10;
wire   [5:0] tmp_9_fu_690_p4;
wire   [7:0] or_ln56_15_fu_699_p3;
wire   [7:0] or_ln56_16_fu_715_p3;
wire   [31:0] v28_16_fu_747_p2;
wire   [31:0] v28_16_fu_747_p4;
wire   [31:0] v28_16_fu_747_p6;
wire   [31:0] v28_16_fu_747_p8;
wire   [31:0] v28_16_fu_747_p9;
wire   [31:0] v28_17_fu_786_p2;
wire   [31:0] v28_17_fu_786_p4;
wire   [31:0] v28_17_fu_786_p6;
wire   [31:0] v28_17_fu_786_p8;
wire   [31:0] v28_17_fu_786_p9;
wire   [7:0] or_ln56_17_fu_818_p3;
wire   [0:0] tmp_13_fu_834_p3;
wire   [7:0] or_ln56_19_fu_841_p5;
wire   [31:0] v28_18_fu_887_p2;
wire   [31:0] v28_18_fu_887_p4;
wire   [31:0] v28_18_fu_887_p6;
wire   [31:0] v28_18_fu_887_p8;
wire   [31:0] v28_18_fu_887_p9;
wire   [31:0] v28_19_fu_926_p2;
wire   [31:0] v28_19_fu_926_p4;
wire   [31:0] v28_19_fu_926_p6;
wire   [31:0] v28_19_fu_926_p8;
wire   [31:0] v28_19_fu_926_p9;
wire   [7:0] or_ln56_20_fu_949_p3;
wire   [31:0] v28_20_fu_980_p2;
wire   [31:0] v28_20_fu_980_p4;
wire   [31:0] v28_20_fu_980_p6;
wire   [31:0] v28_20_fu_980_p8;
wire   [31:0] v28_20_fu_980_p9;
wire   [7:0] or_ln56_21_fu_1003_p3;
wire   [31:0] v28_21_fu_1038_p2;
wire   [31:0] v28_21_fu_1038_p4;
wire   [31:0] v28_21_fu_1038_p6;
wire   [31:0] v28_21_fu_1038_p8;
wire   [31:0] v28_21_fu_1038_p9;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v28_fu_626_p1;
wire   [1:0] v28_fu_626_p3;
wire  signed [1:0] v28_fu_626_p5;
wire  signed [1:0] v28_fu_626_p7;
wire   [1:0] v28_15_fu_666_p1;
wire   [1:0] v28_15_fu_666_p3;
wire  signed [1:0] v28_15_fu_666_p5;
wire  signed [1:0] v28_15_fu_666_p7;
wire   [1:0] v28_16_fu_747_p1;
wire   [1:0] v28_16_fu_747_p3;
wire  signed [1:0] v28_16_fu_747_p5;
wire  signed [1:0] v28_16_fu_747_p7;
wire   [1:0] v28_17_fu_786_p1;
wire   [1:0] v28_17_fu_786_p3;
wire  signed [1:0] v28_17_fu_786_p5;
wire  signed [1:0] v28_17_fu_786_p7;
wire   [1:0] v28_18_fu_887_p1;
wire   [1:0] v28_18_fu_887_p3;
wire  signed [1:0] v28_18_fu_887_p5;
wire  signed [1:0] v28_18_fu_887_p7;
wire   [1:0] v28_19_fu_926_p1;
wire   [1:0] v28_19_fu_926_p3;
wire  signed [1:0] v28_19_fu_926_p5;
wire  signed [1:0] v28_19_fu_926_p7;
wire   [1:0] v28_20_fu_980_p1;
wire   [1:0] v28_20_fu_980_p3;
wire  signed [1:0] v28_20_fu_980_p5;
wire  signed [1:0] v28_20_fu_980_p7;
wire   [1:0] v28_21_fu_1038_p1;
wire   [1:0] v28_21_fu_1038_p3;
wire  signed [1:0] v28_21_fu_1038_p5;
wire  signed [1:0] v28_21_fu_1038_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_98 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1907(.din0(v28_fu_626_p2),.din1(v28_fu_626_p4),.din2(v28_fu_626_p6),.din3(v28_fu_626_p8),.def(v28_fu_626_p9),.sel(v28_fu_626_p10),.dout(v28_fu_626_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1908(.din0(v28_15_fu_666_p2),.din1(v28_15_fu_666_p4),.din2(v28_15_fu_666_p6),.din3(v28_15_fu_666_p8),.def(v28_15_fu_666_p9),.sel(v28_15_fu_666_p10),.dout(v28_15_fu_666_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1909(.din0(v28_16_fu_747_p2),.din1(v28_16_fu_747_p4),.din2(v28_16_fu_747_p6),.din3(v28_16_fu_747_p8),.def(v28_16_fu_747_p9),.sel(trunc_ln55_s_reg_1193),.dout(v28_16_fu_747_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1910(.din0(v28_17_fu_786_p2),.din1(v28_17_fu_786_p4),.din2(v28_17_fu_786_p6),.din3(v28_17_fu_786_p8),.def(v28_17_fu_786_p9),.sel(trunc_ln55_s_reg_1193),.dout(v28_17_fu_786_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1911(.din0(v28_18_fu_887_p2),.din1(v28_18_fu_887_p4),.din2(v28_18_fu_887_p6),.din3(v28_18_fu_887_p8),.def(v28_18_fu_887_p9),.sel(trunc_ln55_s_reg_1193),.dout(v28_18_fu_887_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1912(.din0(v28_19_fu_926_p2),.din1(v28_19_fu_926_p4),.din2(v28_19_fu_926_p6),.din3(v28_19_fu_926_p8),.def(v28_19_fu_926_p9),.sel(trunc_ln55_s_reg_1193),.dout(v28_19_fu_926_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1913(.din0(v28_20_fu_980_p2),.din1(v28_20_fu_980_p4),.din2(v28_20_fu_980_p6),.din3(v28_20_fu_980_p8),.def(v28_20_fu_980_p9),.sel(trunc_ln55_s_reg_1193),.dout(v28_20_fu_980_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1914(.din0(v28_21_fu_1038_p2),.din1(v28_21_fu_1038_p4),.din2(v28_21_fu_1038_p6),.din3(v28_21_fu_1038_p8),.def(v28_21_fu_1038_p9),.sel(trunc_ln55_s_reg_1193_pp0_iter1_reg),.dout(v28_21_fu_1038_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_fu_98 <= 11'd0;
    end else if (((tmp_reg_1105 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v25_fu_98 <= add_ln55_fu_861_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        bitcast_ln60_17_reg_1485 <= bitcast_ln60_17_fu_1069_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bitcast_ln60_15_reg_1469 <= bitcast_ln60_15_fu_1061_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bitcast_ln60_16_reg_1477 <= bitcast_ln60_16_fu_1065_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln60_18_reg_1493 <= bitcast_ln60_18_fu_1073_p1;
        tmp_reg_1105 <= ap_sig_allocacmp_v25_3[32'd10];
        v25_3_reg_1096 <= ap_sig_allocacmp_v25_3;
        v2_0_addr_15_reg_1139[7 : 1] <= zext_ln56_fu_567_p1[7 : 1];
        v2_0_addr_15_reg_1139_pp0_iter1_reg[7 : 1] <= v2_0_addr_15_reg_1139[7 : 1];
        v2_0_addr_reg_1114 <= zext_ln55_fu_523_p1;
        v2_0_addr_reg_1114_pp0_iter1_reg <= v2_0_addr_reg_1114;
        v2_1_addr_15_reg_1145[7 : 1] <= zext_ln56_fu_567_p1[7 : 1];
        v2_1_addr_15_reg_1145_pp0_iter1_reg[7 : 1] <= v2_1_addr_15_reg_1145[7 : 1];
        v2_1_addr_reg_1119 <= zext_ln55_fu_523_p1;
        v2_1_addr_reg_1119_pp0_iter1_reg <= v2_1_addr_reg_1119;
        v2_2_addr_15_reg_1151[7 : 1] <= zext_ln56_fu_567_p1[7 : 1];
        v2_2_addr_15_reg_1151_pp0_iter1_reg[7 : 1] <= v2_2_addr_15_reg_1151[7 : 1];
        v2_2_addr_reg_1124 <= zext_ln55_fu_523_p1;
        v2_2_addr_reg_1124_pp0_iter1_reg <= v2_2_addr_reg_1124;
        v2_3_addr_15_reg_1157[7 : 1] <= zext_ln56_fu_567_p1[7 : 1];
        v2_3_addr_15_reg_1157_pp0_iter1_reg[7 : 1] <= v2_3_addr_15_reg_1157[7 : 1];
        v2_3_addr_reg_1129 <= zext_ln55_fu_523_p1;
        v2_3_addr_reg_1129_pp0_iter1_reg <= v2_3_addr_reg_1129;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln60_19_reg_1501 <= bitcast_ln60_19_fu_1077_p1;
        trunc_ln55_s_reg_1193 <= {{v25_3_reg_1096[9:8]}};
        trunc_ln55_s_reg_1193_pp0_iter1_reg <= trunc_ln55_s_reg_1193;
        trunc_ln55_s_reg_1193_pp0_iter2_reg <= trunc_ln55_s_reg_1193_pp0_iter1_reg;
        v28_15_reg_1218 <= v28_15_fu_666_p11;
        v28_reg_1208 <= v28_fu_626_p11;
        v2_0_addr_16_reg_1228[7 : 2] <= zext_ln56_15_fu_707_p1[7 : 2];
        v2_0_addr_16_reg_1228_pp0_iter1_reg[7 : 2] <= v2_0_addr_16_reg_1228[7 : 2];
        v2_0_addr_17_reg_1253[7 : 2] <= zext_ln56_16_fu_723_p1[7 : 2];
        v2_0_addr_17_reg_1253_pp0_iter1_reg[7 : 2] <= v2_0_addr_17_reg_1253[7 : 2];
        v2_0_addr_17_reg_1253_pp0_iter2_reg[7 : 2] <= v2_0_addr_17_reg_1253_pp0_iter1_reg[7 : 2];
        v2_1_addr_16_reg_1233[7 : 2] <= zext_ln56_15_fu_707_p1[7 : 2];
        v2_1_addr_16_reg_1233_pp0_iter1_reg[7 : 2] <= v2_1_addr_16_reg_1233[7 : 2];
        v2_1_addr_17_reg_1259[7 : 2] <= zext_ln56_16_fu_723_p1[7 : 2];
        v2_1_addr_17_reg_1259_pp0_iter1_reg[7 : 2] <= v2_1_addr_17_reg_1259[7 : 2];
        v2_1_addr_17_reg_1259_pp0_iter2_reg[7 : 2] <= v2_1_addr_17_reg_1259_pp0_iter1_reg[7 : 2];
        v2_2_addr_16_reg_1238[7 : 2] <= zext_ln56_15_fu_707_p1[7 : 2];
        v2_2_addr_16_reg_1238_pp0_iter1_reg[7 : 2] <= v2_2_addr_16_reg_1238[7 : 2];
        v2_2_addr_17_reg_1265[7 : 2] <= zext_ln56_16_fu_723_p1[7 : 2];
        v2_2_addr_17_reg_1265_pp0_iter1_reg[7 : 2] <= v2_2_addr_17_reg_1265[7 : 2];
        v2_2_addr_17_reg_1265_pp0_iter2_reg[7 : 2] <= v2_2_addr_17_reg_1265_pp0_iter1_reg[7 : 2];
        v2_3_addr_16_reg_1243[7 : 2] <= zext_ln56_15_fu_707_p1[7 : 2];
        v2_3_addr_16_reg_1243_pp0_iter1_reg[7 : 2] <= v2_3_addr_16_reg_1243[7 : 2];
        v2_3_addr_17_reg_1271[7 : 2] <= zext_ln56_16_fu_723_p1[7 : 2];
        v2_3_addr_17_reg_1271_pp0_iter1_reg[7 : 2] <= v2_3_addr_17_reg_1271[7 : 2];
        v2_3_addr_17_reg_1271_pp0_iter2_reg[7 : 2] <= v2_3_addr_17_reg_1271_pp0_iter1_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln60_20_reg_1509 <= bitcast_ln60_20_fu_1081_p1;
        tmp_11_reg_1307 <= {{v25_3_reg_1096[7:3]}};
        tmp_11_reg_1307_pp0_iter1_reg <= tmp_11_reg_1307;
        v28_16_reg_1297 <= v28_16_fu_747_p11;
        v28_17_reg_1302 <= v28_17_fu_786_p11;
        v2_0_addr_18_reg_1313[7 : 3] <= zext_ln56_17_fu_826_p1[7 : 3];
        v2_0_addr_18_reg_1313_pp0_iter1_reg[7 : 3] <= v2_0_addr_18_reg_1313[7 : 3];
        v2_0_addr_18_reg_1313_pp0_iter2_reg[7 : 3] <= v2_0_addr_18_reg_1313_pp0_iter1_reg[7 : 3];
        v2_0_addr_19_reg_1337[1] <= zext_ln56_19_fu_853_p1[1];
v2_0_addr_19_reg_1337[7 : 3] <= zext_ln56_19_fu_853_p1[7 : 3];
        v2_0_addr_19_reg_1337_pp0_iter1_reg[1] <= v2_0_addr_19_reg_1337[1];
v2_0_addr_19_reg_1337_pp0_iter1_reg[7 : 3] <= v2_0_addr_19_reg_1337[7 : 3];
        v2_0_addr_19_reg_1337_pp0_iter2_reg[1] <= v2_0_addr_19_reg_1337_pp0_iter1_reg[1];
v2_0_addr_19_reg_1337_pp0_iter2_reg[7 : 3] <= v2_0_addr_19_reg_1337_pp0_iter1_reg[7 : 3];
        v2_1_addr_18_reg_1319[7 : 3] <= zext_ln56_17_fu_826_p1[7 : 3];
        v2_1_addr_18_reg_1319_pp0_iter1_reg[7 : 3] <= v2_1_addr_18_reg_1319[7 : 3];
        v2_1_addr_18_reg_1319_pp0_iter2_reg[7 : 3] <= v2_1_addr_18_reg_1319_pp0_iter1_reg[7 : 3];
        v2_1_addr_19_reg_1342[1] <= zext_ln56_19_fu_853_p1[1];
v2_1_addr_19_reg_1342[7 : 3] <= zext_ln56_19_fu_853_p1[7 : 3];
        v2_1_addr_19_reg_1342_pp0_iter1_reg[1] <= v2_1_addr_19_reg_1342[1];
v2_1_addr_19_reg_1342_pp0_iter1_reg[7 : 3] <= v2_1_addr_19_reg_1342[7 : 3];
        v2_1_addr_19_reg_1342_pp0_iter2_reg[1] <= v2_1_addr_19_reg_1342_pp0_iter1_reg[1];
v2_1_addr_19_reg_1342_pp0_iter2_reg[7 : 3] <= v2_1_addr_19_reg_1342_pp0_iter1_reg[7 : 3];
        v2_2_addr_18_reg_1325[7 : 3] <= zext_ln56_17_fu_826_p1[7 : 3];
        v2_2_addr_18_reg_1325_pp0_iter1_reg[7 : 3] <= v2_2_addr_18_reg_1325[7 : 3];
        v2_2_addr_18_reg_1325_pp0_iter2_reg[7 : 3] <= v2_2_addr_18_reg_1325_pp0_iter1_reg[7 : 3];
        v2_2_addr_19_reg_1347[1] <= zext_ln56_19_fu_853_p1[1];
v2_2_addr_19_reg_1347[7 : 3] <= zext_ln56_19_fu_853_p1[7 : 3];
        v2_2_addr_19_reg_1347_pp0_iter1_reg[1] <= v2_2_addr_19_reg_1347[1];
v2_2_addr_19_reg_1347_pp0_iter1_reg[7 : 3] <= v2_2_addr_19_reg_1347[7 : 3];
        v2_2_addr_19_reg_1347_pp0_iter2_reg[1] <= v2_2_addr_19_reg_1347_pp0_iter1_reg[1];
v2_2_addr_19_reg_1347_pp0_iter2_reg[7 : 3] <= v2_2_addr_19_reg_1347_pp0_iter1_reg[7 : 3];
        v2_3_addr_18_reg_1331[7 : 3] <= zext_ln56_17_fu_826_p1[7 : 3];
        v2_3_addr_18_reg_1331_pp0_iter1_reg[7 : 3] <= v2_3_addr_18_reg_1331[7 : 3];
        v2_3_addr_18_reg_1331_pp0_iter2_reg[7 : 3] <= v2_3_addr_18_reg_1331_pp0_iter1_reg[7 : 3];
        v2_3_addr_19_reg_1352[1] <= zext_ln56_19_fu_853_p1[1];
v2_3_addr_19_reg_1352[7 : 3] <= zext_ln56_19_fu_853_p1[7 : 3];
        v2_3_addr_19_reg_1352_pp0_iter1_reg[1] <= v2_3_addr_19_reg_1352[1];
v2_3_addr_19_reg_1352_pp0_iter1_reg[7 : 3] <= v2_3_addr_19_reg_1352[7 : 3];
        v2_3_addr_19_reg_1352_pp0_iter2_reg[1] <= v2_3_addr_19_reg_1352_pp0_iter1_reg[1];
v2_3_addr_19_reg_1352_pp0_iter2_reg[7 : 3] <= v2_3_addr_19_reg_1352_pp0_iter1_reg[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bitcast_ln60_21_reg_1517 <= bitcast_ln60_21_fu_1085_p1;
        v28_18_reg_1357 <= v28_18_fu_887_p11;
        v28_19_reg_1362 <= v28_19_fu_926_p11;
        v2_0_addr_20_reg_1367[7 : 3] <= zext_ln56_20_fu_956_p1[7 : 3];
        v2_0_addr_20_reg_1367_pp0_iter1_reg[7 : 3] <= v2_0_addr_20_reg_1367[7 : 3];
        v2_0_addr_20_reg_1367_pp0_iter2_reg[7 : 3] <= v2_0_addr_20_reg_1367_pp0_iter1_reg[7 : 3];
        v2_0_addr_21_reg_1431[7 : 3] <= zext_ln56_21_fu_1010_p1[7 : 3];
        v2_0_addr_21_reg_1431_pp0_iter2_reg[7 : 3] <= v2_0_addr_21_reg_1431[7 : 3];
        v2_1_addr_20_reg_1373[7 : 3] <= zext_ln56_20_fu_956_p1[7 : 3];
        v2_1_addr_20_reg_1373_pp0_iter1_reg[7 : 3] <= v2_1_addr_20_reg_1373[7 : 3];
        v2_1_addr_20_reg_1373_pp0_iter2_reg[7 : 3] <= v2_1_addr_20_reg_1373_pp0_iter1_reg[7 : 3];
        v2_1_addr_21_reg_1436[7 : 3] <= zext_ln56_21_fu_1010_p1[7 : 3];
        v2_1_addr_21_reg_1436_pp0_iter2_reg[7 : 3] <= v2_1_addr_21_reg_1436[7 : 3];
        v2_2_addr_20_reg_1379[7 : 3] <= zext_ln56_20_fu_956_p1[7 : 3];
        v2_2_addr_20_reg_1379_pp0_iter1_reg[7 : 3] <= v2_2_addr_20_reg_1379[7 : 3];
        v2_2_addr_20_reg_1379_pp0_iter2_reg[7 : 3] <= v2_2_addr_20_reg_1379_pp0_iter1_reg[7 : 3];
        v2_2_addr_21_reg_1441[7 : 3] <= zext_ln56_21_fu_1010_p1[7 : 3];
        v2_2_addr_21_reg_1441_pp0_iter2_reg[7 : 3] <= v2_2_addr_21_reg_1441[7 : 3];
        v2_3_addr_20_reg_1385[7 : 3] <= zext_ln56_20_fu_956_p1[7 : 3];
        v2_3_addr_20_reg_1385_pp0_iter1_reg[7 : 3] <= v2_3_addr_20_reg_1385[7 : 3];
        v2_3_addr_20_reg_1385_pp0_iter2_reg[7 : 3] <= v2_3_addr_20_reg_1385_pp0_iter1_reg[7 : 3];
        v2_3_addr_21_reg_1446[7 : 3] <= zext_ln56_21_fu_1010_p1[7 : 3];
        v2_3_addr_21_reg_1446_pp0_iter2_reg[7 : 3] <= v2_3_addr_21_reg_1446[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bitcast_ln60_reg_1451 <= bitcast_ln60_fu_1018_p1;
        v28_20_reg_1391 <= v28_20_fu_980_p11;
        v28_21_reg_1464 <= v28_21_fu_1038_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_15_reg_1213 <= v3_1_q1;
        v26_16_reg_1223 <= v3_2_q1;
        v26_17_reg_1248 <= v3_3_q1;
        v26_18_reg_1277 <= v3_q0;
        v26_19_reg_1282 <= v3_1_q0;
        v26_20_reg_1287 <= v3_2_q0;
        v26_21_reg_1292 <= v3_3_q0;
        v26_reg_1203 <= v3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_15_reg_1401 <= grp_fu_10140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v27_16_reg_1406 <= grp_fu_10140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_17_reg_1411 <= grp_fu_10140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_18_reg_1416 <= grp_fu_10140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_19_reg_1421 <= grp_fu_10140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_20_reg_1426 <= grp_fu_10140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_21_reg_1459 <= grp_fu_10140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_reg_1396 <= grp_fu_10140_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1105 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_3 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_3 = v25_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_494_p0 = v28_21_reg_1464;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_494_p0 = v28_20_reg_1391;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_494_p0 = v28_19_reg_1362;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_494_p0 = v28_18_reg_1357;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_494_p0 = v28_17_reg_1302;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_494_p0 = v28_16_reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_494_p0 = v28_15_reg_1218;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_494_p0 = v28_reg_1208;
    end else begin
        grp_fu_494_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_494_p1 = v27_21_reg_1459;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_494_p1 = v27_20_reg_1426;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_494_p1 = v27_19_reg_1421;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_494_p1 = v27_18_reg_1416;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_494_p1 = v27_17_reg_1411;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_494_p1 = v27_16_reg_1406;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_494_p1 = v27_15_reg_1401;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_494_p1 = v27_reg_1396;
    end else begin
        grp_fu_494_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_498_p0 = v26_21_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_498_p0 = v26_20_reg_1287;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_498_p0 = v26_19_reg_1282;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_498_p0 = v26_18_reg_1277;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_498_p0 = v26_17_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_498_p0 = v26_16_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_498_p0 = v26_15_reg_1213;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_498_p0 = v26_reg_1203;
    end else begin
        grp_fu_498_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_address0_local = v2_0_addr_21_reg_1431_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_address0_local = v2_0_addr_20_reg_1367_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_address0_local = v2_0_addr_19_reg_1337_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_address0_local = v2_0_addr_18_reg_1313_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address0_local = zext_ln56_21_fu_1010_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = zext_ln56_19_fu_853_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = zext_ln56_16_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_fu_567_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_address1_local = v2_0_addr_17_reg_1253_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_address1_local = v2_0_addr_16_reg_1228_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_address1_local = v2_0_addr_15_reg_1139_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_address1_local = v2_0_addr_reg_1114_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address1_local = zext_ln56_20_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address1_local = zext_ln56_17_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = zext_ln56_15_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_fu_523_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_0_d0_local = bitcast_ln60_21_reg_1517;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_0_d0_local = bitcast_ln60_20_reg_1509;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_0_d0_local = bitcast_ln60_19_reg_1501;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_0_d0_local = bitcast_ln60_18_reg_1493;
        end else begin
            v2_0_d0_local = 'bx;
        end
    end else begin
        v2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_d1_local = bitcast_ln60_17_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_0_d1_local = bitcast_ln60_16_reg_1477;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_d1_local = bitcast_ln60_15_reg_1469;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_0_d1_local = bitcast_ln60_reg_1451;
    end else begin
        v2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_address0_local = v2_1_addr_21_reg_1436_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_address0_local = v2_1_addr_20_reg_1373_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_address0_local = v2_1_addr_19_reg_1342_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_address0_local = v2_1_addr_18_reg_1319_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address0_local = zext_ln56_21_fu_1010_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = zext_ln56_19_fu_853_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = zext_ln56_16_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_fu_567_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_address1_local = v2_1_addr_17_reg_1259_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_address1_local = v2_1_addr_16_reg_1233_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_address1_local = v2_1_addr_15_reg_1145_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_address1_local = v2_1_addr_reg_1119_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address1_local = zext_ln56_20_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address1_local = zext_ln56_17_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = zext_ln56_15_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_fu_523_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_1_d0_local = bitcast_ln60_21_reg_1517;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_1_d0_local = bitcast_ln60_20_reg_1509;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_1_d0_local = bitcast_ln60_19_reg_1501;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_1_d0_local = bitcast_ln60_18_reg_1493;
        end else begin
            v2_1_d0_local = 'bx;
        end
    end else begin
        v2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_d1_local = bitcast_ln60_17_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_1_d1_local = bitcast_ln60_16_reg_1477;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_d1_local = bitcast_ln60_15_reg_1469;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_1_d1_local = bitcast_ln60_reg_1451;
    end else begin
        v2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_2_address0_local = v2_2_addr_21_reg_1441_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_2_address0_local = v2_2_addr_20_reg_1379_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_2_address0_local = v2_2_addr_19_reg_1347_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_2_address0_local = v2_2_addr_18_reg_1325_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_2_address0_local = zext_ln56_21_fu_1010_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_address0_local = zext_ln56_19_fu_853_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address0_local = zext_ln56_16_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address0_local = zext_ln56_fu_567_p1;
    end else begin
        v2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_2_address1_local = v2_2_addr_17_reg_1265_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_2_address1_local = v2_2_addr_16_reg_1238_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_2_address1_local = v2_2_addr_15_reg_1151_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_2_address1_local = v2_2_addr_reg_1124_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_2_address1_local = zext_ln56_20_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_address1_local = zext_ln56_17_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address1_local = zext_ln56_15_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address1_local = zext_ln55_fu_523_p1;
    end else begin
        v2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_2_d0_local = bitcast_ln60_21_reg_1517;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_2_d0_local = bitcast_ln60_20_reg_1509;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_2_d0_local = bitcast_ln60_19_reg_1501;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_2_d0_local = bitcast_ln60_18_reg_1493;
        end else begin
            v2_2_d0_local = 'bx;
        end
    end else begin
        v2_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_2_d1_local = bitcast_ln60_17_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_2_d1_local = bitcast_ln60_16_reg_1477;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_2_d1_local = bitcast_ln60_15_reg_1469;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_2_d1_local = bitcast_ln60_reg_1451;
    end else begin
        v2_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_2_we1_local = 1'b1;
    end else begin
        v2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_3_address0_local = v2_3_addr_21_reg_1446_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_3_address0_local = v2_3_addr_20_reg_1385_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_3_address0_local = v2_3_addr_19_reg_1352_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_3_address0_local = v2_3_addr_18_reg_1331_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_3_address0_local = zext_ln56_21_fu_1010_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_address0_local = zext_ln56_19_fu_853_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address0_local = zext_ln56_16_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address0_local = zext_ln56_fu_567_p1;
    end else begin
        v2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_3_address1_local = v2_3_addr_17_reg_1271_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_3_address1_local = v2_3_addr_16_reg_1243_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_3_address1_local = v2_3_addr_15_reg_1157_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_3_address1_local = v2_3_addr_reg_1129_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_3_address1_local = zext_ln56_20_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_address1_local = zext_ln56_17_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address1_local = zext_ln56_15_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address1_local = zext_ln55_fu_523_p1;
    end else begin
        v2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v2_3_d0_local = bitcast_ln60_21_reg_1517;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v2_3_d0_local = bitcast_ln60_20_reg_1509;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v2_3_d0_local = bitcast_ln60_19_reg_1501;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v2_3_d0_local = bitcast_ln60_18_reg_1493;
        end else begin
            v2_3_d0_local = 'bx;
        end
    end else begin
        v2_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_3_d1_local = bitcast_ln60_17_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v2_3_d1_local = bitcast_ln60_16_reg_1477;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_3_d1_local = bitcast_ln60_15_reg_1469;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v2_3_d1_local = bitcast_ln60_reg_1451;
    end else begin
        v2_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln55_s_reg_1193_pp0_iter2_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v2_3_we1_local = 1'b1;
    end else begin
        v2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_861_p2 = (v25_3_reg_1096 + 11'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_15_fu_1061_p1 = grp_fu_4764_p_dout0;
assign bitcast_ln60_16_fu_1065_p1 = grp_fu_4764_p_dout0;
assign bitcast_ln60_17_fu_1069_p1 = grp_fu_4764_p_dout0;
assign bitcast_ln60_18_fu_1073_p1 = grp_fu_4764_p_dout0;
assign bitcast_ln60_19_fu_1077_p1 = grp_fu_4764_p_dout0;
assign bitcast_ln60_20_fu_1081_p1 = grp_fu_4764_p_dout0;
assign bitcast_ln60_21_fu_1085_p1 = grp_fu_4764_p_dout0;
assign bitcast_ln60_fu_1018_p1 = grp_fu_4764_p_dout0;
assign grp_fu_10140_p_ce = 1'b1;
assign grp_fu_10140_p_din0 = grp_fu_498_p0;
assign grp_fu_10140_p_din1 = 32'd3345637376;
assign grp_fu_4764_p_ce = 1'b1;
assign grp_fu_4764_p_din0 = grp_fu_494_p0;
assign grp_fu_4764_p_din1 = grp_fu_494_p1;
assign grp_fu_4764_p_opcode = 2'd0;
assign lshr_ln55_s_fu_531_p4 = {{ap_sig_allocacmp_v25_3[9:2]}};
assign or_ln56_15_fu_699_p3 = {{tmp_9_fu_690_p4}, {2'd2}};
assign or_ln56_16_fu_715_p3 = {{tmp_9_fu_690_p4}, {2'd3}};
assign or_ln56_17_fu_818_p3 = {{tmp_11_fu_809_p4}, {3'd4}};
assign or_ln56_18_fu_585_p3 = {{tmp_12_fu_575_p4}, {1'd1}};
assign or_ln56_19_fu_841_p5 = {{{{tmp_11_fu_809_p4}, {1'd1}}, {tmp_13_fu_834_p3}}, {1'd1}};
assign or_ln56_20_fu_949_p3 = {{tmp_11_reg_1307}, {3'd6}};
assign or_ln56_21_fu_1003_p3 = {{tmp_11_reg_1307_pp0_iter1_reg}, {3'd7}};
assign or_ln56_s_fu_559_p3 = {{tmp_s_fu_549_p4}, {1'd1}};
assign tmp_11_fu_809_p4 = {{v25_3_reg_1096[7:3]}};
assign tmp_12_fu_575_p4 = {{ap_sig_allocacmp_v25_3[9:3]}};
assign tmp_13_fu_834_p3 = v25_3_reg_1096[32'd1];
assign tmp_9_fu_690_p4 = {{v25_3_reg_1096[7:2]}};
assign tmp_s_fu_549_p4 = {{ap_sig_allocacmp_v25_3[7:1]}};
assign trunc_ln55_fu_519_p1 = ap_sig_allocacmp_v25_3[7:0];
assign v28_15_fu_666_p10 = {{v25_3_reg_1096[9:8]}};
assign v28_15_fu_666_p2 = v2_0_q0;
assign v28_15_fu_666_p4 = v2_1_q0;
assign v28_15_fu_666_p6 = v2_2_q0;
assign v28_15_fu_666_p8 = v2_3_q0;
assign v28_15_fu_666_p9 = 'bx;
assign v28_16_fu_747_p2 = v2_0_q1;
assign v28_16_fu_747_p4 = v2_1_q1;
assign v28_16_fu_747_p6 = v2_2_q1;
assign v28_16_fu_747_p8 = v2_3_q1;
assign v28_16_fu_747_p9 = 'bx;
assign v28_17_fu_786_p2 = v2_0_q0;
assign v28_17_fu_786_p4 = v2_1_q0;
assign v28_17_fu_786_p6 = v2_2_q0;
assign v28_17_fu_786_p8 = v2_3_q0;
assign v28_17_fu_786_p9 = 'bx;
assign v28_18_fu_887_p2 = v2_0_q1;
assign v28_18_fu_887_p4 = v2_1_q1;
assign v28_18_fu_887_p6 = v2_2_q1;
assign v28_18_fu_887_p8 = v2_3_q1;
assign v28_18_fu_887_p9 = 'bx;
assign v28_19_fu_926_p2 = v2_0_q0;
assign v28_19_fu_926_p4 = v2_1_q0;
assign v28_19_fu_926_p6 = v2_2_q0;
assign v28_19_fu_926_p8 = v2_3_q0;
assign v28_19_fu_926_p9 = 'bx;
assign v28_20_fu_980_p2 = v2_0_q1;
assign v28_20_fu_980_p4 = v2_1_q1;
assign v28_20_fu_980_p6 = v2_2_q1;
assign v28_20_fu_980_p8 = v2_3_q1;
assign v28_20_fu_980_p9 = 'bx;
assign v28_21_fu_1038_p2 = v2_0_q0;
assign v28_21_fu_1038_p4 = v2_1_q0;
assign v28_21_fu_1038_p6 = v2_2_q0;
assign v28_21_fu_1038_p8 = v2_3_q0;
assign v28_21_fu_1038_p9 = 'bx;
assign v28_fu_626_p10 = {{v25_3_reg_1096[9:8]}};
assign v28_fu_626_p2 = v2_0_q1;
assign v28_fu_626_p4 = v2_1_q1;
assign v28_fu_626_p6 = v2_2_q1;
assign v28_fu_626_p8 = v2_3_q1;
assign v28_fu_626_p9 = 'bx;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = v2_0_d0_local;
assign v2_0_d1 = v2_0_d1_local;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = v2_1_d0_local;
assign v2_1_d1 = v2_1_d1_local;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v2_2_address0 = v2_2_address0_local;
assign v2_2_address1 = v2_2_address1_local;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = v2_2_d0_local;
assign v2_2_d1 = v2_2_d1_local;
assign v2_2_we0 = v2_2_we0_local;
assign v2_2_we1 = v2_2_we1_local;
assign v2_3_address0 = v2_3_address0_local;
assign v2_3_address1 = v2_3_address1_local;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = v2_3_d0_local;
assign v2_3_d1 = v2_3_d1_local;
assign v2_3_we0 = v2_3_we0_local;
assign v2_3_we1 = v2_3_we1_local;
assign v3_1_address0 = zext_ln56_18_fu_593_p1;
assign v3_1_address1 = zext_ln55_3_fu_541_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_2_address0 = zext_ln56_18_fu_593_p1;
assign v3_2_address1 = zext_ln55_3_fu_541_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_3_address0 = zext_ln56_18_fu_593_p1;
assign v3_3_address1 = zext_ln55_3_fu_541_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_address0 = zext_ln56_18_fu_593_p1;
assign v3_address1 = zext_ln55_3_fu_541_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_3_fu_541_p1 = lshr_ln55_s_fu_531_p4;
assign zext_ln55_fu_523_p1 = trunc_ln55_fu_519_p1;
assign zext_ln56_15_fu_707_p1 = or_ln56_15_fu_699_p3;
assign zext_ln56_16_fu_723_p1 = or_ln56_16_fu_715_p3;
assign zext_ln56_17_fu_826_p1 = or_ln56_17_fu_818_p3;
assign zext_ln56_18_fu_593_p1 = or_ln56_18_fu_585_p3;
assign zext_ln56_19_fu_853_p1 = or_ln56_19_fu_841_p5;
assign zext_ln56_20_fu_956_p1 = or_ln56_20_fu_949_p3;
assign zext_ln56_21_fu_1010_p1 = or_ln56_21_fu_1003_p3;
assign zext_ln56_fu_567_p1 = or_ln56_s_fu_559_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_15_reg_1139[0] <= 1'b1;
    v2_0_addr_15_reg_1139_pp0_iter1_reg[0] <= 1'b1;
    v2_1_addr_15_reg_1145[0] <= 1'b1;
    v2_1_addr_15_reg_1145_pp0_iter1_reg[0] <= 1'b1;
    v2_2_addr_15_reg_1151[0] <= 1'b1;
    v2_2_addr_15_reg_1151_pp0_iter1_reg[0] <= 1'b1;
    v2_3_addr_15_reg_1157[0] <= 1'b1;
    v2_3_addr_15_reg_1157_pp0_iter1_reg[0] <= 1'b1;
    v2_0_addr_16_reg_1228[1:0] <= 2'b10;
    v2_0_addr_16_reg_1228_pp0_iter1_reg[1:0] <= 2'b10;
    v2_1_addr_16_reg_1233[1:0] <= 2'b10;
    v2_1_addr_16_reg_1233_pp0_iter1_reg[1:0] <= 2'b10;
    v2_2_addr_16_reg_1238[1:0] <= 2'b10;
    v2_2_addr_16_reg_1238_pp0_iter1_reg[1:0] <= 2'b10;
    v2_3_addr_16_reg_1243[1:0] <= 2'b10;
    v2_3_addr_16_reg_1243_pp0_iter1_reg[1:0] <= 2'b10;
    v2_0_addr_17_reg_1253[1:0] <= 2'b11;
    v2_0_addr_17_reg_1253_pp0_iter1_reg[1:0] <= 2'b11;
    v2_0_addr_17_reg_1253_pp0_iter2_reg[1:0] <= 2'b11;
    v2_1_addr_17_reg_1259[1:0] <= 2'b11;
    v2_1_addr_17_reg_1259_pp0_iter1_reg[1:0] <= 2'b11;
    v2_1_addr_17_reg_1259_pp0_iter2_reg[1:0] <= 2'b11;
    v2_2_addr_17_reg_1265[1:0] <= 2'b11;
    v2_2_addr_17_reg_1265_pp0_iter1_reg[1:0] <= 2'b11;
    v2_2_addr_17_reg_1265_pp0_iter2_reg[1:0] <= 2'b11;
    v2_3_addr_17_reg_1271[1:0] <= 2'b11;
    v2_3_addr_17_reg_1271_pp0_iter1_reg[1:0] <= 2'b11;
    v2_3_addr_17_reg_1271_pp0_iter2_reg[1:0] <= 2'b11;
    v2_0_addr_18_reg_1313[2:0] <= 3'b100;
    v2_0_addr_18_reg_1313_pp0_iter1_reg[2:0] <= 3'b100;
    v2_0_addr_18_reg_1313_pp0_iter2_reg[2:0] <= 3'b100;
    v2_1_addr_18_reg_1319[2:0] <= 3'b100;
    v2_1_addr_18_reg_1319_pp0_iter1_reg[2:0] <= 3'b100;
    v2_1_addr_18_reg_1319_pp0_iter2_reg[2:0] <= 3'b100;
    v2_2_addr_18_reg_1325[2:0] <= 3'b100;
    v2_2_addr_18_reg_1325_pp0_iter1_reg[2:0] <= 3'b100;
    v2_2_addr_18_reg_1325_pp0_iter2_reg[2:0] <= 3'b100;
    v2_3_addr_18_reg_1331[2:0] <= 3'b100;
    v2_3_addr_18_reg_1331_pp0_iter1_reg[2:0] <= 3'b100;
    v2_3_addr_18_reg_1331_pp0_iter2_reg[2:0] <= 3'b100;
    v2_0_addr_19_reg_1337[0] <= 1'b1;
    v2_0_addr_19_reg_1337[2] <= 1'b1;
    v2_0_addr_19_reg_1337_pp0_iter1_reg[0] <= 1'b1;
    v2_0_addr_19_reg_1337_pp0_iter1_reg[2] <= 1'b1;
    v2_0_addr_19_reg_1337_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_19_reg_1337_pp0_iter2_reg[2] <= 1'b1;
    v2_1_addr_19_reg_1342[0] <= 1'b1;
    v2_1_addr_19_reg_1342[2] <= 1'b1;
    v2_1_addr_19_reg_1342_pp0_iter1_reg[0] <= 1'b1;
    v2_1_addr_19_reg_1342_pp0_iter1_reg[2] <= 1'b1;
    v2_1_addr_19_reg_1342_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_19_reg_1342_pp0_iter2_reg[2] <= 1'b1;
    v2_2_addr_19_reg_1347[0] <= 1'b1;
    v2_2_addr_19_reg_1347[2] <= 1'b1;
    v2_2_addr_19_reg_1347_pp0_iter1_reg[0] <= 1'b1;
    v2_2_addr_19_reg_1347_pp0_iter1_reg[2] <= 1'b1;
    v2_2_addr_19_reg_1347_pp0_iter2_reg[0] <= 1'b1;
    v2_2_addr_19_reg_1347_pp0_iter2_reg[2] <= 1'b1;
    v2_3_addr_19_reg_1352[0] <= 1'b1;
    v2_3_addr_19_reg_1352[2] <= 1'b1;
    v2_3_addr_19_reg_1352_pp0_iter1_reg[0] <= 1'b1;
    v2_3_addr_19_reg_1352_pp0_iter1_reg[2] <= 1'b1;
    v2_3_addr_19_reg_1352_pp0_iter2_reg[0] <= 1'b1;
    v2_3_addr_19_reg_1352_pp0_iter2_reg[2] <= 1'b1;
    v2_0_addr_20_reg_1367[2:0] <= 3'b110;
    v2_0_addr_20_reg_1367_pp0_iter1_reg[2:0] <= 3'b110;
    v2_0_addr_20_reg_1367_pp0_iter2_reg[2:0] <= 3'b110;
    v2_1_addr_20_reg_1373[2:0] <= 3'b110;
    v2_1_addr_20_reg_1373_pp0_iter1_reg[2:0] <= 3'b110;
    v2_1_addr_20_reg_1373_pp0_iter2_reg[2:0] <= 3'b110;
    v2_2_addr_20_reg_1379[2:0] <= 3'b110;
    v2_2_addr_20_reg_1379_pp0_iter1_reg[2:0] <= 3'b110;
    v2_2_addr_20_reg_1379_pp0_iter2_reg[2:0] <= 3'b110;
    v2_3_addr_20_reg_1385[2:0] <= 3'b110;
    v2_3_addr_20_reg_1385_pp0_iter1_reg[2:0] <= 3'b110;
    v2_3_addr_20_reg_1385_pp0_iter2_reg[2:0] <= 3'b110;
    v2_0_addr_21_reg_1431[2:0] <= 3'b111;
    v2_0_addr_21_reg_1431_pp0_iter2_reg[2:0] <= 3'b111;
    v2_1_addr_21_reg_1436[2:0] <= 3'b111;
    v2_1_addr_21_reg_1436_pp0_iter2_reg[2:0] <= 3'b111;
    v2_2_addr_21_reg_1441[2:0] <= 3'b111;
    v2_2_addr_21_reg_1441_pp0_iter2_reg[2:0] <= 3'b111;
    v2_3_addr_21_reg_1446[2:0] <= 3'b111;
    v2_3_addr_21_reg_1446_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 