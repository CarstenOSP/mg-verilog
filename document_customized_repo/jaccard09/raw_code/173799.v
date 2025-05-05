module kernel_2mm_kernel_2mm_node0_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,mul_ln34,mul_ln88,mul_ln140,v4,cmp11,v11,v24_10,v35_10,v46_10,v57_10,v68_10,v79_10,v90_10,v101,grp_fu_23405_p_din0,grp_fu_23405_p_din1,grp_fu_23405_p_opcode,grp_fu_23405_p_dout0,grp_fu_23405_p_ce,grp_fu_23409_p_din0,grp_fu_23409_p_din1,grp_fu_23409_p_opcode,grp_fu_23409_p_dout0,grp_fu_23409_p_ce,grp_fu_23413_p_din0,grp_fu_23413_p_din1,grp_fu_23413_p_opcode,grp_fu_23413_p_dout0,grp_fu_23413_p_ce,grp_fu_23417_p_din0,grp_fu_23417_p_din1,grp_fu_23417_p_dout0,grp_fu_23417_p_ce,grp_fu_23421_p_din0,grp_fu_23421_p_din1,grp_fu_23421_p_dout0,grp_fu_23421_p_ce,grp_fu_23425_p_din0,grp_fu_23425_p_din1,grp_fu_23425_p_dout0,grp_fu_23425_p_ce,grp_fu_23429_p_din0,grp_fu_23429_p_din1,grp_fu_23429_p_dout0,grp_fu_23429_p_ce,grp_fu_23433_p_din0,grp_fu_23433_p_din1,grp_fu_23433_p_dout0,grp_fu_23433_p_ce,grp_fu_23437_p_din0,grp_fu_23437_p_din1,grp_fu_23437_p_dout0,grp_fu_23437_p_ce); 
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
input  [12:0] mul_ln34;
input  [13:0] mul_ln88;
input  [13:0] mul_ln140;
input  [31:0] v4;
input  [0:0] cmp11;
input  [31:0] v11;
input  [31:0] v24_10;
input  [31:0] v35_10;
input  [31:0] v46_10;
input  [31:0] v57_10;
input  [31:0] v68_10;
input  [31:0] v79_10;
input  [31:0] v90_10;
input  [31:0] v101;
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
reg   [0:0] icmp_ln33_reg_1007;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_423;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_427;
reg   [31:0] reg_431;
reg   [31:0] reg_435;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_439;
reg   [31:0] reg_443;
reg   [31:0] reg_447;
reg   [31:0] reg_451;
reg   [31:0] reg_455;
reg   [7:0] v7_9_reg_1001;
wire   [0:0] icmp_ln33_fu_467_p2;
reg   [13:0] v229_0_addr_1_reg_1016;
reg   [13:0] v229_0_addr_1_reg_1016_pp0_iter1_reg;
reg   [13:0] v229_0_addr_1_reg_1016_pp0_iter2_reg;
reg   [13:0] v229_1_addr_1_reg_1021;
reg   [13:0] v229_1_addr_1_reg_1021_pp0_iter1_reg;
reg   [13:0] v229_1_addr_1_reg_1021_pp0_iter2_reg;
reg   [13:0] v229_2_addr_1_reg_1026;
reg   [13:0] v229_2_addr_1_reg_1026_pp0_iter1_reg;
reg   [13:0] v229_2_addr_1_reg_1026_pp0_iter2_reg;
reg   [13:0] v229_3_addr_1_reg_1031;
reg   [13:0] v229_3_addr_1_reg_1031_pp0_iter1_reg;
reg   [13:0] v229_3_addr_1_reg_1031_pp0_iter2_reg;
wire   [7:0] or_ln_fu_516_p3;
reg   [7:0] or_ln_reg_1037;
reg   [13:0] v229_0_addr_2_reg_1047;
reg   [13:0] v229_0_addr_2_reg_1047_pp0_iter1_reg;
reg   [13:0] v229_0_addr_2_reg_1047_pp0_iter2_reg;
reg   [13:0] v229_1_addr_2_reg_1052;
reg   [13:0] v229_1_addr_2_reg_1052_pp0_iter1_reg;
reg   [13:0] v229_1_addr_2_reg_1052_pp0_iter2_reg;
reg   [13:0] v229_2_addr_2_reg_1057;
reg   [13:0] v229_2_addr_2_reg_1057_pp0_iter1_reg;
reg   [13:0] v229_2_addr_2_reg_1057_pp0_iter2_reg;
reg   [13:0] v229_3_addr_2_reg_1062;
reg   [13:0] v229_3_addr_2_reg_1062_pp0_iter1_reg;
reg   [13:0] v229_3_addr_2_reg_1062_pp0_iter2_reg;
reg   [13:0] v229_0_addr_3_reg_1068;
reg   [13:0] v229_0_addr_3_reg_1068_pp0_iter1_reg;
reg   [13:0] v229_0_addr_3_reg_1068_pp0_iter2_reg;
wire   [13:0] add_ln140_fu_573_p2;
reg   [13:0] add_ln140_reg_1073;
reg   [13:0] v229_1_addr_3_reg_1078;
reg   [13:0] v229_1_addr_3_reg_1078_pp0_iter1_reg;
reg   [13:0] v229_1_addr_3_reg_1078_pp0_iter2_reg;
reg   [13:0] v229_2_addr_3_reg_1083;
reg   [13:0] v229_2_addr_3_reg_1083_pp0_iter1_reg;
reg   [13:0] v229_2_addr_3_reg_1083_pp0_iter2_reg;
reg   [13:0] v229_3_addr_3_reg_1088;
reg   [13:0] v229_3_addr_3_reg_1088_pp0_iter1_reg;
reg   [13:0] v229_3_addr_3_reg_1088_pp0_iter2_reg;
reg   [31:0] v228_0_load_reg_1093;
reg   [13:0] v229_0_addr_4_reg_1098;
reg   [13:0] v229_0_addr_4_reg_1098_pp0_iter1_reg;
reg   [13:0] v229_0_addr_4_reg_1098_pp0_iter2_reg;
wire   [13:0] add_ln147_fu_594_p2;
reg   [13:0] add_ln147_reg_1103;
reg   [13:0] v229_1_addr_4_reg_1108;
reg   [13:0] v229_1_addr_4_reg_1108_pp0_iter1_reg;
reg   [13:0] v229_1_addr_4_reg_1108_pp0_iter2_reg;
reg   [13:0] v229_2_addr_4_reg_1113;
reg   [13:0] v229_2_addr_4_reg_1113_pp0_iter1_reg;
reg   [13:0] v229_2_addr_4_reg_1113_pp0_iter2_reg;
reg   [13:0] v229_3_addr_4_reg_1118;
reg   [13:0] v229_3_addr_4_reg_1118_pp0_iter1_reg;
reg   [13:0] v229_3_addr_4_reg_1118_pp0_iter2_reg;
reg   [13:0] v229_3_addr_4_reg_1118_pp0_iter3_reg;
reg   [31:0] v228_0_load_1_reg_1123;
reg   [31:0] v229_1_load_1_reg_1128;
reg   [31:0] v229_2_load_reg_1133;
reg   [31:0] v229_2_load_1_reg_1138;
reg   [31:0] v229_3_load_reg_1143;
reg   [31:0] v229_3_load_1_reg_1148;
reg   [13:0] v229_0_addr_5_reg_1153;
reg   [13:0] v229_0_addr_5_reg_1153_pp0_iter1_reg;
reg   [13:0] v229_0_addr_5_reg_1153_pp0_iter2_reg;
reg   [13:0] v229_0_addr_5_reg_1153_pp0_iter3_reg;
wire   [31:0] v8_fu_603_p1;
reg   [31:0] v8_reg_1158;
wire   [31:0] v12_fu_608_p1;
reg   [31:0] v12_reg_1164;
reg   [13:0] v229_0_addr_6_reg_1171;
reg   [13:0] v229_0_addr_6_reg_1171_pp0_iter1_reg;
reg   [13:0] v229_0_addr_6_reg_1171_pp0_iter2_reg;
reg   [13:0] v229_0_addr_6_reg_1171_pp0_iter3_reg;
wire   [31:0] v15_fu_617_p1;
reg   [31:0] v15_reg_1176;
wire   [31:0] v18_fu_622_p1;
reg   [31:0] v18_reg_1182;
wire   [31:0] v21_fu_626_p1;
reg   [31:0] v21_reg_1189;
reg   [31:0] v229_1_load_3_reg_1195;
reg   [31:0] v229_2_load_2_reg_1200;
reg   [31:0] v229_2_load_3_reg_1205;
reg   [31:0] v229_3_load_2_reg_1210;
reg   [31:0] v229_3_load_3_reg_1215;
wire   [31:0] v27_fu_631_p1;
reg   [31:0] v27_reg_1220;
wire   [31:0] v32_fu_635_p1;
reg   [31:0] v32_reg_1226;
wire   [31:0] v38_fu_639_p1;
reg   [31:0] v38_reg_1232;
reg   [31:0] v229_0_load_4_reg_1238;
reg   [31:0] v229_0_load_5_reg_1243;
wire   [31:0] v43_fu_643_p1;
reg   [31:0] v43_reg_1248;
wire   [31:0] v49_fu_647_p1;
reg   [31:0] v49_reg_1254;
wire   [31:0] v54_fu_651_p1;
reg   [31:0] v54_reg_1260;
wire   [31:0] v10_fu_656_p3;
reg   [31:0] v10_reg_1266;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v13_reg_1271;
wire   [31:0] v17_fu_662_p3;
reg   [31:0] v17_reg_1276;
reg   [31:0] v19_reg_1281;
wire   [31:0] v23_fu_668_p3;
reg   [31:0] v23_reg_1286;
reg   [31:0] v25_reg_1291;
wire   [31:0] v60_fu_674_p1;
reg   [31:0] v60_reg_1296;
wire   [31:0] v65_fu_679_p1;
reg   [31:0] v65_reg_1302;
wire   [31:0] v71_fu_684_p1;
reg   [31:0] v71_reg_1308;
wire   [31:0] v29_fu_698_p3;
reg   [31:0] v29_reg_1314;
reg   [31:0] v30_reg_1319;
wire   [31:0] v34_fu_704_p3;
reg   [31:0] v34_reg_1324;
reg   [31:0] v36_reg_1329;
wire   [31:0] v40_fu_710_p3;
reg   [31:0] v40_reg_1334;
reg   [31:0] v41_reg_1339;
wire   [31:0] v76_fu_716_p1;
reg   [31:0] v76_reg_1344;
wire   [31:0] v82_fu_720_p1;
reg   [31:0] v82_reg_1350;
wire   [31:0] v87_fu_724_p1;
reg   [31:0] v87_reg_1356;
wire   [31:0] v45_fu_728_p3;
reg   [31:0] v45_reg_1362;
reg   [31:0] v47_reg_1367;
wire   [31:0] v51_fu_734_p3;
reg   [31:0] v51_reg_1372;
reg   [31:0] v52_reg_1377;
wire   [31:0] v56_fu_740_p3;
reg   [31:0] v56_reg_1382;
reg   [31:0] v58_reg_1387;
wire   [31:0] v93_fu_746_p1;
reg   [31:0] v93_reg_1392;
wire   [31:0] v98_fu_750_p1;
reg   [31:0] v98_reg_1398;
wire   [31:0] v104_fu_754_p1;
reg   [31:0] v104_reg_1404;
wire   [31:0] v62_fu_758_p3;
reg   [31:0] v62_reg_1410;
reg   [31:0] v63_reg_1415;
wire   [31:0] v67_fu_764_p3;
reg   [31:0] v67_reg_1420;
reg   [31:0] v69_reg_1425;
wire   [31:0] v73_fu_770_p3;
reg   [31:0] v73_reg_1430;
reg   [31:0] v74_reg_1435;
wire   [31:0] v78_fu_776_p3;
reg   [31:0] v78_reg_1440;
reg   [31:0] v80_reg_1445;
wire   [31:0] v84_fu_782_p3;
reg   [31:0] v84_reg_1450;
reg   [31:0] v85_reg_1455;
wire   [31:0] v89_fu_788_p3;
reg   [31:0] v89_reg_1460;
reg   [31:0] v91_reg_1465;
wire   [31:0] v95_fu_794_p3;
reg   [31:0] v95_reg_1470;
reg   [31:0] v96_reg_1475;
wire   [31:0] v100_fu_800_p3;
reg   [31:0] v100_reg_1480;
reg   [31:0] v102_reg_1485;
wire   [31:0] v106_fu_806_p3;
reg   [31:0] v106_reg_1490;
reg   [31:0] v107_reg_1495;
reg   [31:0] v97_reg_1500;
reg   [31:0] v103_reg_1505;
reg   [31:0] v108_reg_1510;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_34_fu_487_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_fu_498_p1;
wire   [63:0] zext_ln45_34_fu_538_p1;
wire   [63:0] zext_ln42_fu_549_p1;
wire   [63:0] zext_ln88_fu_565_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_fu_586_p1;
wire   [63:0] zext_ln140_fu_599_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln147_fu_613_p1;
reg   [7:0] v7_fu_88;
wire   [7:0] add_ln33_fu_688_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_9;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln41_fu_832_p1;
wire    ap_block_pp0_stage3;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln48_fu_837_p1;
wire   [31:0] bitcast_ln94_fu_852_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln100_fu_857_p1;
wire   [31:0] bitcast_ln146_fu_891_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln152_fu_895_p1;
reg    v228_0_ce1_local;
reg    v228_0_ce0_local;
reg    v229_1_ce1_local;
reg   [13:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [13:0] v229_1_address0_local;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln55_fu_812_p1;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln61_fu_817_p1;
wire   [31:0] bitcast_ln107_fu_862_p1;
wire   [31:0] bitcast_ln113_fu_867_p1;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln68_fu_822_p1;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln74_fu_827_p1;
wire   [31:0] bitcast_ln120_fu_872_p1;
wire   [31:0] bitcast_ln126_fu_877_p1;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln81_fu_842_p1;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln87_fu_847_p1;
wire   [31:0] bitcast_ln133_fu_882_p1;
wire   [31:0] bitcast_ln139_fu_887_p1;
reg   [31:0] grp_fu_387_p0;
reg   [31:0] grp_fu_387_p1;
reg   [31:0] grp_fu_391_p0;
reg   [31:0] grp_fu_391_p1;
reg   [31:0] grp_fu_395_p0;
reg   [31:0] grp_fu_395_p1;
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_403_p1;
reg   [31:0] grp_fu_407_p0;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_411_p1;
reg   [31:0] grp_fu_415_p0;
reg   [31:0] grp_fu_419_p0;
reg   [31:0] grp_fu_419_p1;
wire   [14:0] zext_ln38_33_fu_477_p1;
wire   [14:0] add_ln38_fu_481_p2;
wire   [12:0] zext_ln38_32_fu_473_p1;
wire   [12:0] add_ln34_fu_492_p2;
wire   [6:0] tmp_s_fu_506_p4;
wire   [14:0] zext_ln45_33_fu_528_p1;
wire   [14:0] add_ln45_fu_532_p2;
wire   [12:0] zext_ln45_32_fu_524_p1;
wire   [12:0] add_ln42_fu_543_p2;
wire   [13:0] zext_ln38_fu_557_p1;
wire   [13:0] add_ln88_fu_560_p2;
wire   [13:0] zext_ln45_fu_578_p1;
wire   [13:0] add_ln95_fu_581_p2;
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
#0 v7_fu_88 = 8'd0;
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
        v7_fu_88 <= 8'd0;
    end else if (((icmp_ln33_reg_1007 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_fu_88 <= add_ln33_fu_688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln140_reg_1073 <= add_ln140_fu_573_p2;
        add_ln147_reg_1103 <= add_ln147_fu_594_p2;
        v104_reg_1404 <= v104_fu_754_p1;
        v229_0_addr_3_reg_1068 <= zext_ln88_fu_565_p1;
        v229_0_addr_3_reg_1068_pp0_iter1_reg <= v229_0_addr_3_reg_1068;
        v229_0_addr_3_reg_1068_pp0_iter2_reg <= v229_0_addr_3_reg_1068_pp0_iter1_reg;
        v229_0_addr_4_reg_1098 <= zext_ln95_fu_586_p1;
        v229_0_addr_4_reg_1098_pp0_iter1_reg <= v229_0_addr_4_reg_1098;
        v229_0_addr_4_reg_1098_pp0_iter2_reg <= v229_0_addr_4_reg_1098_pp0_iter1_reg;
        v229_1_addr_3_reg_1078 <= zext_ln88_fu_565_p1;
        v229_1_addr_3_reg_1078_pp0_iter1_reg <= v229_1_addr_3_reg_1078;
        v229_1_addr_3_reg_1078_pp0_iter2_reg <= v229_1_addr_3_reg_1078_pp0_iter1_reg;
        v229_1_addr_4_reg_1108 <= zext_ln95_fu_586_p1;
        v229_1_addr_4_reg_1108_pp0_iter1_reg <= v229_1_addr_4_reg_1108;
        v229_1_addr_4_reg_1108_pp0_iter2_reg <= v229_1_addr_4_reg_1108_pp0_iter1_reg;
        v229_2_addr_3_reg_1083 <= zext_ln88_fu_565_p1;
        v229_2_addr_3_reg_1083_pp0_iter1_reg <= v229_2_addr_3_reg_1083;
        v229_2_addr_3_reg_1083_pp0_iter2_reg <= v229_2_addr_3_reg_1083_pp0_iter1_reg;
        v229_2_addr_4_reg_1113 <= zext_ln95_fu_586_p1;
        v229_2_addr_4_reg_1113_pp0_iter1_reg <= v229_2_addr_4_reg_1113;
        v229_2_addr_4_reg_1113_pp0_iter2_reg <= v229_2_addr_4_reg_1113_pp0_iter1_reg;
        v229_3_addr_3_reg_1088 <= zext_ln88_fu_565_p1;
        v229_3_addr_3_reg_1088_pp0_iter1_reg <= v229_3_addr_3_reg_1088;
        v229_3_addr_3_reg_1088_pp0_iter2_reg <= v229_3_addr_3_reg_1088_pp0_iter1_reg;
        v229_3_addr_4_reg_1118 <= zext_ln95_fu_586_p1;
        v229_3_addr_4_reg_1118_pp0_iter1_reg <= v229_3_addr_4_reg_1118;
        v229_3_addr_4_reg_1118_pp0_iter2_reg <= v229_3_addr_4_reg_1118_pp0_iter1_reg;
        v229_3_addr_4_reg_1118_pp0_iter3_reg <= v229_3_addr_4_reg_1118_pp0_iter2_reg;
        v45_reg_1362 <= v45_fu_728_p3;
        v51_reg_1372 <= v51_fu_734_p3;
        v56_reg_1382 <= v56_fu_740_p3;
        v93_reg_1392 <= v93_fu_746_p1;
        v98_reg_1398 <= v98_fu_750_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v10_reg_1266 <= v10_fu_656_p3;
        v17_reg_1276 <= v17_fu_662_p3;
        v23_reg_1286 <= v23_fu_668_p3;
        v60_reg_1296 <= v60_fu_674_p1;
        v65_reg_1302 <= v65_fu_679_p1;
        v71_reg_1308 <= v71_fu_684_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33_reg_1007 <= icmp_ln33_fu_467_p2;
        or_ln_reg_1037[7 : 1] <= or_ln_fu_516_p3[7 : 1];
        v229_0_addr_1_reg_1016[12 : 0] <= zext_ln34_fu_498_p1[12 : 0];
        v229_0_addr_1_reg_1016_pp0_iter1_reg[12 : 0] <= v229_0_addr_1_reg_1016[12 : 0];
        v229_0_addr_1_reg_1016_pp0_iter2_reg[12 : 0] <= v229_0_addr_1_reg_1016_pp0_iter1_reg[12 : 0];
        v229_0_addr_2_reg_1047[12 : 0] <= zext_ln42_fu_549_p1[12 : 0];
        v229_0_addr_2_reg_1047_pp0_iter1_reg[12 : 0] <= v229_0_addr_2_reg_1047[12 : 0];
        v229_0_addr_2_reg_1047_pp0_iter2_reg[12 : 0] <= v229_0_addr_2_reg_1047_pp0_iter1_reg[12 : 0];
        v229_1_addr_1_reg_1021[12 : 0] <= zext_ln34_fu_498_p1[12 : 0];
        v229_1_addr_1_reg_1021_pp0_iter1_reg[12 : 0] <= v229_1_addr_1_reg_1021[12 : 0];
        v229_1_addr_1_reg_1021_pp0_iter2_reg[12 : 0] <= v229_1_addr_1_reg_1021_pp0_iter1_reg[12 : 0];
        v229_1_addr_2_reg_1052[12 : 0] <= zext_ln42_fu_549_p1[12 : 0];
        v229_1_addr_2_reg_1052_pp0_iter1_reg[12 : 0] <= v229_1_addr_2_reg_1052[12 : 0];
        v229_1_addr_2_reg_1052_pp0_iter2_reg[12 : 0] <= v229_1_addr_2_reg_1052_pp0_iter1_reg[12 : 0];
        v229_2_addr_1_reg_1026[12 : 0] <= zext_ln34_fu_498_p1[12 : 0];
        v229_2_addr_1_reg_1026_pp0_iter1_reg[12 : 0] <= v229_2_addr_1_reg_1026[12 : 0];
        v229_2_addr_1_reg_1026_pp0_iter2_reg[12 : 0] <= v229_2_addr_1_reg_1026_pp0_iter1_reg[12 : 0];
        v229_2_addr_2_reg_1057[12 : 0] <= zext_ln42_fu_549_p1[12 : 0];
        v229_2_addr_2_reg_1057_pp0_iter1_reg[12 : 0] <= v229_2_addr_2_reg_1057[12 : 0];
        v229_2_addr_2_reg_1057_pp0_iter2_reg[12 : 0] <= v229_2_addr_2_reg_1057_pp0_iter1_reg[12 : 0];
        v229_3_addr_1_reg_1031[12 : 0] <= zext_ln34_fu_498_p1[12 : 0];
        v229_3_addr_1_reg_1031_pp0_iter1_reg[12 : 0] <= v229_3_addr_1_reg_1031[12 : 0];
        v229_3_addr_1_reg_1031_pp0_iter2_reg[12 : 0] <= v229_3_addr_1_reg_1031_pp0_iter1_reg[12 : 0];
        v229_3_addr_2_reg_1062[12 : 0] <= zext_ln42_fu_549_p1[12 : 0];
        v229_3_addr_2_reg_1062_pp0_iter1_reg[12 : 0] <= v229_3_addr_2_reg_1062[12 : 0];
        v229_3_addr_2_reg_1062_pp0_iter2_reg[12 : 0] <= v229_3_addr_2_reg_1062_pp0_iter1_reg[12 : 0];
        v29_reg_1314 <= v29_fu_698_p3;
        v34_reg_1324 <= v34_fu_704_p3;
        v40_reg_1334 <= v40_fu_710_p3;
        v76_reg_1344 <= v76_fu_716_p1;
        v7_9_reg_1001 <= ap_sig_allocacmp_v7_9;
        v82_reg_1350 <= v82_fu_720_p1;
        v87_reg_1356 <= v87_fu_724_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_423 <= v229_0_q1;
        reg_427 <= v229_0_q0;
        reg_431 <= v229_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_435 <= grp_fu_23405_p_dout0;
        reg_439 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_443 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_447 <= grp_fu_23405_p_dout0;
        reg_451 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_455 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v100_reg_1480 <= v100_fu_800_p3;
        v106_reg_1490 <= v106_fu_806_p3;
        v43_reg_1248 <= v43_fu_643_p1;
        v49_reg_1254 <= v49_fu_647_p1;
        v54_reg_1260 <= v54_fu_651_p1;
        v95_reg_1470 <= v95_fu_794_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1485 <= grp_fu_23429_p_dout0;
        v107_reg_1495 <= grp_fu_23437_p_dout0;
        v96_reg_1475 <= grp_fu_23421_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1505 <= grp_fu_23409_p_dout0;
        v108_reg_1510 <= grp_fu_23413_p_dout0;
        v97_reg_1500 <= grp_fu_23405_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v12_reg_1164 <= v12_fu_608_p1;
        v15_reg_1176 <= v15_fu_617_p1;
        v18_reg_1182 <= v18_fu_622_p1;
        v21_reg_1189 <= v21_fu_626_p1;
        v229_0_addr_5_reg_1153 <= zext_ln140_fu_599_p1;
        v229_0_addr_5_reg_1153_pp0_iter1_reg <= v229_0_addr_5_reg_1153;
        v229_0_addr_5_reg_1153_pp0_iter2_reg <= v229_0_addr_5_reg_1153_pp0_iter1_reg;
        v229_0_addr_5_reg_1153_pp0_iter3_reg <= v229_0_addr_5_reg_1153_pp0_iter2_reg;
        v229_0_addr_6_reg_1171 <= zext_ln147_fu_613_p1;
        v229_0_addr_6_reg_1171_pp0_iter1_reg <= v229_0_addr_6_reg_1171;
        v229_0_addr_6_reg_1171_pp0_iter2_reg <= v229_0_addr_6_reg_1171_pp0_iter1_reg;
        v229_0_addr_6_reg_1171_pp0_iter3_reg <= v229_0_addr_6_reg_1171_pp0_iter2_reg;
        v62_reg_1410 <= v62_fu_758_p3;
        v67_reg_1420 <= v67_fu_764_p3;
        v73_reg_1430 <= v73_fu_770_p3;
        v8_reg_1158 <= v8_fu_603_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_1271 <= grp_fu_23421_p_dout0;
        v19_reg_1281 <= grp_fu_23429_p_dout0;
        v25_reg_1291 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_0_load_1_reg_1123 <= v228_0_q0;
        v228_0_load_reg_1093 <= v228_0_q1;
        v229_1_load_1_reg_1128 <= v229_1_q0;
        v229_2_load_1_reg_1138 <= v229_2_q0;
        v229_2_load_reg_1133 <= v229_2_q1;
        v229_3_load_1_reg_1148 <= v229_3_q0;
        v229_3_load_reg_1143 <= v229_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_load_4_reg_1238 <= v229_0_q1;
        v229_0_load_5_reg_1243 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_load_3_reg_1195 <= v229_1_q0;
        v229_2_load_2_reg_1200 <= v229_2_q1;
        v229_2_load_3_reg_1205 <= v229_2_q0;
        v229_3_load_2_reg_1210 <= v229_3_q1;
        v229_3_load_3_reg_1215 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_reg_1220 <= v27_fu_631_p1;
        v32_reg_1226 <= v32_fu_635_p1;
        v38_reg_1232 <= v38_fu_639_p1;
        v78_reg_1440 <= v78_fu_776_p3;
        v84_reg_1450 <= v84_fu_782_p3;
        v89_reg_1460 <= v89_fu_788_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1319 <= grp_fu_23421_p_dout0;
        v36_reg_1329 <= grp_fu_23429_p_dout0;
        v41_reg_1339 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1367 <= grp_fu_23421_p_dout0;
        v52_reg_1377 <= grp_fu_23429_p_dout0;
        v58_reg_1387 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v63_reg_1415 <= grp_fu_23421_p_dout0;
        v69_reg_1425 <= grp_fu_23429_p_dout0;
        v74_reg_1435 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v80_reg_1445 <= grp_fu_23421_p_dout0;
        v85_reg_1455 <= grp_fu_23429_p_dout0;
        v91_reg_1465 <= grp_fu_23437_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_1007 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v7_9 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_9 = v7_fu_88;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_387_p0 = v95_reg_1470;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_387_p0 = v78_reg_1440;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_387_p0 = v62_reg_1410;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_387_p0 = v45_reg_1362;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_387_p0 = v29_reg_1314;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_387_p0 = v10_reg_1266;
        end else begin
            grp_fu_387_p0 = 'bx;
        end
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_387_p1 = v96_reg_1475;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_387_p1 = v80_reg_1445;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_387_p1 = v63_reg_1415;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_387_p1 = v47_reg_1367;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_387_p1 = v30_reg_1319;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_387_p1 = v13_reg_1271;
        end else begin
            grp_fu_387_p1 = 'bx;
        end
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_391_p0 = v100_reg_1480;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_391_p0 = v84_reg_1450;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_391_p0 = v67_reg_1420;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_391_p0 = v51_reg_1372;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_391_p0 = v34_reg_1324;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_391_p0 = v17_reg_1276;
        end else begin
            grp_fu_391_p0 = 'bx;
        end
    end else begin
        grp_fu_391_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_391_p1 = v102_reg_1485;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_391_p1 = v85_reg_1455;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_391_p1 = v69_reg_1425;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_391_p1 = v52_reg_1377;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_391_p1 = v36_reg_1329;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_391_p1 = v19_reg_1281;
        end else begin
            grp_fu_391_p1 = 'bx;
        end
    end else begin
        grp_fu_391_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_395_p0 = v106_reg_1490;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_395_p0 = v89_reg_1460;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_395_p0 = v73_reg_1430;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_395_p0 = v56_reg_1382;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_395_p0 = v40_reg_1334;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_395_p0 = v23_reg_1286;
        end else begin
            grp_fu_395_p0 = 'bx;
        end
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_395_p1 = v107_reg_1495;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_395_p1 = v91_reg_1465;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_395_p1 = v74_reg_1435;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_395_p1 = v58_reg_1387;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_395_p1 = v41_reg_1339;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_395_p1 = v25_reg_1291;
        end else begin
            grp_fu_395_p1 = 'bx;
        end
    end else begin
        grp_fu_395_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v93_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v76_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_399_p0 = v60_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_399_p0 = v43_fu_643_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v27_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v8_fu_603_p1;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = v90_10;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p0 = v79_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_403_p0 = v57_10;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_403_p0 = v46_10;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p0 = v24_10;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p0 = v11;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_403_p1 = v12_reg_1164;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_403_p1 = v18_reg_1182;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p1 = v12_fu_608_p1;
    end else begin
        grp_fu_403_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p0 = v98_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = v82_fu_720_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_407_p0 = v65_fu_679_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_407_p0 = v49_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = v32_fu_635_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p0 = v15_fu_617_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p0 = v101;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v79_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_411_p0 = v68_10;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_411_p0 = v46_10;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v35_10;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v11;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_411_p1 = v18_reg_1182;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_411_p1 = v12_reg_1164;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p1 = v18_fu_622_p1;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_415_p0 = v104_fu_754_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p0 = v87_fu_724_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_415_p0 = v71_fu_684_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_415_p0 = v54_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_415_p0 = v38_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p0 = v21_fu_626_p1;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_419_p0 = v101;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_419_p0 = v90_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_419_p0 = v68_10;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_419_p0 = v57_10;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_419_p0 = v35_10;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p0 = v24_10;
    end else begin
        grp_fu_419_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_419_p1 = v12_reg_1164;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_419_p1 = v18_reg_1182;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p1 = v12_fu_608_p1;
    end else begin
        grp_fu_419_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address0_local = v229_0_addr_6_reg_1171_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address0_local = v229_0_addr_4_reg_1098_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_2_reg_1047_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = zext_ln147_fu_613_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln95_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln42_fu_549_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address1_local = v229_0_addr_5_reg_1153_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address1_local = v229_0_addr_3_reg_1068_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_1_reg_1016_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = zext_ln140_fu_599_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln88_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln34_fu_498_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_d0_local = bitcast_ln152_fu_895_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d0_local = bitcast_ln100_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln48_fu_837_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_d1_local = bitcast_ln146_fu_891_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d1_local = bitcast_ln94_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d1_local = bitcast_ln41_fu_832_p1;
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address0_local = v229_1_addr_4_reg_1108_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_2_reg_1052_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = zext_ln95_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_549_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_3_reg_1078_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_1_reg_1021_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = zext_ln88_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_498_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_1_d0_local = bitcast_ln113_fu_867_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d0_local = bitcast_ln61_fu_817_p1;
        end else begin
            v229_1_d0_local = 'bx;
        end
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_1_d1_local = bitcast_ln107_fu_862_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d1_local = bitcast_ln55_fu_812_p1;
        end else begin
            v229_1_d1_local = 'bx;
        end
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address0_local = v229_2_addr_4_reg_1113_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_2_reg_1057_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = zext_ln95_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_549_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address1_local = v229_2_addr_3_reg_1083_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_1_reg_1026_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = zext_ln88_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_498_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_2_d0_local = bitcast_ln126_fu_877_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d0_local = bitcast_ln74_fu_827_p1;
        end else begin
            v229_2_d0_local = 'bx;
        end
    end else begin
        v229_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_2_d1_local = bitcast_ln120_fu_872_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d1_local = bitcast_ln68_fu_822_p1;
        end else begin
            v229_2_d1_local = 'bx;
        end
    end else begin
        v229_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_4_reg_1118_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address0_local = v229_3_addr_1_reg_1031_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = zext_ln95_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_549_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address1_local = v229_3_addr_3_reg_1088_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address1_local = v229_3_addr_2_reg_1062_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = zext_ln88_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_498_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_d0_local = bitcast_ln139_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_d0_local = bitcast_ln81_fu_842_p1;
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d1_local = bitcast_ln133_fu_882_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_3_d1_local = bitcast_ln87_fu_847_p1;
        end else begin
            v229_3_d1_local = 'bx;
        end
    end else begin
        v229_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln140_fu_573_p2 = (mul_ln140 + zext_ln38_fu_557_p1);
assign add_ln147_fu_594_p2 = (mul_ln140 + zext_ln45_fu_578_p1);
assign add_ln33_fu_688_p2 = (v7_9_reg_1001 + 8'd2);
assign add_ln34_fu_492_p2 = (mul_ln34 + zext_ln38_32_fu_473_p1);
assign add_ln38_fu_481_p2 = (mul_ln38 + zext_ln38_33_fu_477_p1);
assign add_ln42_fu_543_p2 = (mul_ln34 + zext_ln45_32_fu_524_p1);
assign add_ln45_fu_532_p2 = (mul_ln38 + zext_ln45_33_fu_528_p1);
assign add_ln88_fu_560_p2 = (mul_ln88 + zext_ln38_fu_557_p1);
assign add_ln95_fu_581_p2 = (mul_ln88 + zext_ln45_fu_578_p1);
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
assign bitcast_ln100_fu_857_p1 = reg_435;
assign bitcast_ln107_fu_862_p1 = reg_439;
assign bitcast_ln113_fu_867_p1 = reg_455;
assign bitcast_ln120_fu_872_p1 = reg_435;
assign bitcast_ln126_fu_877_p1 = reg_439;
assign bitcast_ln133_fu_882_p1 = reg_443;
assign bitcast_ln139_fu_887_p1 = v97_reg_1500;
assign bitcast_ln146_fu_891_p1 = v103_reg_1505;
assign bitcast_ln152_fu_895_p1 = v108_reg_1510;
assign bitcast_ln41_fu_832_p1 = reg_435;
assign bitcast_ln48_fu_837_p1 = reg_439;
assign bitcast_ln55_fu_812_p1 = reg_443;
assign bitcast_ln61_fu_817_p1 = reg_447;
assign bitcast_ln68_fu_822_p1 = reg_451;
assign bitcast_ln74_fu_827_p1 = reg_455;
assign bitcast_ln81_fu_842_p1 = reg_447;
assign bitcast_ln87_fu_847_p1 = reg_451;
assign bitcast_ln94_fu_852_p1 = reg_443;
assign grp_fu_23405_p_ce = 1'b1;
assign grp_fu_23405_p_din0 = grp_fu_387_p0;
assign grp_fu_23405_p_din1 = grp_fu_387_p1;
assign grp_fu_23405_p_opcode = 2'd0;
assign grp_fu_23409_p_ce = 1'b1;
assign grp_fu_23409_p_din0 = grp_fu_391_p0;
assign grp_fu_23409_p_din1 = grp_fu_391_p1;
assign grp_fu_23409_p_opcode = 2'd0;
assign grp_fu_23413_p_ce = 1'b1;
assign grp_fu_23413_p_din0 = grp_fu_395_p0;
assign grp_fu_23413_p_din1 = grp_fu_395_p1;
assign grp_fu_23413_p_opcode = 2'd0;
assign grp_fu_23417_p_ce = 1'b1;
assign grp_fu_23417_p_din0 = grp_fu_399_p0;
assign grp_fu_23417_p_din1 = v4;
assign grp_fu_23421_p_ce = 1'b1;
assign grp_fu_23421_p_din0 = grp_fu_403_p0;
assign grp_fu_23421_p_din1 = grp_fu_403_p1;
assign grp_fu_23425_p_ce = 1'b1;
assign grp_fu_23425_p_din0 = grp_fu_407_p0;
assign grp_fu_23425_p_din1 = v4;
assign grp_fu_23429_p_ce = 1'b1;
assign grp_fu_23429_p_din0 = grp_fu_411_p0;
assign grp_fu_23429_p_din1 = grp_fu_411_p1;
assign grp_fu_23433_p_ce = 1'b1;
assign grp_fu_23433_p_din0 = grp_fu_415_p0;
assign grp_fu_23433_p_din1 = v4;
assign grp_fu_23437_p_ce = 1'b1;
assign grp_fu_23437_p_din0 = grp_fu_419_p0;
assign grp_fu_23437_p_din1 = grp_fu_419_p1;
assign icmp_ln33_fu_467_p2 = ((ap_sig_allocacmp_v7_9 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln_fu_516_p3 = {{tmp_s_fu_506_p4}, {1'd1}};
assign tmp_s_fu_506_p4 = {{ap_sig_allocacmp_v7_9[7:1]}};
assign v100_fu_800_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v98_reg_1398);
assign v104_fu_754_p1 = v229_0_load_5_reg_1243;
assign v106_fu_806_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v104_reg_1404);
assign v10_fu_656_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v8_reg_1158);
assign v12_fu_608_p1 = v228_0_load_reg_1093;
assign v15_fu_617_p1 = reg_427;
assign v17_fu_662_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v15_reg_1176);
assign v18_fu_622_p1 = v228_0_load_1_reg_1123;
assign v21_fu_626_p1 = reg_431;
assign v228_0_address0 = zext_ln45_34_fu_538_p1;
assign v228_0_address1 = zext_ln38_34_fu_487_p1;
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
assign v23_fu_668_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v21_reg_1189);
assign v27_fu_631_p1 = v229_1_load_1_reg_1128;
assign v29_fu_698_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v27_reg_1220);
assign v32_fu_635_p1 = v229_2_load_reg_1133;
assign v34_fu_704_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v32_reg_1226);
assign v38_fu_639_p1 = v229_2_load_1_reg_1138;
assign v40_fu_710_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v38_reg_1232);
assign v43_fu_643_p1 = v229_3_load_reg_1143;
assign v45_fu_728_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v43_reg_1248);
assign v49_fu_647_p1 = v229_3_load_1_reg_1148;
assign v51_fu_734_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v49_reg_1254);
assign v54_fu_651_p1 = reg_423;
assign v56_fu_740_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v54_reg_1260);
assign v60_fu_674_p1 = reg_427;
assign v62_fu_758_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v60_reg_1296);
assign v65_fu_679_p1 = reg_431;
assign v67_fu_764_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v65_reg_1302);
assign v71_fu_684_p1 = v229_1_load_3_reg_1195;
assign v73_fu_770_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v71_reg_1308);
assign v76_fu_716_p1 = v229_2_load_2_reg_1200;
assign v78_fu_776_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v76_reg_1344);
assign v82_fu_720_p1 = v229_2_load_3_reg_1205;
assign v84_fu_782_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v82_reg_1350);
assign v87_fu_724_p1 = v229_3_load_2_reg_1210;
assign v89_fu_788_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v87_reg_1356);
assign v8_fu_603_p1 = reg_423;
assign v93_fu_746_p1 = v229_3_load_3_reg_1215;
assign v95_fu_794_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v93_reg_1392);
assign v98_fu_750_p1 = v229_0_load_4_reg_1238;
assign zext_ln140_fu_599_p1 = add_ln140_reg_1073;
assign zext_ln147_fu_613_p1 = add_ln147_reg_1103;
assign zext_ln34_fu_498_p1 = add_ln34_fu_492_p2;
assign zext_ln38_32_fu_473_p1 = ap_sig_allocacmp_v7_9;
assign zext_ln38_33_fu_477_p1 = ap_sig_allocacmp_v7_9;
assign zext_ln38_34_fu_487_p1 = add_ln38_fu_481_p2;
assign zext_ln38_fu_557_p1 = v7_9_reg_1001;
assign zext_ln42_fu_549_p1 = add_ln42_fu_543_p2;
assign zext_ln45_32_fu_524_p1 = or_ln_fu_516_p3;
assign zext_ln45_33_fu_528_p1 = or_ln_fu_516_p3;
assign zext_ln45_34_fu_538_p1 = add_ln45_fu_532_p2;
assign zext_ln45_fu_578_p1 = or_ln_reg_1037;
assign zext_ln88_fu_565_p1 = add_ln88_fu_560_p2;
assign zext_ln95_fu_586_p1 = add_ln95_fu_581_p2;
always @ (posedge ap_clk) begin
    v229_0_addr_1_reg_1016[13] <= 1'b0;
    v229_0_addr_1_reg_1016_pp0_iter1_reg[13] <= 1'b0;
    v229_0_addr_1_reg_1016_pp0_iter2_reg[13] <= 1'b0;
    v229_1_addr_1_reg_1021[13] <= 1'b0;
    v229_1_addr_1_reg_1021_pp0_iter1_reg[13] <= 1'b0;
    v229_1_addr_1_reg_1021_pp0_iter2_reg[13] <= 1'b0;
    v229_2_addr_1_reg_1026[13] <= 1'b0;
    v229_2_addr_1_reg_1026_pp0_iter1_reg[13] <= 1'b0;
    v229_2_addr_1_reg_1026_pp0_iter2_reg[13] <= 1'b0;
    v229_3_addr_1_reg_1031[13] <= 1'b0;
    v229_3_addr_1_reg_1031_pp0_iter1_reg[13] <= 1'b0;
    v229_3_addr_1_reg_1031_pp0_iter2_reg[13] <= 1'b0;
    or_ln_reg_1037[0] <= 1'b1;
    v229_0_addr_2_reg_1047[13] <= 1'b0;
    v229_0_addr_2_reg_1047_pp0_iter1_reg[13] <= 1'b0;
    v229_0_addr_2_reg_1047_pp0_iter2_reg[13] <= 1'b0;
    v229_1_addr_2_reg_1052[13] <= 1'b0;
    v229_1_addr_2_reg_1052_pp0_iter1_reg[13] <= 1'b0;
    v229_1_addr_2_reg_1052_pp0_iter2_reg[13] <= 1'b0;
    v229_2_addr_2_reg_1057[13] <= 1'b0;
    v229_2_addr_2_reg_1057_pp0_iter1_reg[13] <= 1'b0;
    v229_2_addr_2_reg_1057_pp0_iter2_reg[13] <= 1'b0;
    v229_3_addr_2_reg_1062[13] <= 1'b0;
    v229_3_addr_2_reg_1062_pp0_iter1_reg[13] <= 1'b0;
    v229_3_addr_2_reg_1062_pp0_iter2_reg[13] <= 1'b0;
end
endmodule 