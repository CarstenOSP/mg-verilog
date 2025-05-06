
module kernel_2mm_kernel_2mm_node0_Pipeline_label_212 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,mul_ln49,mul_ln101,mul_ln114,v4,cmp11,v11_3,v24_3,v35_3,v46_3,v57_3,v68_3,v79_3,v90_3,v101_3,grp_fu_23405_p_din0,grp_fu_23405_p_din1,grp_fu_23405_p_opcode,grp_fu_23405_p_dout0,grp_fu_23405_p_ce,grp_fu_23409_p_din0,grp_fu_23409_p_din1,grp_fu_23409_p_opcode,grp_fu_23409_p_dout0,grp_fu_23409_p_ce,grp_fu_23413_p_din0,grp_fu_23413_p_din1,grp_fu_23413_p_opcode,grp_fu_23413_p_dout0,grp_fu_23413_p_ce,grp_fu_23417_p_din0,grp_fu_23417_p_din1,grp_fu_23417_p_dout0,grp_fu_23417_p_ce,grp_fu_23421_p_din0,grp_fu_23421_p_din1,grp_fu_23421_p_dout0,grp_fu_23421_p_ce,grp_fu_23425_p_din0,grp_fu_23425_p_din1,grp_fu_23425_p_dout0,grp_fu_23425_p_ce,grp_fu_23429_p_din0,grp_fu_23429_p_din1,grp_fu_23429_p_dout0,grp_fu_23429_p_ce,grp_fu_23433_p_din0,grp_fu_23433_p_din1,grp_fu_23433_p_dout0,grp_fu_23433_p_ce,grp_fu_23437_p_din0,grp_fu_23437_p_din1,grp_fu_23437_p_dout0,grp_fu_23437_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [13:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [13:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [13:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [13:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [13:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [13:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [13:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
input  [14:0] mul_ln38;
output  [14:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [14:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
input  [13:0] mul_ln49;
input  [13:0] mul_ln101;
input  [13:0] mul_ln114;
input  [31:0] v4;
input  [0:0] cmp11;
input  [31:0] v11_3;
input  [31:0] v24_3;
input  [31:0] v35_3;
input  [31:0] v46_3;
input  [31:0] v57_3;
input  [31:0] v68_3;
input  [31:0] v79_3;
input  [31:0] v90_3;
input  [31:0] v101_3;
output  [31:0] grp_fu_23405_p_din0;
output  [31:0] grp_fu_23405_p_din1;
output  [1:0] grp_fu_23405_p_opcode;
input  [31:0] grp_fu_23405_p_dout0;
output   grp_fu_23405_p_ce;
output  [31:0] grp_fu_23409_p_din0;
output  [31:0] grp_fu_23409_p_din1;
output  [1:0] grp_fu_23409_p_opcode;
input  [31:0] grp_fu_23409_p_dout0;
output   grp_fu_23409_p_ce;
output  [31:0] grp_fu_23413_p_din0;
output  [31:0] grp_fu_23413_p_din1;
output  [1:0] grp_fu_23413_p_opcode;
input  [31:0] grp_fu_23413_p_dout0;
output   grp_fu_23413_p_ce;
output  [31:0] grp_fu_23417_p_din0;
output  [31:0] grp_fu_23417_p_din1;
input  [31:0] grp_fu_23417_p_dout0;
output   grp_fu_23417_p_ce;
output  [31:0] grp_fu_23421_p_din0;
output  [31:0] grp_fu_23421_p_din1;
input  [31:0] grp_fu_23421_p_dout0;
output   grp_fu_23421_p_ce;
output  [31:0] grp_fu_23425_p_din0;
output  [31:0] grp_fu_23425_p_din1;
input  [31:0] grp_fu_23425_p_dout0;
output   grp_fu_23425_p_ce;
output  [31:0] grp_fu_23429_p_din0;
output  [31:0] grp_fu_23429_p_din1;
input  [31:0] grp_fu_23429_p_dout0;
output   grp_fu_23429_p_ce;
output  [31:0] grp_fu_23433_p_din0;
output  [31:0] grp_fu_23433_p_din1;
input  [31:0] grp_fu_23433_p_dout0;
output   grp_fu_23433_p_ce;
output  [31:0] grp_fu_23437_p_din0;
output  [31:0] grp_fu_23437_p_din1;
input  [31:0] grp_fu_23437_p_dout0;
output   grp_fu_23437_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln33_reg_986;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_417;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_421;
reg   [31:0] reg_425;
reg   [31:0] reg_429;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_433;
reg   [31:0] reg_437;
reg   [31:0] reg_441;
reg   [31:0] reg_445;
reg   [31:0] reg_449;
reg   [7:0] v7_reg_981;
wire   [0:0] icmp_ln33_fu_461_p2;
reg   [13:0] v229_0_addr_15_reg_995;
reg   [13:0] v229_0_addr_15_reg_995_pp0_iter1_reg;
reg   [13:0] v229_0_addr_15_reg_995_pp0_iter2_reg;
wire   [13:0] add_ln101_fu_500_p2;
reg   [13:0] add_ln101_reg_1000;
reg   [13:0] v229_1_addr_15_reg_1005;
reg   [13:0] v229_1_addr_15_reg_1005_pp0_iter1_reg;
reg   [13:0] v229_1_addr_15_reg_1005_pp0_iter2_reg;
reg   [13:0] v229_2_addr_15_reg_1010;
reg   [13:0] v229_2_addr_15_reg_1010_pp0_iter1_reg;
reg   [13:0] v229_2_addr_15_reg_1010_pp0_iter2_reg;
reg   [13:0] v229_3_addr_13_reg_1016;
reg   [13:0] v229_3_addr_13_reg_1016_pp0_iter1_reg;
reg   [13:0] v229_3_addr_13_reg_1016_pp0_iter2_reg;
reg   [13:0] v229_3_addr_15_reg_1021;
reg   [13:0] v229_3_addr_15_reg_1021_pp0_iter1_reg;
reg   [13:0] v229_3_addr_15_reg_1021_pp0_iter2_reg;
reg   [13:0] v229_0_addr_16_reg_1031;
reg   [13:0] v229_0_addr_16_reg_1031_pp0_iter1_reg;
reg   [13:0] v229_0_addr_16_reg_1031_pp0_iter2_reg;
wire   [13:0] add_ln108_fu_568_p2;
reg   [13:0] add_ln108_reg_1036;
reg   [13:0] v229_1_addr_16_reg_1041;
reg   [13:0] v229_1_addr_16_reg_1041_pp0_iter1_reg;
reg   [13:0] v229_1_addr_16_reg_1041_pp0_iter2_reg;
reg   [13:0] v229_2_addr_16_reg_1046;
reg   [13:0] v229_2_addr_16_reg_1046_pp0_iter1_reg;
reg   [13:0] v229_2_addr_16_reg_1046_pp0_iter2_reg;
reg   [13:0] v229_3_addr_14_reg_1052;
reg   [13:0] v229_3_addr_14_reg_1052_pp0_iter1_reg;
reg   [13:0] v229_3_addr_14_reg_1052_pp0_iter2_reg;
reg   [13:0] v229_3_addr_16_reg_1057;
reg   [13:0] v229_3_addr_16_reg_1057_pp0_iter1_reg;
reg   [13:0] v229_3_addr_16_reg_1057_pp0_iter2_reg;
reg   [13:0] v229_0_addr_17_reg_1062;
reg   [13:0] v229_0_addr_17_reg_1062_pp0_iter1_reg;
reg   [13:0] v229_0_addr_17_reg_1062_pp0_iter2_reg;
reg   [13:0] v229_1_addr_17_reg_1067;
reg   [13:0] v229_1_addr_17_reg_1067_pp0_iter1_reg;
reg   [13:0] v229_1_addr_17_reg_1067_pp0_iter2_reg;
reg   [13:0] v229_2_addr_17_reg_1072;
reg   [13:0] v229_2_addr_17_reg_1072_pp0_iter1_reg;
reg   [13:0] v229_2_addr_17_reg_1072_pp0_iter2_reg;
reg   [13:0] v229_3_addr_17_reg_1077;
reg   [13:0] v229_3_addr_17_reg_1077_pp0_iter1_reg;
reg   [13:0] v229_3_addr_17_reg_1077_pp0_iter2_reg;
reg   [13:0] v229_3_addr_17_reg_1077_pp0_iter3_reg;
reg   [31:0] v228_0_load_reg_1082;
reg   [13:0] v229_0_addr_18_reg_1087;
reg   [13:0] v229_0_addr_18_reg_1087_pp0_iter1_reg;
reg   [13:0] v229_0_addr_18_reg_1087_pp0_iter2_reg;
reg   [13:0] v229_1_addr_18_reg_1092;
reg   [13:0] v229_1_addr_18_reg_1092_pp0_iter1_reg;
reg   [13:0] v229_1_addr_18_reg_1092_pp0_iter2_reg;
reg   [13:0] v229_2_addr_18_reg_1097;
reg   [13:0] v229_2_addr_18_reg_1097_pp0_iter1_reg;
reg   [13:0] v229_2_addr_18_reg_1097_pp0_iter2_reg;
reg   [13:0] v229_2_addr_18_reg_1097_pp0_iter3_reg;
reg   [13:0] v229_3_addr_18_reg_1102;
reg   [13:0] v229_3_addr_18_reg_1102_pp0_iter1_reg;
reg   [13:0] v229_3_addr_18_reg_1102_pp0_iter2_reg;
reg   [13:0] v229_3_addr_18_reg_1102_pp0_iter3_reg;
reg   [31:0] v228_0_load_5_reg_1107;
reg   [31:0] v229_0_load_15_reg_1112;
reg   [31:0] v229_1_load_14_reg_1117;
reg   [31:0] v229_1_load_15_reg_1122;
reg   [31:0] v229_2_load_14_reg_1127;
reg   [31:0] v229_2_load_15_reg_1132;
wire   [31:0] v8_fu_599_p1;
reg   [31:0] v8_reg_1137;
wire   [31:0] v12_fu_604_p1;
reg   [31:0] v12_reg_1143;
wire   [31:0] v15_fu_609_p1;
reg   [31:0] v15_reg_1150;
wire   [31:0] v18_fu_614_p1;
reg   [31:0] v18_reg_1156;
wire   [31:0] v21_fu_618_p1;
reg   [31:0] v21_reg_1163;
reg   [31:0] v229_0_load_17_reg_1169;
reg   [31:0] v229_1_load_16_reg_1174;
reg   [31:0] v229_1_load_17_reg_1179;
reg   [31:0] v229_2_load_16_reg_1184;
reg   [31:0] v229_2_load_17_reg_1189;
wire   [31:0] v27_fu_623_p1;
reg   [31:0] v27_reg_1194;
wire   [31:0] v32_fu_627_p1;
reg   [31:0] v32_reg_1200;
wire   [31:0] v38_fu_631_p1;
reg   [31:0] v38_reg_1206;
reg   [31:0] v229_3_load_16_reg_1212;
reg   [31:0] v229_3_load_17_reg_1217;
wire   [31:0] v43_fu_635_p1;
reg   [31:0] v43_reg_1222;
wire   [31:0] v49_fu_639_p1;
reg   [31:0] v49_reg_1228;
wire   [31:0] v54_fu_643_p1;
reg   [31:0] v54_reg_1234;
wire   [31:0] v10_fu_648_p3;
reg   [31:0] v10_reg_1240;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v13_reg_1245;
wire   [31:0] v17_fu_654_p3;
reg   [31:0] v17_reg_1250;
reg   [31:0] v19_reg_1255;
wire   [31:0] v23_fu_660_p3;
reg   [31:0] v23_reg_1260;
reg   [31:0] v25_reg_1265;
wire   [31:0] v60_fu_666_p1;
reg   [31:0] v60_reg_1270;
wire   [31:0] v65_fu_671_p1;
reg   [31:0] v65_reg_1276;
wire   [31:0] v71_fu_676_p1;
reg   [31:0] v71_reg_1282;
wire   [31:0] v29_fu_690_p3;
reg   [31:0] v29_reg_1288;
reg   [31:0] v30_reg_1293;
wire   [31:0] v34_fu_696_p3;
reg   [31:0] v34_reg_1298;
reg   [31:0] v36_reg_1303;
wire   [31:0] v40_fu_702_p3;
reg   [31:0] v40_reg_1308;
reg   [31:0] v41_reg_1313;
wire   [31:0] v76_fu_708_p1;
reg   [31:0] v76_reg_1318;
wire   [31:0] v82_fu_712_p1;
reg   [31:0] v82_reg_1324;
wire   [31:0] v87_fu_716_p1;
reg   [31:0] v87_reg_1330;
wire   [31:0] v45_fu_720_p3;
reg   [31:0] v45_reg_1336;
reg   [31:0] v47_reg_1341;
wire   [31:0] v51_fu_726_p3;
reg   [31:0] v51_reg_1346;
reg   [31:0] v52_reg_1351;
wire   [31:0] v56_fu_732_p3;
reg   [31:0] v56_reg_1356;
reg   [31:0] v58_reg_1361;
wire   [31:0] v93_fu_738_p1;
reg   [31:0] v93_reg_1366;
wire   [31:0] v98_fu_742_p1;
reg   [31:0] v98_reg_1372;
wire   [31:0] v104_fu_746_p1;
reg   [31:0] v104_reg_1378;
wire   [31:0] v62_fu_750_p3;
reg   [31:0] v62_reg_1384;
reg   [31:0] v63_reg_1389;
wire   [31:0] v67_fu_756_p3;
reg   [31:0] v67_reg_1394;
reg   [31:0] v69_reg_1399;
wire   [31:0] v73_fu_762_p3;
reg   [31:0] v73_reg_1404;
reg   [31:0] v74_reg_1409;
wire   [31:0] v78_fu_768_p3;
reg   [31:0] v78_reg_1414;
reg   [31:0] v80_reg_1419;
wire   [31:0] v84_fu_774_p3;
reg   [31:0] v84_reg_1424;
reg   [31:0] v85_reg_1429;
wire   [31:0] v89_fu_780_p3;
reg   [31:0] v89_reg_1434;
reg   [31:0] v91_reg_1439;
wire   [31:0] v95_fu_786_p3;
reg   [31:0] v95_reg_1444;
reg   [31:0] v96_reg_1449;
wire   [31:0] v100_fu_792_p3;
reg   [31:0] v100_reg_1454;
reg   [31:0] v102_reg_1459;
wire   [31:0] v106_fu_798_p3;
reg   [31:0] v106_reg_1464;
reg   [31:0] v107_reg_1469;
reg   [31:0] v97_reg_1474;
reg   [31:0] v103_reg_1479;
reg   [31:0] v108_reg_1484;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_27_fu_481_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln49_fu_492_p1;
wire   [63:0] zext_ln34_fu_512_p1;
wire   [63:0] zext_ln45_27_fu_549_p1;
wire   [63:0] zext_ln56_fu_560_p1;
wire   [63:0] zext_ln42_fu_580_p1;
wire   [63:0] zext_ln101_fu_585_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln108_fu_592_p1;
reg   [7:0] v7_3_fu_86;
wire   [7:0] add_ln33_fu_680_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
wire    ap_block_pp0_stage2;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln41_fu_824_p1;
wire    ap_block_pp0_stage3;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln48_fu_829_p1;
wire   [31:0] bitcast_ln94_fu_844_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln100_fu_849_p1;
wire   [31:0] bitcast_ln146_fu_883_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln152_fu_887_p1;
reg    v228_0_ce1_local;
reg    v228_0_ce0_local;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln55_fu_804_p1;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln61_fu_809_p1;
wire   [31:0] bitcast_ln107_fu_854_p1;
wire   [31:0] bitcast_ln113_fu_859_p1;
reg    v229_1_ce1_local;
reg   [13:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [13:0] v229_1_address0_local;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln68_fu_814_p1;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln74_fu_819_p1;
wire   [31:0] bitcast_ln120_fu_864_p1;
wire   [31:0] bitcast_ln126_fu_869_p1;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln81_fu_834_p1;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln87_fu_839_p1;
wire   [31:0] bitcast_ln133_fu_874_p1;
wire   [31:0] bitcast_ln139_fu_879_p1;
reg   [31:0] grp_fu_381_p0;
reg   [31:0] grp_fu_381_p1;
reg   [31:0] grp_fu_385_p0;
reg   [31:0] grp_fu_385_p1;
reg   [31:0] grp_fu_389_p0;
reg   [31:0] grp_fu_389_p1;
reg   [31:0] grp_fu_393_p0;
reg   [31:0] grp_fu_397_p0;
reg   [31:0] grp_fu_397_p1;
reg   [31:0] grp_fu_401_p0;
reg   [31:0] grp_fu_405_p0;
reg   [31:0] grp_fu_405_p1;
reg   [31:0] grp_fu_409_p0;
reg   [31:0] grp_fu_413_p0;
reg   [31:0] grp_fu_413_p1;
wire   [14:0] zext_ln38_26_fu_471_p1;
wire   [14:0] add_ln38_fu_475_p2;
wire   [13:0] zext_ln38_fu_467_p1;
wire   [13:0] add_ln49_fu_486_p2;
wire   [13:0] add_ln34_fu_506_p2;
wire   [6:0] tmp_s_fu_517_p4;
wire   [7:0] or_ln42_3_fu_527_p3;
wire   [14:0] zext_ln45_26_fu_539_p1;
wire   [14:0] add_ln45_fu_543_p2;
wire   [13:0] zext_ln45_fu_535_p1;
wire   [13:0] add_ln56_fu_554_p2;
wire   [13:0] add_ln42_fu_574_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_3_fu_86 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_3_fu_86 <= 8'd0;
    end else if (((icmp_ln33_reg_986 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_3_fu_86 <= add_ln33_fu_680_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln101_reg_1000 <= add_ln101_fu_500_p2;
        add_ln108_reg_1036 <= add_ln108_fu_568_p2;
        icmp_ln33_reg_986 <= icmp_ln33_fu_461_p2;
        v229_0_addr_15_reg_995 <= zext_ln49_fu_492_p1;
        v229_0_addr_15_reg_995_pp0_iter1_reg <= v229_0_addr_15_reg_995;
        v229_0_addr_15_reg_995_pp0_iter2_reg <= v229_0_addr_15_reg_995_pp0_iter1_reg;
        v229_0_addr_16_reg_1031 <= zext_ln56_fu_560_p1;
        v229_0_addr_16_reg_1031_pp0_iter1_reg <= v229_0_addr_16_reg_1031;
        v229_0_addr_16_reg_1031_pp0_iter2_reg <= v229_0_addr_16_reg_1031_pp0_iter1_reg;
        v229_1_addr_15_reg_1005 <= zext_ln49_fu_492_p1;
        v229_1_addr_15_reg_1005_pp0_iter1_reg <= v229_1_addr_15_reg_1005;
        v229_1_addr_15_reg_1005_pp0_iter2_reg <= v229_1_addr_15_reg_1005_pp0_iter1_reg;
        v229_1_addr_16_reg_1041 <= zext_ln56_fu_560_p1;
        v229_1_addr_16_reg_1041_pp0_iter1_reg <= v229_1_addr_16_reg_1041;
        v229_1_addr_16_reg_1041_pp0_iter2_reg <= v229_1_addr_16_reg_1041_pp0_iter1_reg;
        v229_2_addr_15_reg_1010 <= zext_ln49_fu_492_p1;
        v229_2_addr_15_reg_1010_pp0_iter1_reg <= v229_2_addr_15_reg_1010;
        v229_2_addr_15_reg_1010_pp0_iter2_reg <= v229_2_addr_15_reg_1010_pp0_iter1_reg;
        v229_2_addr_16_reg_1046 <= zext_ln56_fu_560_p1;
        v229_2_addr_16_reg_1046_pp0_iter1_reg <= v229_2_addr_16_reg_1046;
        v229_2_addr_16_reg_1046_pp0_iter2_reg <= v229_2_addr_16_reg_1046_pp0_iter1_reg;
        v229_3_addr_13_reg_1016 <= zext_ln34_fu_512_p1;
        v229_3_addr_13_reg_1016_pp0_iter1_reg <= v229_3_addr_13_reg_1016;
        v229_3_addr_13_reg_1016_pp0_iter2_reg <= v229_3_addr_13_reg_1016_pp0_iter1_reg;
        v229_3_addr_14_reg_1052 <= zext_ln42_fu_580_p1;
        v229_3_addr_14_reg_1052_pp0_iter1_reg <= v229_3_addr_14_reg_1052;
        v229_3_addr_14_reg_1052_pp0_iter2_reg <= v229_3_addr_14_reg_1052_pp0_iter1_reg;
        v229_3_addr_15_reg_1021 <= zext_ln49_fu_492_p1;
        v229_3_addr_15_reg_1021_pp0_iter1_reg <= v229_3_addr_15_reg_1021;
        v229_3_addr_15_reg_1021_pp0_iter2_reg <= v229_3_addr_15_reg_1021_pp0_iter1_reg;
        v229_3_addr_16_reg_1057 <= zext_ln56_fu_560_p1;
        v229_3_addr_16_reg_1057_pp0_iter1_reg <= v229_3_addr_16_reg_1057;
        v229_3_addr_16_reg_1057_pp0_iter2_reg <= v229_3_addr_16_reg_1057_pp0_iter1_reg;
        v29_reg_1288 <= v29_fu_690_p3;
        v34_reg_1298 <= v34_fu_696_p3;
        v40_reg_1308 <= v40_fu_702_p3;
        v76_reg_1318 <= v76_fu_708_p1;
        v7_reg_981 <= ap_sig_allocacmp_v7;
        v82_reg_1324 <= v82_fu_712_p1;
        v87_reg_1330 <= v87_fu_716_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v10_reg_1240 <= v10_fu_648_p3;
        v17_reg_1250 <= v17_fu_654_p3;
        v23_reg_1260 <= v23_fu_660_p3;
        v60_reg_1270 <= v60_fu_666_p1;
        v65_reg_1276 <= v65_fu_671_p1;
        v71_reg_1282 <= v71_fu_676_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_417 <= v229_3_q1;
        reg_421 <= v229_3_q0;
        reg_425 <= v229_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_429 <= grp_fu_23405_p_dout0;
        reg_433 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_437 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_441 <= grp_fu_23405_p_dout0;
        reg_445 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_449 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v100_reg_1454 <= v100_fu_792_p3;
        v106_reg_1464 <= v106_fu_798_p3;
        v43_reg_1222 <= v43_fu_635_p1;
        v49_reg_1228 <= v49_fu_639_p1;
        v54_reg_1234 <= v54_fu_643_p1;
        v95_reg_1444 <= v95_fu_786_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1459 <= grp_fu_23429_p_dout0;
        v107_reg_1469 <= grp_fu_23437_p_dout0;
        v96_reg_1449 <= grp_fu_23421_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1479 <= grp_fu_23409_p_dout0;
        v108_reg_1484 <= grp_fu_23413_p_dout0;
        v97_reg_1474 <= grp_fu_23405_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v104_reg_1378 <= v104_fu_746_p1;
        v229_0_addr_17_reg_1062 <= zext_ln101_fu_585_p1;
        v229_0_addr_17_reg_1062_pp0_iter1_reg <= v229_0_addr_17_reg_1062;
        v229_0_addr_17_reg_1062_pp0_iter2_reg <= v229_0_addr_17_reg_1062_pp0_iter1_reg;
        v229_0_addr_18_reg_1087 <= zext_ln108_fu_592_p1;
        v229_0_addr_18_reg_1087_pp0_iter1_reg <= v229_0_addr_18_reg_1087;
        v229_0_addr_18_reg_1087_pp0_iter2_reg <= v229_0_addr_18_reg_1087_pp0_iter1_reg;
        v229_1_addr_17_reg_1067 <= zext_ln101_fu_585_p1;
        v229_1_addr_17_reg_1067_pp0_iter1_reg <= v229_1_addr_17_reg_1067;
        v229_1_addr_17_reg_1067_pp0_iter2_reg <= v229_1_addr_17_reg_1067_pp0_iter1_reg;
        v229_1_addr_18_reg_1092 <= zext_ln108_fu_592_p1;
        v229_1_addr_18_reg_1092_pp0_iter1_reg <= v229_1_addr_18_reg_1092;
        v229_1_addr_18_reg_1092_pp0_iter2_reg <= v229_1_addr_18_reg_1092_pp0_iter1_reg;
        v229_2_addr_17_reg_1072 <= zext_ln101_fu_585_p1;
        v229_2_addr_17_reg_1072_pp0_iter1_reg <= v229_2_addr_17_reg_1072;
        v229_2_addr_17_reg_1072_pp0_iter2_reg <= v229_2_addr_17_reg_1072_pp0_iter1_reg;
        v229_2_addr_18_reg_1097 <= zext_ln108_fu_592_p1;
        v229_2_addr_18_reg_1097_pp0_iter1_reg <= v229_2_addr_18_reg_1097;
        v229_2_addr_18_reg_1097_pp0_iter2_reg <= v229_2_addr_18_reg_1097_pp0_iter1_reg;
        v229_2_addr_18_reg_1097_pp0_iter3_reg <= v229_2_addr_18_reg_1097_pp0_iter2_reg;
        v229_3_addr_17_reg_1077 <= zext_ln101_fu_585_p1;
        v229_3_addr_17_reg_1077_pp0_iter1_reg <= v229_3_addr_17_reg_1077;
        v229_3_addr_17_reg_1077_pp0_iter2_reg <= v229_3_addr_17_reg_1077_pp0_iter1_reg;
        v229_3_addr_17_reg_1077_pp0_iter3_reg <= v229_3_addr_17_reg_1077_pp0_iter2_reg;
        v229_3_addr_18_reg_1102 <= zext_ln108_fu_592_p1;
        v229_3_addr_18_reg_1102_pp0_iter1_reg <= v229_3_addr_18_reg_1102;
        v229_3_addr_18_reg_1102_pp0_iter2_reg <= v229_3_addr_18_reg_1102_pp0_iter1_reg;
        v229_3_addr_18_reg_1102_pp0_iter3_reg <= v229_3_addr_18_reg_1102_pp0_iter2_reg;
        v45_reg_1336 <= v45_fu_720_p3;
        v51_reg_1346 <= v51_fu_726_p3;
        v56_reg_1356 <= v56_fu_732_p3;
        v93_reg_1366 <= v93_fu_738_p1;
        v98_reg_1372 <= v98_fu_742_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v12_reg_1143 <= v12_fu_604_p1;
        v15_reg_1150 <= v15_fu_609_p1;
        v18_reg_1156 <= v18_fu_614_p1;
        v21_reg_1163 <= v21_fu_618_p1;
        v62_reg_1384 <= v62_fu_750_p3;
        v67_reg_1394 <= v67_fu_756_p3;
        v73_reg_1404 <= v73_fu_762_p3;
        v8_reg_1137 <= v8_fu_599_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_1245 <= grp_fu_23421_p_dout0;
        v19_reg_1255 <= grp_fu_23429_p_dout0;
        v25_reg_1265 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_0_load_5_reg_1107 <= v228_0_q0;
        v228_0_load_reg_1082 <= v228_0_q1;
        v229_0_load_15_reg_1112 <= v229_0_q0;
        v229_1_load_14_reg_1117 <= v229_1_q1;
        v229_1_load_15_reg_1122 <= v229_1_q0;
        v229_2_load_14_reg_1127 <= v229_2_q1;
        v229_2_load_15_reg_1132 <= v229_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_load_17_reg_1169 <= v229_0_q0;
        v229_1_load_16_reg_1174 <= v229_1_q1;
        v229_1_load_17_reg_1179 <= v229_1_q0;
        v229_2_load_16_reg_1184 <= v229_2_q1;
        v229_2_load_17_reg_1189 <= v229_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_load_16_reg_1212 <= v229_3_q1;
        v229_3_load_17_reg_1217 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_reg_1194 <= v27_fu_623_p1;
        v32_reg_1200 <= v32_fu_627_p1;
        v38_reg_1206 <= v38_fu_631_p1;
        v78_reg_1414 <= v78_fu_768_p3;
        v84_reg_1424 <= v84_fu_774_p3;
        v89_reg_1434 <= v89_fu_780_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1293 <= grp_fu_23421_p_dout0;
        v36_reg_1303 <= grp_fu_23429_p_dout0;
        v41_reg_1313 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1341 <= grp_fu_23421_p_dout0;
        v52_reg_1351 <= grp_fu_23429_p_dout0;
        v58_reg_1361 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v63_reg_1389 <= grp_fu_23421_p_dout0;
        v69_reg_1399 <= grp_fu_23429_p_dout0;
        v74_reg_1409 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v80_reg_1419 <= grp_fu_23421_p_dout0;
        v85_reg_1429 <= grp_fu_23429_p_dout0;
        v91_reg_1439 <= grp_fu_23437_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_986 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7 = v7_3_fu_86;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_381_p0 = v95_reg_1444;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_381_p0 = v78_reg_1414;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_381_p0 = v62_reg_1384;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_381_p0 = v45_reg_1336;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_381_p0 = v29_reg_1288;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_381_p0 = v10_reg_1240;
        end else begin
            grp_fu_381_p0 = 'bx;
        end
    end else begin
        grp_fu_381_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_381_p1 = v96_reg_1449;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_381_p1 = v80_reg_1419;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_381_p1 = v63_reg_1389;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_381_p1 = v47_reg_1341;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_381_p1 = v30_reg_1293;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_381_p1 = v13_reg_1245;
        end else begin
            grp_fu_381_p1 = 'bx;
        end
    end else begin
        grp_fu_381_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_385_p0 = v100_reg_1454;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_385_p0 = v84_reg_1424;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_385_p0 = v67_reg_1394;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_385_p0 = v51_reg_1346;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_385_p0 = v34_reg_1298;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_385_p0 = v17_reg_1250;
        end else begin
            grp_fu_385_p0 = 'bx;
        end
    end else begin
        grp_fu_385_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_385_p1 = v102_reg_1459;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_385_p1 = v85_reg_1429;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_385_p1 = v69_reg_1399;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_385_p1 = v52_reg_1351;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_385_p1 = v36_reg_1303;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_385_p1 = v19_reg_1255;
        end else begin
            grp_fu_385_p1 = 'bx;
        end
    end else begin
        grp_fu_385_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_389_p0 = v106_reg_1464;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_389_p0 = v89_reg_1434;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_389_p0 = v73_reg_1404;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_389_p0 = v56_reg_1356;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_389_p0 = v40_reg_1308;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_389_p0 = v23_reg_1260;
        end else begin
            grp_fu_389_p0 = 'bx;
        end
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_389_p1 = v107_reg_1469;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_389_p1 = v91_reg_1439;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_389_p1 = v74_reg_1409;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_389_p1 = v58_reg_1361;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_389_p1 = v41_reg_1313;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_389_p1 = v25_reg_1265;
        end else begin
            grp_fu_389_p1 = 'bx;
        end
    end else begin
        grp_fu_389_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_393_p0 = v93_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_393_p0 = v76_fu_708_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_393_p0 = v60_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_393_p0 = v43_fu_635_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_393_p0 = v27_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_393_p0 = v8_fu_599_p1;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_397_p0 = v90_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_397_p0 = v79_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_397_p0 = v57_3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_397_p0 = v46_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_397_p0 = v24_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_397_p0 = v11_3;
    end else begin
        grp_fu_397_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_397_p1 = v12_reg_1143;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_397_p1 = v18_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_397_p1 = v12_fu_604_p1;
    end else begin
        grp_fu_397_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_401_p0 = v98_fu_742_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_401_p0 = v82_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_401_p0 = v65_fu_671_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_401_p0 = v49_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_401_p0 = v32_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_401_p0 = v15_fu_609_p1;
    end else begin
        grp_fu_401_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p0 = v101_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p0 = v79_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_405_p0 = v68_3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_405_p0 = v46_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p0 = v35_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p0 = v11_3;
    end else begin
        grp_fu_405_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_405_p1 = v18_reg_1156;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_405_p1 = v12_reg_1143;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p1 = v18_fu_614_p1;
    end else begin
        grp_fu_405_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p0 = v104_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p0 = v87_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_409_p0 = v71_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_409_p0 = v54_fu_643_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p0 = v38_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p0 = v21_fu_618_p1;
    end else begin
        grp_fu_409_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_413_p0 = v101_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p0 = v90_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_413_p0 = v68_3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_413_p0 = v57_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p0 = v35_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p0 = v24_3;
    end else begin
        grp_fu_413_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_413_p1 = v12_reg_1143;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_413_p1 = v18_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p1 = v12_fu_604_p1;
    end else begin
        grp_fu_413_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_0_ce0_local = 1'b1;
    end else begin
        v228_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_0_ce1_local = 1'b1;
    end else begin
        v228_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address0_local = v229_0_addr_18_reg_1087_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_16_reg_1031_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln108_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln56_fu_560_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address1_local = v229_0_addr_17_reg_1062_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_15_reg_995_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln101_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln49_fu_492_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_0_d0_local = bitcast_ln113_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_0_d0_local = bitcast_ln61_fu_809_p1;
        end else begin
            v229_0_d0_local = 'bx;
        end
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_0_d1_local = bitcast_ln107_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_0_d1_local = bitcast_ln55_fu_804_p1;
        end else begin
            v229_0_d1_local = 'bx;
        end
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address0_local = v229_1_addr_18_reg_1092_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_16_reg_1041_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = zext_ln108_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln56_fu_560_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address1_local = v229_1_addr_17_reg_1067_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_15_reg_1005_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = zext_ln101_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln49_fu_492_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_1_d0_local = bitcast_ln126_fu_869_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d0_local = bitcast_ln74_fu_819_p1;
        end else begin
            v229_1_d0_local = 'bx;
        end
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_1_d1_local = bitcast_ln120_fu_864_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d1_local = bitcast_ln68_fu_814_p1;
        end else begin
            v229_1_d1_local = 'bx;
        end
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_18_reg_1097_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_address0_local = v229_2_addr_15_reg_1010_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = zext_ln108_fu_592_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln56_fu_560_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address1_local = v229_2_addr_17_reg_1072_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_address1_local = v229_2_addr_16_reg_1046_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = zext_ln101_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln49_fu_492_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_d0_local = bitcast_ln139_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_d0_local = bitcast_ln81_fu_834_p1;
    end else begin
        v229_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_2_d1_local = bitcast_ln133_fu_874_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_2_d1_local = bitcast_ln87_fu_839_p1;
        end else begin
            v229_2_d1_local = 'bx;
        end
    end else begin
        v229_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address0_local = v229_3_addr_18_reg_1102_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_3_address0_local = v229_3_addr_16_reg_1057_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address0_local = v229_3_addr_14_reg_1052_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_18_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = v229_3_addr_16_reg_1057;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_580_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address1_local = v229_3_addr_17_reg_1077_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_3_address1_local = v229_3_addr_15_reg_1021_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address1_local = v229_3_addr_13_reg_1016_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address1_local = v229_3_addr_17_reg_1077;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = v229_3_addr_15_reg_1021;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_512_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_d0_local = bitcast_ln152_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_3_d0_local = bitcast_ln100_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_d0_local = bitcast_ln48_fu_829_p1;
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_d1_local = bitcast_ln146_fu_883_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_3_d1_local = bitcast_ln94_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_d1_local = bitcast_ln41_fu_824_p1;
    end else begin
        v229_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_3_we1_local = 1'b1;
    end else begin
        v229_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln101_fu_500_p2 = (mul_ln101 + zext_ln38_fu_467_p1);
assign add_ln108_fu_568_p2 = (mul_ln101 + zext_ln45_fu_535_p1);
assign add_ln33_fu_680_p2 = (v7_reg_981 + 8'd2);
assign add_ln34_fu_506_p2 = (mul_ln114 + zext_ln38_fu_467_p1);
assign add_ln38_fu_475_p2 = (mul_ln38 + zext_ln38_26_fu_471_p1);
assign add_ln42_fu_574_p2 = (mul_ln114 + zext_ln45_fu_535_p1);
assign add_ln45_fu_543_p2 = (mul_ln38 + zext_ln45_26_fu_539_p1);
assign add_ln49_fu_486_p2 = (mul_ln49 + zext_ln38_fu_467_p1);
assign add_ln56_fu_554_p2 = (mul_ln49 + zext_ln45_fu_535_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_fu_849_p1 = reg_429;
assign bitcast_ln107_fu_854_p1 = reg_433;
assign bitcast_ln113_fu_859_p1 = reg_449;
assign bitcast_ln120_fu_864_p1 = reg_429;
assign bitcast_ln126_fu_869_p1 = reg_433;
assign bitcast_ln133_fu_874_p1 = reg_437;
assign bitcast_ln139_fu_879_p1 = v97_reg_1474;
assign bitcast_ln146_fu_883_p1 = v103_reg_1479;
assign bitcast_ln152_fu_887_p1 = v108_reg_1484;
assign bitcast_ln41_fu_824_p1 = reg_429;
assign bitcast_ln48_fu_829_p1 = reg_433;
assign bitcast_ln55_fu_804_p1 = reg_437;
assign bitcast_ln61_fu_809_p1 = reg_441;
assign bitcast_ln68_fu_814_p1 = reg_445;
assign bitcast_ln74_fu_819_p1 = reg_449;
assign bitcast_ln81_fu_834_p1 = reg_441;
assign bitcast_ln87_fu_839_p1 = reg_445;
assign bitcast_ln94_fu_844_p1 = reg_437;
assign grp_fu_23405_p_ce = 1'b1;
assign grp_fu_23405_p_din0 = grp_fu_381_p0;
assign grp_fu_23405_p_din1 = grp_fu_381_p1;
assign grp_fu_23405_p_opcode = 2'd0;
assign grp_fu_23409_p_ce = 1'b1;
assign grp_fu_23409_p_din0 = grp_fu_385_p0;
assign grp_fu_23409_p_din1 = grp_fu_385_p1;
assign grp_fu_23409_p_opcode = 2'd0;
assign grp_fu_23413_p_ce = 1'b1;
assign grp_fu_23413_p_din0 = grp_fu_389_p0;
assign grp_fu_23413_p_din1 = grp_fu_389_p1;
assign grp_fu_23413_p_opcode = 2'd0;
assign grp_fu_23417_p_ce = 1'b1;
assign grp_fu_23417_p_din0 = grp_fu_393_p0;
assign grp_fu_23417_p_din1 = v4;
assign grp_fu_23421_p_ce = 1'b1;
assign grp_fu_23421_p_din0 = grp_fu_397_p0;
assign grp_fu_23421_p_din1 = grp_fu_397_p1;
assign grp_fu_23425_p_ce = 1'b1;
assign grp_fu_23425_p_din0 = grp_fu_401_p0;
assign grp_fu_23425_p_din1 = v4;
assign grp_fu_23429_p_ce = 1'b1;
assign grp_fu_23429_p_din0 = grp_fu_405_p0;
assign grp_fu_23429_p_din1 = grp_fu_405_p1;
assign grp_fu_23433_p_ce = 1'b1;
assign grp_fu_23433_p_din0 = grp_fu_409_p0;
assign grp_fu_23433_p_din1 = v4;
assign grp_fu_23437_p_ce = 1'b1;
assign grp_fu_23437_p_din0 = grp_fu_413_p0;
assign grp_fu_23437_p_din1 = grp_fu_413_p1;
assign icmp_ln33_fu_461_p2 = ((ap_sig_allocacmp_v7 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln42_3_fu_527_p3 = {{tmp_s_fu_517_p4}, {1'd1}};
assign tmp_s_fu_517_p4 = {{ap_sig_allocacmp_v7[7:1]}};
assign v100_fu_792_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v98_reg_1372);
assign v104_fu_746_p1 = v229_3_load_17_reg_1217;
assign v106_fu_798_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v104_reg_1378);
assign v10_fu_648_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v8_reg_1137);
assign v12_fu_604_p1 = v228_0_load_reg_1082;
assign v15_fu_609_p1 = reg_421;
assign v17_fu_654_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v15_reg_1150);
assign v18_fu_614_p1 = v228_0_load_5_reg_1107;
assign v21_fu_618_p1 = reg_425;
assign v228_0_address0 = zext_ln45_27_fu_549_p1;
assign v228_0_address1 = zext_ln38_27_fu_481_p1;
assign v228_0_ce0 = v228_0_ce0_local;
assign v228_0_ce1 = v228_0_ce1_local;
assign v229_0_address0 = v229_0_address0_local;
assign v229_0_address1 = v229_0_address1_local;
assign v229_0_ce0 = v229_0_ce0_local;
assign v229_0_ce1 = v229_0_ce1_local;
assign v229_0_d0 = v229_0_d0_local;
assign v229_0_d1 = v229_0_d1_local;
assign v229_0_we0 = v229_0_we0_local;
assign v229_0_we1 = v229_0_we1_local;
assign v229_1_address0 = v229_1_address0_local;
assign v229_1_address1 = v229_1_address1_local;
assign v229_1_ce0 = v229_1_ce0_local;
assign v229_1_ce1 = v229_1_ce1_local;
assign v229_1_d0 = v229_1_d0_local;
assign v229_1_d1 = v229_1_d1_local;
assign v229_1_we0 = v229_1_we0_local;
assign v229_1_we1 = v229_1_we1_local;
assign v229_2_address0 = v229_2_address0_local;
assign v229_2_address1 = v229_2_address1_local;
assign v229_2_ce0 = v229_2_ce0_local;
assign v229_2_ce1 = v229_2_ce1_local;
assign v229_2_d0 = v229_2_d0_local;
assign v229_2_d1 = v229_2_d1_local;
assign v229_2_we0 = v229_2_we0_local;
assign v229_2_we1 = v229_2_we1_local;
assign v229_3_address0 = v229_3_address0_local;
assign v229_3_address1 = v229_3_address1_local;
assign v229_3_ce0 = v229_3_ce0_local;
assign v229_3_ce1 = v229_3_ce1_local;
assign v229_3_d0 = v229_3_d0_local;
assign v229_3_d1 = v229_3_d1_local;
assign v229_3_we0 = v229_3_we0_local;
assign v229_3_we1 = v229_3_we1_local;
assign v23_fu_660_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v21_reg_1163);
assign v27_fu_623_p1 = v229_0_load_15_reg_1112;
assign v29_fu_690_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v27_reg_1194);
assign v32_fu_627_p1 = v229_1_load_14_reg_1117;
assign v34_fu_696_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v32_reg_1200);
assign v38_fu_631_p1 = v229_1_load_15_reg_1122;
assign v40_fu_702_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v38_reg_1206);
assign v43_fu_635_p1 = v229_2_load_14_reg_1127;
assign v45_fu_720_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v43_reg_1222);
assign v49_fu_639_p1 = v229_2_load_15_reg_1132;
assign v51_fu_726_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v49_reg_1228);
assign v54_fu_643_p1 = reg_417;
assign v56_fu_732_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v54_reg_1234);
assign v60_fu_666_p1 = reg_421;
assign v62_fu_750_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v60_reg_1270);
assign v65_fu_671_p1 = reg_425;
assign v67_fu_756_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v65_reg_1276);
assign v71_fu_676_p1 = v229_0_load_17_reg_1169;
assign v73_fu_762_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v71_reg_1282);
assign v76_fu_708_p1 = v229_1_load_16_reg_1174;
assign v78_fu_768_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v76_reg_1318);
assign v82_fu_712_p1 = v229_1_load_17_reg_1179;
assign v84_fu_774_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v82_reg_1324);
assign v87_fu_716_p1 = v229_2_load_16_reg_1184;
assign v89_fu_780_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v87_reg_1330);
assign v8_fu_599_p1 = reg_417;
assign v93_fu_738_p1 = v229_2_load_17_reg_1189;
assign v95_fu_786_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v93_reg_1366);
assign v98_fu_742_p1 = v229_3_load_16_reg_1212;
assign zext_ln101_fu_585_p1 = add_ln101_reg_1000;
assign zext_ln108_fu_592_p1 = add_ln108_reg_1036;
assign zext_ln34_fu_512_p1 = add_ln34_fu_506_p2;
assign zext_ln38_26_fu_471_p1 = ap_sig_allocacmp_v7;
assign zext_ln38_27_fu_481_p1 = add_ln38_fu_475_p2;
assign zext_ln38_fu_467_p1 = ap_sig_allocacmp_v7;
assign zext_ln42_fu_580_p1 = add_ln42_fu_574_p2;
assign zext_ln45_26_fu_539_p1 = or_ln42_3_fu_527_p3;
assign zext_ln45_27_fu_549_p1 = add_ln45_fu_543_p2;
assign zext_ln45_fu_535_p1 = or_ln42_3_fu_527_p3;
assign zext_ln49_fu_492_p1 = add_ln49_fu_486_p2;
assign zext_ln56_fu_560_p1 = add_ln56_fu_554_p2;
endmodule 
