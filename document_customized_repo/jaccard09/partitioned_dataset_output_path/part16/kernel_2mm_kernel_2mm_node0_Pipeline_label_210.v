
module kernel_2mm_kernel_2mm_node0_Pipeline_label_210 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,mul_ln75,mul_ln127,mul_ln140,v4,cmp11,v11_1,v24_1,v35_1,v46_1,v57_1,v68_1,v79_1,v90_1,v101_1,grp_fu_23405_p_din0,grp_fu_23405_p_din1,grp_fu_23405_p_opcode,grp_fu_23405_p_dout0,grp_fu_23405_p_ce,grp_fu_23409_p_din0,grp_fu_23409_p_din1,grp_fu_23409_p_opcode,grp_fu_23409_p_dout0,grp_fu_23409_p_ce,grp_fu_23413_p_din0,grp_fu_23413_p_din1,grp_fu_23413_p_opcode,grp_fu_23413_p_dout0,grp_fu_23413_p_ce,grp_fu_23417_p_din0,grp_fu_23417_p_din1,grp_fu_23417_p_dout0,grp_fu_23417_p_ce,grp_fu_23421_p_din0,grp_fu_23421_p_din1,grp_fu_23421_p_dout0,grp_fu_23421_p_ce,grp_fu_23425_p_din0,grp_fu_23425_p_din1,grp_fu_23425_p_dout0,grp_fu_23425_p_ce,grp_fu_23429_p_din0,grp_fu_23429_p_din1,grp_fu_23429_p_dout0,grp_fu_23429_p_ce,grp_fu_23433_p_din0,grp_fu_23433_p_din1,grp_fu_23433_p_dout0,grp_fu_23433_p_ce,grp_fu_23437_p_din0,grp_fu_23437_p_din1,grp_fu_23437_p_dout0,grp_fu_23437_p_ce);  
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
input  [13:0] mul_ln75;
input  [13:0] mul_ln127;
input  [13:0] mul_ln140;
input  [31:0] v4;
input  [0:0] cmp11;
input  [31:0] v11_1;
input  [31:0] v24_1;
input  [31:0] v35_1;
input  [31:0] v46_1;
input  [31:0] v57_1;
input  [31:0] v68_1;
input  [31:0] v79_1;
input  [31:0] v90_1;
input  [31:0] v101_1;
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
reg   [0:0] icmp_ln33_reg_982;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_413;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_417;
reg   [31:0] reg_421;
reg   [31:0] reg_425;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_429;
reg   [31:0] reg_433;
reg   [31:0] reg_437;
reg   [31:0] reg_441;
reg   [31:0] reg_445;
reg   [7:0] v7_reg_977;
wire   [0:0] icmp_ln33_fu_457_p2;
reg   [13:0] v229_0_addr_7_reg_991;
reg   [13:0] v229_0_addr_7_reg_991_pp0_iter1_reg;
reg   [13:0] v229_0_addr_7_reg_991_pp0_iter2_reg;
wire   [13:0] add_ln127_fu_496_p2;
reg   [13:0] add_ln127_reg_997;
reg   [13:0] v229_1_addr_5_reg_1002;
reg   [13:0] v229_1_addr_5_reg_1002_pp0_iter1_reg;
reg   [13:0] v229_1_addr_5_reg_1002_pp0_iter2_reg;
reg   [13:0] v229_1_addr_7_reg_1007;
reg   [13:0] v229_1_addr_7_reg_1007_pp0_iter1_reg;
reg   [13:0] v229_1_addr_7_reg_1007_pp0_iter2_reg;
reg   [13:0] v229_2_addr_5_reg_1012;
reg   [13:0] v229_2_addr_5_reg_1012_pp0_iter1_reg;
reg   [13:0] v229_2_addr_5_reg_1012_pp0_iter2_reg;
reg   [13:0] v229_2_addr_7_reg_1017;
reg   [13:0] v229_2_addr_7_reg_1017_pp0_iter1_reg;
reg   [13:0] v229_2_addr_7_reg_1017_pp0_iter2_reg;
reg   [13:0] v229_3_addr_5_reg_1022;
reg   [13:0] v229_3_addr_5_reg_1022_pp0_iter1_reg;
reg   [13:0] v229_3_addr_5_reg_1022_pp0_iter2_reg;
reg   [13:0] v229_3_addr_7_reg_1027;
reg   [13:0] v229_3_addr_7_reg_1027_pp0_iter1_reg;
reg   [13:0] v229_3_addr_7_reg_1027_pp0_iter2_reg;
reg   [13:0] v229_0_addr_8_reg_1037;
reg   [13:0] v229_0_addr_8_reg_1037_pp0_iter1_reg;
reg   [13:0] v229_0_addr_8_reg_1037_pp0_iter2_reg;
wire   [13:0] add_ln134_fu_566_p2;
reg   [13:0] add_ln134_reg_1043;
reg   [13:0] v229_1_addr_6_reg_1048;
reg   [13:0] v229_1_addr_6_reg_1048_pp0_iter1_reg;
reg   [13:0] v229_1_addr_6_reg_1048_pp0_iter2_reg;
reg   [13:0] v229_1_addr_8_reg_1053;
reg   [13:0] v229_1_addr_8_reg_1053_pp0_iter1_reg;
reg   [13:0] v229_1_addr_8_reg_1053_pp0_iter2_reg;
reg   [13:0] v229_2_addr_6_reg_1058;
reg   [13:0] v229_2_addr_6_reg_1058_pp0_iter1_reg;
reg   [13:0] v229_2_addr_6_reg_1058_pp0_iter2_reg;
reg   [13:0] v229_2_addr_8_reg_1063;
reg   [13:0] v229_2_addr_8_reg_1063_pp0_iter1_reg;
reg   [13:0] v229_2_addr_8_reg_1063_pp0_iter2_reg;
reg   [13:0] v229_3_addr_6_reg_1068;
reg   [13:0] v229_3_addr_6_reg_1068_pp0_iter1_reg;
reg   [13:0] v229_3_addr_6_reg_1068_pp0_iter2_reg;
reg   [13:0] v229_3_addr_8_reg_1073;
reg   [13:0] v229_3_addr_8_reg_1073_pp0_iter1_reg;
reg   [13:0] v229_3_addr_8_reg_1073_pp0_iter2_reg;
reg   [13:0] v229_0_addr_9_reg_1078;
reg   [13:0] v229_0_addr_9_reg_1078_pp0_iter1_reg;
reg   [13:0] v229_0_addr_9_reg_1078_pp0_iter2_reg;
reg   [13:0] v229_1_addr_9_reg_1083;
reg   [13:0] v229_1_addr_9_reg_1083_pp0_iter1_reg;
reg   [13:0] v229_1_addr_9_reg_1083_pp0_iter2_reg;
reg   [13:0] v229_1_addr_9_reg_1083_pp0_iter3_reg;
reg   [31:0] v228_0_load_2_reg_1088;
reg   [13:0] v229_0_addr_10_reg_1093;
reg   [13:0] v229_0_addr_10_reg_1093_pp0_iter1_reg;
reg   [13:0] v229_0_addr_10_reg_1093_pp0_iter2_reg;
reg   [13:0] v229_0_addr_10_reg_1093_pp0_iter3_reg;
reg   [13:0] v229_1_addr_10_reg_1098;
reg   [13:0] v229_1_addr_10_reg_1098_pp0_iter1_reg;
reg   [13:0] v229_1_addr_10_reg_1098_pp0_iter2_reg;
reg   [13:0] v229_1_addr_10_reg_1098_pp0_iter3_reg;
reg   [31:0] v228_0_load_3_reg_1103;
reg   [31:0] v229_2_load_5_reg_1108;
reg   [31:0] v229_3_load_4_reg_1113;
reg   [31:0] v229_3_load_5_reg_1118;
reg   [31:0] v229_0_load_6_reg_1123;
reg   [31:0] v229_0_load_7_reg_1128;
wire   [31:0] v8_fu_595_p1;
reg   [31:0] v8_reg_1133;
wire   [31:0] v12_fu_600_p1;
reg   [31:0] v12_reg_1139;
wire   [31:0] v15_fu_605_p1;
reg   [31:0] v15_reg_1146;
wire   [31:0] v18_fu_610_p1;
reg   [31:0] v18_reg_1152;
wire   [31:0] v21_fu_614_p1;
reg   [31:0] v21_reg_1159;
reg   [31:0] v229_2_load_7_reg_1165;
reg   [31:0] v229_3_load_6_reg_1170;
reg   [31:0] v229_3_load_7_reg_1175;
reg   [31:0] v229_0_load_8_reg_1180;
reg   [31:0] v229_0_load_9_reg_1185;
wire   [31:0] v27_fu_619_p1;
reg   [31:0] v27_reg_1190;
wire   [31:0] v32_fu_623_p1;
reg   [31:0] v32_reg_1196;
wire   [31:0] v38_fu_627_p1;
reg   [31:0] v38_reg_1202;
reg   [31:0] v229_1_load_8_reg_1208;
reg   [31:0] v229_1_load_9_reg_1213;
wire   [31:0] v43_fu_631_p1;
reg   [31:0] v43_reg_1218;
wire   [31:0] v49_fu_635_p1;
reg   [31:0] v49_reg_1224;
wire   [31:0] v54_fu_639_p1;
reg   [31:0] v54_reg_1230;
wire   [31:0] v10_fu_644_p3;
reg   [31:0] v10_reg_1236;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v13_reg_1241;
wire   [31:0] v17_fu_650_p3;
reg   [31:0] v17_reg_1246;
reg   [31:0] v19_reg_1251;
wire   [31:0] v23_fu_656_p3;
reg   [31:0] v23_reg_1256;
reg   [31:0] v25_reg_1261;
wire   [31:0] v60_fu_662_p1;
reg   [31:0] v60_reg_1266;
wire   [31:0] v65_fu_667_p1;
reg   [31:0] v65_reg_1272;
wire   [31:0] v71_fu_672_p1;
reg   [31:0] v71_reg_1278;
wire   [31:0] v29_fu_686_p3;
reg   [31:0] v29_reg_1284;
reg   [31:0] v30_reg_1289;
wire   [31:0] v34_fu_692_p3;
reg   [31:0] v34_reg_1294;
reg   [31:0] v36_reg_1299;
wire   [31:0] v40_fu_698_p3;
reg   [31:0] v40_reg_1304;
reg   [31:0] v41_reg_1309;
wire   [31:0] v76_fu_704_p1;
reg   [31:0] v76_reg_1314;
wire   [31:0] v82_fu_708_p1;
reg   [31:0] v82_reg_1320;
wire   [31:0] v87_fu_712_p1;
reg   [31:0] v87_reg_1326;
wire   [31:0] v45_fu_716_p3;
reg   [31:0] v45_reg_1332;
reg   [31:0] v47_reg_1337;
wire   [31:0] v51_fu_722_p3;
reg   [31:0] v51_reg_1342;
reg   [31:0] v52_reg_1347;
wire   [31:0] v56_fu_728_p3;
reg   [31:0] v56_reg_1352;
reg   [31:0] v58_reg_1357;
wire   [31:0] v93_fu_734_p1;
reg   [31:0] v93_reg_1362;
wire   [31:0] v98_fu_738_p1;
reg   [31:0] v98_reg_1368;
wire   [31:0] v104_fu_742_p1;
reg   [31:0] v104_reg_1374;
wire   [31:0] v62_fu_746_p3;
reg   [31:0] v62_reg_1380;
reg   [31:0] v63_reg_1385;
wire   [31:0] v67_fu_752_p3;
reg   [31:0] v67_reg_1390;
reg   [31:0] v69_reg_1395;
wire   [31:0] v73_fu_758_p3;
reg   [31:0] v73_reg_1400;
reg   [31:0] v74_reg_1405;
wire   [31:0] v78_fu_764_p3;
reg   [31:0] v78_reg_1410;
reg   [31:0] v80_reg_1415;
wire   [31:0] v84_fu_770_p3;
reg   [31:0] v84_reg_1420;
reg   [31:0] v85_reg_1425;
wire   [31:0] v89_fu_776_p3;
reg   [31:0] v89_reg_1430;
reg   [31:0] v91_reg_1435;
wire   [31:0] v95_fu_782_p3;
reg   [31:0] v95_reg_1440;
reg   [31:0] v96_reg_1445;
wire   [31:0] v100_fu_788_p3;
reg   [31:0] v100_reg_1450;
reg   [31:0] v102_reg_1455;
wire   [31:0] v106_fu_794_p3;
reg   [31:0] v106_reg_1460;
reg   [31:0] v107_reg_1465;
reg   [31:0] v97_reg_1470;
reg   [31:0] v103_reg_1475;
reg   [31:0] v108_reg_1480;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_31_fu_477_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_488_p1;
wire   [63:0] zext_ln34_fu_508_p1;
wire   [63:0] zext_ln45_31_fu_547_p1;
wire   [63:0] zext_ln82_fu_558_p1;
wire   [63:0] zext_ln42_fu_578_p1;
wire   [63:0] zext_ln127_fu_585_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln134_fu_590_p1;
reg   [7:0] v7_1_fu_86;
wire   [7:0] add_ln33_fu_676_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7;
reg    v229_1_ce1_local;
reg   [13:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [13:0] v229_1_address0_local;
wire    ap_block_pp0_stage2;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln41_fu_820_p1;
wire    ap_block_pp0_stage3;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln48_fu_825_p1;
wire   [31:0] bitcast_ln94_fu_840_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln100_fu_845_p1;
wire   [31:0] bitcast_ln146_fu_879_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln152_fu_883_p1;
reg    v228_0_ce1_local;
reg    v228_0_ce0_local;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln55_fu_800_p1;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln61_fu_805_p1;
wire   [31:0] bitcast_ln107_fu_850_p1;
wire   [31:0] bitcast_ln113_fu_855_p1;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln68_fu_810_p1;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln74_fu_815_p1;
wire   [31:0] bitcast_ln120_fu_860_p1;
wire   [31:0] bitcast_ln126_fu_865_p1;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln81_fu_830_p1;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln87_fu_835_p1;
wire   [31:0] bitcast_ln133_fu_870_p1;
wire   [31:0] bitcast_ln139_fu_875_p1;
reg   [31:0] grp_fu_377_p0;
reg   [31:0] grp_fu_377_p1;
reg   [31:0] grp_fu_381_p0;
reg   [31:0] grp_fu_381_p1;
reg   [31:0] grp_fu_385_p0;
reg   [31:0] grp_fu_385_p1;
reg   [31:0] grp_fu_389_p0;
reg   [31:0] grp_fu_393_p0;
reg   [31:0] grp_fu_393_p1;
reg   [31:0] grp_fu_397_p0;
reg   [31:0] grp_fu_401_p0;
reg   [31:0] grp_fu_401_p1;
reg   [31:0] grp_fu_405_p0;
reg   [31:0] grp_fu_409_p0;
reg   [31:0] grp_fu_409_p1;
wire   [14:0] zext_ln38_30_fu_467_p1;
wire   [14:0] add_ln38_fu_471_p2;
wire   [13:0] zext_ln38_fu_463_p1;
wire   [13:0] add_ln75_fu_482_p2;
wire   [13:0] add_ln34_fu_502_p2;
wire   [6:0] tmp_s_fu_515_p4;
wire   [7:0] or_ln42_1_fu_525_p3;
wire   [14:0] zext_ln45_30_fu_537_p1;
wire   [14:0] add_ln45_fu_541_p2;
wire   [13:0] zext_ln45_fu_533_p1;
wire   [13:0] add_ln82_fu_552_p2;
wire   [13:0] add_ln42_fu_572_p2;
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
#0 v7_1_fu_86 = 8'd0;
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
        v7_1_fu_86 <= 8'd0;
    end else if (((icmp_ln33_reg_982 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_1_fu_86 <= add_ln33_fu_676_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln127_reg_997 <= add_ln127_fu_496_p2;
        add_ln134_reg_1043 <= add_ln134_fu_566_p2;
        icmp_ln33_reg_982 <= icmp_ln33_fu_457_p2;
        v229_0_addr_7_reg_991 <= zext_ln75_fu_488_p1;
        v229_0_addr_7_reg_991_pp0_iter1_reg <= v229_0_addr_7_reg_991;
        v229_0_addr_7_reg_991_pp0_iter2_reg <= v229_0_addr_7_reg_991_pp0_iter1_reg;
        v229_0_addr_8_reg_1037 <= zext_ln82_fu_558_p1;
        v229_0_addr_8_reg_1037_pp0_iter1_reg <= v229_0_addr_8_reg_1037;
        v229_0_addr_8_reg_1037_pp0_iter2_reg <= v229_0_addr_8_reg_1037_pp0_iter1_reg;
        v229_1_addr_5_reg_1002 <= zext_ln34_fu_508_p1;
        v229_1_addr_5_reg_1002_pp0_iter1_reg <= v229_1_addr_5_reg_1002;
        v229_1_addr_5_reg_1002_pp0_iter2_reg <= v229_1_addr_5_reg_1002_pp0_iter1_reg;
        v229_1_addr_6_reg_1048 <= zext_ln42_fu_578_p1;
        v229_1_addr_6_reg_1048_pp0_iter1_reg <= v229_1_addr_6_reg_1048;
        v229_1_addr_6_reg_1048_pp0_iter2_reg <= v229_1_addr_6_reg_1048_pp0_iter1_reg;
        v229_1_addr_7_reg_1007 <= zext_ln75_fu_488_p1;
        v229_1_addr_7_reg_1007_pp0_iter1_reg <= v229_1_addr_7_reg_1007;
        v229_1_addr_7_reg_1007_pp0_iter2_reg <= v229_1_addr_7_reg_1007_pp0_iter1_reg;
        v229_1_addr_8_reg_1053 <= zext_ln82_fu_558_p1;
        v229_1_addr_8_reg_1053_pp0_iter1_reg <= v229_1_addr_8_reg_1053;
        v229_1_addr_8_reg_1053_pp0_iter2_reg <= v229_1_addr_8_reg_1053_pp0_iter1_reg;
        v229_2_addr_5_reg_1012 <= zext_ln34_fu_508_p1;
        v229_2_addr_5_reg_1012_pp0_iter1_reg <= v229_2_addr_5_reg_1012;
        v229_2_addr_5_reg_1012_pp0_iter2_reg <= v229_2_addr_5_reg_1012_pp0_iter1_reg;
        v229_2_addr_6_reg_1058 <= zext_ln42_fu_578_p1;
        v229_2_addr_6_reg_1058_pp0_iter1_reg <= v229_2_addr_6_reg_1058;
        v229_2_addr_6_reg_1058_pp0_iter2_reg <= v229_2_addr_6_reg_1058_pp0_iter1_reg;
        v229_2_addr_7_reg_1017 <= zext_ln75_fu_488_p1;
        v229_2_addr_7_reg_1017_pp0_iter1_reg <= v229_2_addr_7_reg_1017;
        v229_2_addr_7_reg_1017_pp0_iter2_reg <= v229_2_addr_7_reg_1017_pp0_iter1_reg;
        v229_2_addr_8_reg_1063 <= zext_ln82_fu_558_p1;
        v229_2_addr_8_reg_1063_pp0_iter1_reg <= v229_2_addr_8_reg_1063;
        v229_2_addr_8_reg_1063_pp0_iter2_reg <= v229_2_addr_8_reg_1063_pp0_iter1_reg;
        v229_3_addr_5_reg_1022 <= zext_ln34_fu_508_p1;
        v229_3_addr_5_reg_1022_pp0_iter1_reg <= v229_3_addr_5_reg_1022;
        v229_3_addr_5_reg_1022_pp0_iter2_reg <= v229_3_addr_5_reg_1022_pp0_iter1_reg;
        v229_3_addr_6_reg_1068 <= zext_ln42_fu_578_p1;
        v229_3_addr_6_reg_1068_pp0_iter1_reg <= v229_3_addr_6_reg_1068;
        v229_3_addr_6_reg_1068_pp0_iter2_reg <= v229_3_addr_6_reg_1068_pp0_iter1_reg;
        v229_3_addr_7_reg_1027 <= zext_ln75_fu_488_p1;
        v229_3_addr_7_reg_1027_pp0_iter1_reg <= v229_3_addr_7_reg_1027;
        v229_3_addr_7_reg_1027_pp0_iter2_reg <= v229_3_addr_7_reg_1027_pp0_iter1_reg;
        v229_3_addr_8_reg_1073 <= zext_ln82_fu_558_p1;
        v229_3_addr_8_reg_1073_pp0_iter1_reg <= v229_3_addr_8_reg_1073;
        v229_3_addr_8_reg_1073_pp0_iter2_reg <= v229_3_addr_8_reg_1073_pp0_iter1_reg;
        v29_reg_1284 <= v29_fu_686_p3;
        v34_reg_1294 <= v34_fu_692_p3;
        v40_reg_1304 <= v40_fu_698_p3;
        v76_reg_1314 <= v76_fu_704_p1;
        v7_reg_977 <= ap_sig_allocacmp_v7;
        v82_reg_1320 <= v82_fu_708_p1;
        v87_reg_1326 <= v87_fu_712_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v10_reg_1236 <= v10_fu_644_p3;
        v17_reg_1246 <= v17_fu_650_p3;
        v23_reg_1256 <= v23_fu_656_p3;
        v60_reg_1266 <= v60_fu_662_p1;
        v65_reg_1272 <= v65_fu_667_p1;
        v71_reg_1278 <= v71_fu_672_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_413 <= v229_1_q1;
        reg_417 <= v229_1_q0;
        reg_421 <= v229_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_425 <= grp_fu_23405_p_dout0;
        reg_429 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_433 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_437 <= grp_fu_23405_p_dout0;
        reg_441 <= grp_fu_23409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_445 <= grp_fu_23413_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v100_reg_1450 <= v100_fu_788_p3;
        v106_reg_1460 <= v106_fu_794_p3;
        v43_reg_1218 <= v43_fu_631_p1;
        v49_reg_1224 <= v49_fu_635_p1;
        v54_reg_1230 <= v54_fu_639_p1;
        v95_reg_1440 <= v95_fu_782_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1455 <= grp_fu_23429_p_dout0;
        v107_reg_1465 <= grp_fu_23437_p_dout0;
        v96_reg_1445 <= grp_fu_23421_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1475 <= grp_fu_23409_p_dout0;
        v108_reg_1480 <= grp_fu_23413_p_dout0;
        v97_reg_1470 <= grp_fu_23405_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v104_reg_1374 <= v104_fu_742_p1;
        v229_0_addr_10_reg_1093 <= zext_ln134_fu_590_p1;
        v229_0_addr_10_reg_1093_pp0_iter1_reg <= v229_0_addr_10_reg_1093;
        v229_0_addr_10_reg_1093_pp0_iter2_reg <= v229_0_addr_10_reg_1093_pp0_iter1_reg;
        v229_0_addr_10_reg_1093_pp0_iter3_reg <= v229_0_addr_10_reg_1093_pp0_iter2_reg;
        v229_0_addr_9_reg_1078 <= zext_ln127_fu_585_p1;
        v229_0_addr_9_reg_1078_pp0_iter1_reg <= v229_0_addr_9_reg_1078;
        v229_0_addr_9_reg_1078_pp0_iter2_reg <= v229_0_addr_9_reg_1078_pp0_iter1_reg;
        v229_1_addr_10_reg_1098 <= zext_ln134_fu_590_p1;
        v229_1_addr_10_reg_1098_pp0_iter1_reg <= v229_1_addr_10_reg_1098;
        v229_1_addr_10_reg_1098_pp0_iter2_reg <= v229_1_addr_10_reg_1098_pp0_iter1_reg;
        v229_1_addr_10_reg_1098_pp0_iter3_reg <= v229_1_addr_10_reg_1098_pp0_iter2_reg;
        v229_1_addr_9_reg_1083 <= zext_ln127_fu_585_p1;
        v229_1_addr_9_reg_1083_pp0_iter1_reg <= v229_1_addr_9_reg_1083;
        v229_1_addr_9_reg_1083_pp0_iter2_reg <= v229_1_addr_9_reg_1083_pp0_iter1_reg;
        v229_1_addr_9_reg_1083_pp0_iter3_reg <= v229_1_addr_9_reg_1083_pp0_iter2_reg;
        v45_reg_1332 <= v45_fu_716_p3;
        v51_reg_1342 <= v51_fu_722_p3;
        v56_reg_1352 <= v56_fu_728_p3;
        v93_reg_1362 <= v93_fu_734_p1;
        v98_reg_1368 <= v98_fu_738_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v12_reg_1139 <= v12_fu_600_p1;
        v15_reg_1146 <= v15_fu_605_p1;
        v18_reg_1152 <= v18_fu_610_p1;
        v21_reg_1159 <= v21_fu_614_p1;
        v62_reg_1380 <= v62_fu_746_p3;
        v67_reg_1390 <= v67_fu_752_p3;
        v73_reg_1400 <= v73_fu_758_p3;
        v8_reg_1133 <= v8_fu_595_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_1241 <= grp_fu_23421_p_dout0;
        v19_reg_1251 <= grp_fu_23429_p_dout0;
        v25_reg_1261 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_0_load_2_reg_1088 <= v228_0_q1;
        v228_0_load_3_reg_1103 <= v228_0_q0;
        v229_0_load_6_reg_1123 <= v229_0_q1;
        v229_0_load_7_reg_1128 <= v229_0_q0;
        v229_2_load_5_reg_1108 <= v229_2_q0;
        v229_3_load_4_reg_1113 <= v229_3_q1;
        v229_3_load_5_reg_1118 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_load_8_reg_1180 <= v229_0_q1;
        v229_0_load_9_reg_1185 <= v229_0_q0;
        v229_2_load_7_reg_1165 <= v229_2_q0;
        v229_3_load_6_reg_1170 <= v229_3_q1;
        v229_3_load_7_reg_1175 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_load_8_reg_1208 <= v229_1_q1;
        v229_1_load_9_reg_1213 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_reg_1190 <= v27_fu_619_p1;
        v32_reg_1196 <= v32_fu_623_p1;
        v38_reg_1202 <= v38_fu_627_p1;
        v78_reg_1410 <= v78_fu_764_p3;
        v84_reg_1420 <= v84_fu_770_p3;
        v89_reg_1430 <= v89_fu_776_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1289 <= grp_fu_23421_p_dout0;
        v36_reg_1299 <= grp_fu_23429_p_dout0;
        v41_reg_1309 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1337 <= grp_fu_23421_p_dout0;
        v52_reg_1347 <= grp_fu_23429_p_dout0;
        v58_reg_1357 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v63_reg_1385 <= grp_fu_23421_p_dout0;
        v69_reg_1395 <= grp_fu_23429_p_dout0;
        v74_reg_1405 <= grp_fu_23437_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v80_reg_1415 <= grp_fu_23421_p_dout0;
        v85_reg_1425 <= grp_fu_23429_p_dout0;
        v91_reg_1435 <= grp_fu_23437_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_982 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v7 = v7_1_fu_86;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_377_p0 = v95_reg_1440;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_377_p0 = v78_reg_1410;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_377_p0 = v62_reg_1380;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_377_p0 = v45_reg_1332;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_377_p0 = v29_reg_1284;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_377_p0 = v10_reg_1236;
        end else begin
            grp_fu_377_p0 = 'bx;
        end
    end else begin
        grp_fu_377_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_377_p1 = v96_reg_1445;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_377_p1 = v80_reg_1415;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_377_p1 = v63_reg_1385;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_377_p1 = v47_reg_1337;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_377_p1 = v30_reg_1289;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_377_p1 = v13_reg_1241;
        end else begin
            grp_fu_377_p1 = 'bx;
        end
    end else begin
        grp_fu_377_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_381_p0 = v100_reg_1450;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_381_p0 = v84_reg_1420;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_381_p0 = v67_reg_1390;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_381_p0 = v51_reg_1342;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_381_p0 = v34_reg_1294;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_381_p0 = v17_reg_1246;
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
            grp_fu_381_p1 = v102_reg_1455;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_381_p1 = v85_reg_1425;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_381_p1 = v69_reg_1395;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_381_p1 = v52_reg_1347;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_381_p1 = v36_reg_1299;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_381_p1 = v19_reg_1251;
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
            grp_fu_385_p0 = v106_reg_1460;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_385_p0 = v89_reg_1430;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_385_p0 = v73_reg_1400;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_385_p0 = v56_reg_1352;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_385_p0 = v40_reg_1304;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_385_p0 = v23_reg_1256;
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
            grp_fu_385_p1 = v107_reg_1465;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_385_p1 = v91_reg_1435;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_385_p1 = v74_reg_1405;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_385_p1 = v58_reg_1357;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_385_p1 = v41_reg_1309;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_385_p1 = v25_reg_1261;
        end else begin
            grp_fu_385_p1 = 'bx;
        end
    end else begin
        grp_fu_385_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_389_p0 = v93_fu_734_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_389_p0 = v76_fu_704_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_389_p0 = v60_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_389_p0 = v43_fu_631_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_389_p0 = v27_fu_619_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_389_p0 = v8_fu_595_p1;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_393_p0 = v90_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_393_p0 = v79_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_393_p0 = v57_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_393_p0 = v46_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_393_p0 = v24_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_393_p0 = v11_1;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_393_p1 = v12_reg_1139;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_393_p1 = v18_reg_1152;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_393_p1 = v12_fu_600_p1;
    end else begin
        grp_fu_393_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_397_p0 = v98_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_397_p0 = v82_fu_708_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_397_p0 = v65_fu_667_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_397_p0 = v49_fu_635_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_397_p0 = v32_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_397_p0 = v15_fu_605_p1;
    end else begin
        grp_fu_397_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_401_p0 = v101_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_401_p0 = v79_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_401_p0 = v68_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_401_p0 = v46_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_401_p0 = v35_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_401_p0 = v11_1;
    end else begin
        grp_fu_401_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_401_p1 = v18_reg_1152;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_401_p1 = v12_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_401_p1 = v18_fu_610_p1;
    end else begin
        grp_fu_401_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p0 = v104_fu_742_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p0 = v87_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_405_p0 = v71_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_405_p0 = v54_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p0 = v38_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p0 = v21_fu_614_p1;
    end else begin
        grp_fu_405_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p0 = v101_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p0 = v90_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_409_p0 = v68_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_409_p0 = v57_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p0 = v35_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p0 = v24_1;
    end else begin
        grp_fu_409_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_409_p1 = v12_reg_1139;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_409_p1 = v18_reg_1152;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p1 = v12_fu_600_p1;
    end else begin
        grp_fu_409_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_10_reg_1093_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_7_reg_991_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln134_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln82_fu_558_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address1_local = v229_0_addr_9_reg_1078_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_8_reg_1037_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln127_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln75_fu_488_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln139_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln81_fu_830_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_0_d1_local = bitcast_ln133_fu_870_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_0_d1_local = bitcast_ln87_fu_835_p1;
        end else begin
            v229_0_d1_local = 'bx;
        end
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address0_local = v229_1_addr_10_reg_1098_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address0_local = v229_1_addr_8_reg_1053_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address0_local = v229_1_addr_6_reg_1048_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_10_reg_1098;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_8_reg_1053;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_578_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address1_local = v229_1_addr_9_reg_1083_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_7_reg_1007_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address1_local = v229_1_addr_5_reg_1002_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_9_reg_1083;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_7_reg_1007;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_508_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_d0_local = bitcast_ln152_fu_883_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d0_local = bitcast_ln100_fu_845_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d0_local = bitcast_ln48_fu_825_p1;
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_d1_local = bitcast_ln146_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d1_local = bitcast_ln94_fu_840_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d1_local = bitcast_ln41_fu_820_p1;
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_address0_local = v229_2_addr_8_reg_1063_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_6_reg_1058_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = v229_2_addr_8_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_578_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_address1_local = v229_2_addr_7_reg_1017_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_5_reg_1012_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = v229_2_addr_7_reg_1017;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_508_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_2_d0_local = bitcast_ln113_fu_855_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d0_local = bitcast_ln61_fu_805_p1;
        end else begin
            v229_2_d0_local = 'bx;
        end
    end else begin
        v229_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_2_d1_local = bitcast_ln107_fu_850_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d1_local = bitcast_ln55_fu_800_p1;
        end else begin
            v229_2_d1_local = 'bx;
        end
    end else begin
        v229_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address0_local = v229_3_addr_8_reg_1073_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_6_reg_1068_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = v229_3_addr_8_reg_1073;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_578_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address1_local = v229_3_addr_7_reg_1027_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address1_local = v229_3_addr_5_reg_1022_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = v229_3_addr_7_reg_1027;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_508_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d0_local = bitcast_ln126_fu_865_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_3_d0_local = bitcast_ln74_fu_815_p1;
        end else begin
            v229_3_d0_local = 'bx;
        end
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d1_local = bitcast_ln120_fu_860_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_3_d1_local = bitcast_ln68_fu_810_p1;
        end else begin
            v229_3_d1_local = 'bx;
        end
    end else begin
        v229_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln127_fu_496_p2 = (mul_ln127 + zext_ln38_fu_463_p1);
assign add_ln134_fu_566_p2 = (mul_ln127 + zext_ln45_fu_533_p1);
assign add_ln33_fu_676_p2 = (v7_reg_977 + 8'd2);
assign add_ln34_fu_502_p2 = (mul_ln140 + zext_ln38_fu_463_p1);
assign add_ln38_fu_471_p2 = (mul_ln38 + zext_ln38_30_fu_467_p1);
assign add_ln42_fu_572_p2 = (mul_ln140 + zext_ln45_fu_533_p1);
assign add_ln45_fu_541_p2 = (mul_ln38 + zext_ln45_30_fu_537_p1);
assign add_ln75_fu_482_p2 = (mul_ln75 + zext_ln38_fu_463_p1);
assign add_ln82_fu_552_p2 = (mul_ln75 + zext_ln45_fu_533_p1);
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
assign bitcast_ln100_fu_845_p1 = reg_425;
assign bitcast_ln107_fu_850_p1 = reg_429;
assign bitcast_ln113_fu_855_p1 = reg_445;
assign bitcast_ln120_fu_860_p1 = reg_425;
assign bitcast_ln126_fu_865_p1 = reg_429;
assign bitcast_ln133_fu_870_p1 = reg_433;
assign bitcast_ln139_fu_875_p1 = v97_reg_1470;
assign bitcast_ln146_fu_879_p1 = v103_reg_1475;
assign bitcast_ln152_fu_883_p1 = v108_reg_1480;
assign bitcast_ln41_fu_820_p1 = reg_425;
assign bitcast_ln48_fu_825_p1 = reg_429;
assign bitcast_ln55_fu_800_p1 = reg_433;
assign bitcast_ln61_fu_805_p1 = reg_437;
assign bitcast_ln68_fu_810_p1 = reg_441;
assign bitcast_ln74_fu_815_p1 = reg_445;
assign bitcast_ln81_fu_830_p1 = reg_437;
assign bitcast_ln87_fu_835_p1 = reg_441;
assign bitcast_ln94_fu_840_p1 = reg_433;
assign grp_fu_23405_p_ce = 1'b1;
assign grp_fu_23405_p_din0 = grp_fu_377_p0;
assign grp_fu_23405_p_din1 = grp_fu_377_p1;
assign grp_fu_23405_p_opcode = 2'd0;
assign grp_fu_23409_p_ce = 1'b1;
assign grp_fu_23409_p_din0 = grp_fu_381_p0;
assign grp_fu_23409_p_din1 = grp_fu_381_p1;
assign grp_fu_23409_p_opcode = 2'd0;
assign grp_fu_23413_p_ce = 1'b1;
assign grp_fu_23413_p_din0 = grp_fu_385_p0;
assign grp_fu_23413_p_din1 = grp_fu_385_p1;
assign grp_fu_23413_p_opcode = 2'd0;
assign grp_fu_23417_p_ce = 1'b1;
assign grp_fu_23417_p_din0 = grp_fu_389_p0;
assign grp_fu_23417_p_din1 = v4;
assign grp_fu_23421_p_ce = 1'b1;
assign grp_fu_23421_p_din0 = grp_fu_393_p0;
assign grp_fu_23421_p_din1 = grp_fu_393_p1;
assign grp_fu_23425_p_ce = 1'b1;
assign grp_fu_23425_p_din0 = grp_fu_397_p0;
assign grp_fu_23425_p_din1 = v4;
assign grp_fu_23429_p_ce = 1'b1;
assign grp_fu_23429_p_din0 = grp_fu_401_p0;
assign grp_fu_23429_p_din1 = grp_fu_401_p1;
assign grp_fu_23433_p_ce = 1'b1;
assign grp_fu_23433_p_din0 = grp_fu_405_p0;
assign grp_fu_23433_p_din1 = v4;
assign grp_fu_23437_p_ce = 1'b1;
assign grp_fu_23437_p_din0 = grp_fu_409_p0;
assign grp_fu_23437_p_din1 = grp_fu_409_p1;
assign icmp_ln33_fu_457_p2 = ((ap_sig_allocacmp_v7 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln42_1_fu_525_p3 = {{tmp_s_fu_515_p4}, {1'd1}};
assign tmp_s_fu_515_p4 = {{ap_sig_allocacmp_v7[7:1]}};
assign v100_fu_788_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v98_reg_1368);
assign v104_fu_742_p1 = v229_1_load_9_reg_1213;
assign v106_fu_794_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v104_reg_1374);
assign v10_fu_644_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v8_reg_1133);
assign v12_fu_600_p1 = v228_0_load_2_reg_1088;
assign v15_fu_605_p1 = reg_417;
assign v17_fu_650_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v15_reg_1146);
assign v18_fu_610_p1 = v228_0_load_3_reg_1103;
assign v21_fu_614_p1 = reg_421;
assign v228_0_address0 = zext_ln45_31_fu_547_p1;
assign v228_0_address1 = zext_ln38_31_fu_477_p1;
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
assign v23_fu_656_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v21_reg_1159);
assign v27_fu_619_p1 = v229_2_load_5_reg_1108;
assign v29_fu_686_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v27_reg_1190);
assign v32_fu_623_p1 = v229_3_load_4_reg_1113;
assign v34_fu_692_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v32_reg_1196);
assign v38_fu_627_p1 = v229_3_load_5_reg_1118;
assign v40_fu_698_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v38_reg_1202);
assign v43_fu_631_p1 = v229_0_load_6_reg_1123;
assign v45_fu_716_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v43_reg_1218);
assign v49_fu_635_p1 = v229_0_load_7_reg_1128;
assign v51_fu_722_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v49_reg_1224);
assign v54_fu_639_p1 = reg_413;
assign v56_fu_728_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v54_reg_1230);
assign v60_fu_662_p1 = reg_417;
assign v62_fu_746_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v60_reg_1266);
assign v65_fu_667_p1 = reg_421;
assign v67_fu_752_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v65_reg_1272);
assign v71_fu_672_p1 = v229_2_load_7_reg_1165;
assign v73_fu_758_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v71_reg_1278);
assign v76_fu_704_p1 = v229_3_load_6_reg_1170;
assign v78_fu_764_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v76_reg_1314);
assign v82_fu_708_p1 = v229_3_load_7_reg_1175;
assign v84_fu_770_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23425_p_dout0 : v82_reg_1320);
assign v87_fu_712_p1 = v229_0_load_8_reg_1180;
assign v89_fu_776_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23433_p_dout0 : v87_reg_1326);
assign v8_fu_595_p1 = reg_413;
assign v93_fu_734_p1 = v229_0_load_9_reg_1185;
assign v95_fu_782_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_23417_p_dout0 : v93_reg_1362);
assign v98_fu_738_p1 = v229_1_load_8_reg_1208;
assign zext_ln127_fu_585_p1 = add_ln127_reg_997;
assign zext_ln134_fu_590_p1 = add_ln134_reg_1043;
assign zext_ln34_fu_508_p1 = add_ln34_fu_502_p2;
assign zext_ln38_30_fu_467_p1 = ap_sig_allocacmp_v7;
assign zext_ln38_31_fu_477_p1 = add_ln38_fu_471_p2;
assign zext_ln38_fu_463_p1 = ap_sig_allocacmp_v7;
assign zext_ln42_fu_578_p1 = add_ln42_fu_572_p2;
assign zext_ln45_30_fu_537_p1 = or_ln42_1_fu_525_p3;
assign zext_ln45_31_fu_547_p1 = add_ln45_fu_541_p2;
assign zext_ln45_fu_533_p1 = or_ln42_1_fu_525_p3;
assign zext_ln75_fu_488_p1 = add_ln75_fu_482_p2;
assign zext_ln82_fu_558_p1 = add_ln82_fu_552_p2;
endmodule 
