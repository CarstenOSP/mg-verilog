module kernel_2mm_kernel_2mm_node0_Pipeline_label_25 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,phi_mul,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,mul_ln62,mul_ln114,mul_ln127,v4,cmp11,v11_2,v24_2,v35_2,v46_2,v57_2,v68_2,v79_2,v90_2,v101_2,grp_fu_2126_p_din0,grp_fu_2126_p_din1,grp_fu_2126_p_opcode,grp_fu_2126_p_dout0,grp_fu_2126_p_ce,grp_fu_2130_p_din0,grp_fu_2130_p_din1,grp_fu_2130_p_opcode,grp_fu_2130_p_dout0,grp_fu_2130_p_ce,grp_fu_2134_p_din0,grp_fu_2134_p_din1,grp_fu_2134_p_opcode,grp_fu_2134_p_dout0,grp_fu_2134_p_ce,grp_fu_2138_p_din0,grp_fu_2138_p_din1,grp_fu_2138_p_dout0,grp_fu_2138_p_ce,grp_fu_2142_p_din0,grp_fu_2142_p_din1,grp_fu_2142_p_dout0,grp_fu_2142_p_ce,grp_fu_2146_p_din0,grp_fu_2146_p_din1,grp_fu_2146_p_dout0,grp_fu_2146_p_ce,grp_fu_2150_p_din0,grp_fu_2150_p_din1,grp_fu_2150_p_dout0,grp_fu_2150_p_ce,grp_fu_2154_p_din0,grp_fu_2154_p_din1,grp_fu_2154_p_dout0,grp_fu_2154_p_ce,grp_fu_2158_p_din0,grp_fu_2158_p_din1,grp_fu_2158_p_dout0,grp_fu_2158_p_ce); 
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
input  [15:0] phi_mul;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
input  [13:0] mul_ln62;
input  [13:0] mul_ln114;
input  [13:0] mul_ln127;
input  [31:0] v4;
input  [0:0] cmp11;
input  [31:0] v11_2;
input  [31:0] v24_2;
input  [31:0] v35_2;
input  [31:0] v46_2;
input  [31:0] v57_2;
input  [31:0] v68_2;
input  [31:0] v79_2;
input  [31:0] v90_2;
input  [31:0] v101_2;
output  [31:0] grp_fu_2126_p_din0;
output  [31:0] grp_fu_2126_p_din1;
output  [1:0] grp_fu_2126_p_opcode;
input  [31:0] grp_fu_2126_p_dout0;
output   grp_fu_2126_p_ce;
output  [31:0] grp_fu_2130_p_din0;
output  [31:0] grp_fu_2130_p_din1;
output  [1:0] grp_fu_2130_p_opcode;
input  [31:0] grp_fu_2130_p_dout0;
output   grp_fu_2130_p_ce;
output  [31:0] grp_fu_2134_p_din0;
output  [31:0] grp_fu_2134_p_din1;
output  [1:0] grp_fu_2134_p_opcode;
input  [31:0] grp_fu_2134_p_dout0;
output   grp_fu_2134_p_ce;
output  [31:0] grp_fu_2138_p_din0;
output  [31:0] grp_fu_2138_p_din1;
input  [31:0] grp_fu_2138_p_dout0;
output   grp_fu_2138_p_ce;
output  [31:0] grp_fu_2142_p_din0;
output  [31:0] grp_fu_2142_p_din1;
input  [31:0] grp_fu_2142_p_dout0;
output   grp_fu_2142_p_ce;
output  [31:0] grp_fu_2146_p_din0;
output  [31:0] grp_fu_2146_p_din1;
input  [31:0] grp_fu_2146_p_dout0;
output   grp_fu_2146_p_ce;
output  [31:0] grp_fu_2150_p_din0;
output  [31:0] grp_fu_2150_p_din1;
input  [31:0] grp_fu_2150_p_dout0;
output   grp_fu_2150_p_ce;
output  [31:0] grp_fu_2154_p_din0;
output  [31:0] grp_fu_2154_p_din1;
input  [31:0] grp_fu_2154_p_dout0;
output   grp_fu_2154_p_ce;
output  [31:0] grp_fu_2158_p_din0;
output  [31:0] grp_fu_2158_p_din1;
input  [31:0] grp_fu_2158_p_dout0;
output   grp_fu_2158_p_ce;
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
reg   [0:0] icmp_ln33_reg_984;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_415;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_419;
reg   [31:0] reg_423;
reg   [31:0] reg_427;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_431;
reg   [31:0] reg_435;
reg   [31:0] reg_439;
reg   [31:0] reg_443;
reg   [31:0] reg_447;
reg   [7:0] v7_2_reg_979;
wire   [0:0] icmp_ln33_fu_459_p2;
reg   [13:0] v229_0_addr_reg_993;
reg   [13:0] v229_0_addr_reg_993_pp0_iter1_reg;
reg   [13:0] v229_0_addr_reg_993_pp0_iter2_reg;
wire   [13:0] add_ln114_fu_498_p2;
reg   [13:0] add_ln114_reg_998;
reg   [13:0] v229_1_addr_reg_1003;
reg   [13:0] v229_1_addr_reg_1003_pp0_iter1_reg;
reg   [13:0] v229_1_addr_reg_1003_pp0_iter2_reg;
reg   [13:0] v229_2_addr_reg_1009;
reg   [13:0] v229_2_addr_reg_1009_pp0_iter1_reg;
reg   [13:0] v229_2_addr_reg_1009_pp0_iter2_reg;
reg   [13:0] v229_2_addr_4_reg_1014;
reg   [13:0] v229_2_addr_4_reg_1014_pp0_iter1_reg;
reg   [13:0] v229_2_addr_4_reg_1014_pp0_iter2_reg;
reg   [13:0] v229_3_addr_reg_1019;
reg   [13:0] v229_3_addr_reg_1019_pp0_iter1_reg;
reg   [13:0] v229_3_addr_reg_1019_pp0_iter2_reg;
reg   [13:0] v229_3_addr_6_reg_1024;
reg   [13:0] v229_3_addr_6_reg_1024_pp0_iter1_reg;
reg   [13:0] v229_3_addr_6_reg_1024_pp0_iter2_reg;
reg   [13:0] v229_0_addr_5_reg_1034;
reg   [13:0] v229_0_addr_5_reg_1034_pp0_iter1_reg;
reg   [13:0] v229_0_addr_5_reg_1034_pp0_iter2_reg;
wire   [13:0] add_ln121_fu_567_p2;
reg   [13:0] add_ln121_reg_1039;
reg   [13:0] v229_1_addr_5_reg_1044;
reg   [13:0] v229_1_addr_5_reg_1044_pp0_iter1_reg;
reg   [13:0] v229_1_addr_5_reg_1044_pp0_iter2_reg;
reg   [13:0] v229_2_addr_6_reg_1050;
reg   [13:0] v229_2_addr_6_reg_1050_pp0_iter1_reg;
reg   [13:0] v229_2_addr_6_reg_1050_pp0_iter2_reg;
reg   [13:0] v229_2_addr_7_reg_1055;
reg   [13:0] v229_2_addr_7_reg_1055_pp0_iter1_reg;
reg   [13:0] v229_2_addr_7_reg_1055_pp0_iter2_reg;
reg   [13:0] v229_3_addr_7_reg_1060;
reg   [13:0] v229_3_addr_7_reg_1060_pp0_iter1_reg;
reg   [13:0] v229_3_addr_7_reg_1060_pp0_iter2_reg;
reg   [13:0] v229_3_addr_8_reg_1065;
reg   [13:0] v229_3_addr_8_reg_1065_pp0_iter1_reg;
reg   [13:0] v229_3_addr_8_reg_1065_pp0_iter2_reg;
reg   [13:0] v229_0_addr_4_reg_1070;
reg   [13:0] v229_0_addr_4_reg_1070_pp0_iter1_reg;
reg   [13:0] v229_0_addr_4_reg_1070_pp0_iter2_reg;
reg   [13:0] v229_1_addr_4_reg_1075;
reg   [13:0] v229_1_addr_4_reg_1075_pp0_iter1_reg;
reg   [13:0] v229_1_addr_4_reg_1075_pp0_iter2_reg;
reg   [13:0] v229_2_addr_5_reg_1080;
reg   [13:0] v229_2_addr_5_reg_1080_pp0_iter1_reg;
reg   [13:0] v229_2_addr_5_reg_1080_pp0_iter2_reg;
reg   [13:0] v229_2_addr_5_reg_1080_pp0_iter3_reg;
reg   [31:0] v228_load_reg_1085;
reg   [13:0] v229_0_addr_6_reg_1090;
reg   [13:0] v229_0_addr_6_reg_1090_pp0_iter1_reg;
reg   [13:0] v229_0_addr_6_reg_1090_pp0_iter2_reg;
reg   [13:0] v229_1_addr_6_reg_1095;
reg   [13:0] v229_1_addr_6_reg_1095_pp0_iter1_reg;
reg   [13:0] v229_1_addr_6_reg_1095_pp0_iter2_reg;
reg   [13:0] v229_1_addr_6_reg_1095_pp0_iter3_reg;
reg   [13:0] v229_2_addr_8_reg_1100;
reg   [13:0] v229_2_addr_8_reg_1100_pp0_iter1_reg;
reg   [13:0] v229_2_addr_8_reg_1100_pp0_iter2_reg;
reg   [13:0] v229_2_addr_8_reg_1100_pp0_iter3_reg;
reg   [31:0] v228_load_2_reg_1105;
reg   [31:0] v229_3_load_6_reg_1110;
reg   [31:0] v229_0_load_reg_1115;
reg   [31:0] v229_0_load_4_reg_1120;
reg   [31:0] v229_1_load_reg_1125;
reg   [31:0] v229_1_load_4_reg_1130;
wire   [31:0] v8_fu_597_p1;
reg   [31:0] v8_reg_1135;
wire   [31:0] v12_fu_602_p1;
reg   [31:0] v12_reg_1141;
wire   [31:0] v15_fu_607_p1;
reg   [31:0] v15_reg_1148;
wire   [31:0] v18_fu_612_p1;
reg   [31:0] v18_reg_1154;
wire   [31:0] v21_fu_616_p1;
reg   [31:0] v21_reg_1161;
reg   [31:0] v229_3_load_8_reg_1167;
reg   [31:0] v229_0_load_5_reg_1172;
reg   [31:0] v229_0_load_6_reg_1177;
reg   [31:0] v229_1_load_5_reg_1182;
reg   [31:0] v229_1_load_6_reg_1187;
wire   [31:0] v27_fu_621_p1;
reg   [31:0] v27_reg_1192;
wire   [31:0] v32_fu_625_p1;
reg   [31:0] v32_reg_1198;
wire   [31:0] v38_fu_629_p1;
reg   [31:0] v38_reg_1204;
reg   [31:0] v229_2_load_7_reg_1210;
reg   [31:0] v229_2_load_8_reg_1215;
wire   [31:0] v43_fu_633_p1;
reg   [31:0] v43_reg_1220;
wire   [31:0] v49_fu_637_p1;
reg   [31:0] v49_reg_1226;
wire   [31:0] v54_fu_641_p1;
reg   [31:0] v54_reg_1232;
wire   [31:0] v10_fu_646_p3;
reg   [31:0] v10_reg_1238;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v13_reg_1243;
wire   [31:0] v17_fu_652_p3;
reg   [31:0] v17_reg_1248;
reg   [31:0] v19_reg_1253;
wire   [31:0] v23_fu_658_p3;
reg   [31:0] v23_reg_1258;
reg   [31:0] v25_reg_1263;
wire   [31:0] v60_fu_664_p1;
reg   [31:0] v60_reg_1268;
wire   [31:0] v65_fu_669_p1;
reg   [31:0] v65_reg_1274;
wire   [31:0] v71_fu_674_p1;
reg   [31:0] v71_reg_1280;
wire   [31:0] v29_fu_688_p3;
reg   [31:0] v29_reg_1286;
reg   [31:0] v30_reg_1291;
wire   [31:0] v34_fu_694_p3;
reg   [31:0] v34_reg_1296;
reg   [31:0] v36_reg_1301;
wire   [31:0] v40_fu_700_p3;
reg   [31:0] v40_reg_1306;
reg   [31:0] v41_reg_1311;
wire   [31:0] v76_fu_706_p1;
reg   [31:0] v76_reg_1316;
wire   [31:0] v82_fu_710_p1;
reg   [31:0] v82_reg_1322;
wire   [31:0] v87_fu_714_p1;
reg   [31:0] v87_reg_1328;
wire   [31:0] v45_fu_718_p3;
reg   [31:0] v45_reg_1334;
reg   [31:0] v47_reg_1339;
wire   [31:0] v51_fu_724_p3;
reg   [31:0] v51_reg_1344;
reg   [31:0] v52_reg_1349;
wire   [31:0] v56_fu_730_p3;
reg   [31:0] v56_reg_1354;
reg   [31:0] v58_reg_1359;
wire   [31:0] v93_fu_736_p1;
reg   [31:0] v93_reg_1364;
wire   [31:0] v98_fu_740_p1;
reg   [31:0] v98_reg_1370;
wire   [31:0] v104_fu_744_p1;
reg   [31:0] v104_reg_1376;
wire   [31:0] v62_fu_748_p3;
reg   [31:0] v62_reg_1382;
reg   [31:0] v63_reg_1387;
wire   [31:0] v67_fu_754_p3;
reg   [31:0] v67_reg_1392;
reg   [31:0] v69_reg_1397;
wire   [31:0] v73_fu_760_p3;
reg   [31:0] v73_reg_1402;
reg   [31:0] v74_reg_1407;
wire   [31:0] v78_fu_766_p3;
reg   [31:0] v78_reg_1412;
reg   [31:0] v80_reg_1417;
wire   [31:0] v84_fu_772_p3;
reg   [31:0] v84_reg_1422;
reg   [31:0] v85_reg_1427;
wire   [31:0] v89_fu_778_p3;
reg   [31:0] v89_reg_1432;
reg   [31:0] v91_reg_1437;
wire   [31:0] v95_fu_784_p3;
reg   [31:0] v95_reg_1442;
reg   [31:0] v96_reg_1447;
wire   [31:0] v100_fu_790_p3;
reg   [31:0] v100_reg_1452;
reg   [31:0] v102_reg_1457;
wire   [31:0] v106_fu_796_p3;
reg   [31:0] v106_reg_1462;
reg   [31:0] v107_reg_1467;
reg   [31:0] v97_reg_1472;
reg   [31:0] v103_reg_1477;
reg   [31:0] v108_reg_1482;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_4_fu_479_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln62_fu_490_p1;
wire   [63:0] zext_ln34_fu_510_p1;
wire   [63:0] zext_ln45_4_fu_548_p1;
wire   [63:0] zext_ln69_fu_559_p1;
wire   [63:0] zext_ln42_fu_579_p1;
wire   [63:0] zext_ln114_fu_585_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln121_fu_591_p1;
reg   [7:0] v7_fu_86;
wire   [7:0] add_ln33_fu_678_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_2;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
wire    ap_block_pp0_stage2;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln41_fu_822_p1;
wire    ap_block_pp0_stage3;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln48_fu_827_p1;
wire   [31:0] bitcast_ln94_fu_842_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln100_fu_847_p1;
wire   [31:0] bitcast_ln146_fu_881_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln152_fu_885_p1;
reg    v228_ce1_local;
reg    v228_ce0_local;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln55_fu_802_p1;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln61_fu_807_p1;
wire   [31:0] bitcast_ln107_fu_852_p1;
wire   [31:0] bitcast_ln113_fu_857_p1;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln68_fu_812_p1;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln74_fu_817_p1;
wire   [31:0] bitcast_ln120_fu_862_p1;
wire   [31:0] bitcast_ln126_fu_867_p1;
reg    v229_1_ce1_local;
reg   [13:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [13:0] v229_1_address0_local;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln81_fu_832_p1;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln87_fu_837_p1;
wire   [31:0] bitcast_ln133_fu_872_p1;
wire   [31:0] bitcast_ln139_fu_877_p1;
reg   [31:0] grp_fu_379_p0;
reg   [31:0] grp_fu_379_p1;
reg   [31:0] grp_fu_383_p0;
reg   [31:0] grp_fu_383_p1;
reg   [31:0] grp_fu_387_p0;
reg   [31:0] grp_fu_387_p1;
reg   [31:0] grp_fu_391_p0;
reg   [31:0] grp_fu_395_p0;
reg   [31:0] grp_fu_395_p1;
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_403_p1;
reg   [31:0] grp_fu_407_p0;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_411_p1;
wire   [15:0] zext_ln38_3_fu_469_p1;
wire   [15:0] add_ln38_fu_473_p2;
wire   [13:0] zext_ln38_fu_465_p1;
wire   [13:0] add_ln62_fu_484_p2;
wire   [13:0] add_ln34_fu_504_p2;
wire   [6:0] tmp_s_fu_516_p4;
wire   [7:0] or_ln42_2_fu_526_p3;
wire   [15:0] zext_ln45_3_fu_538_p1;
wire   [15:0] add_ln45_fu_542_p2;
wire   [13:0] zext_ln45_fu_534_p1;
wire   [13:0] add_ln69_fu_553_p2;
wire   [13:0] add_ln42_fu_573_p2;
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
#0 v7_fu_86 = 8'd0;
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
        v7_fu_86 <= 8'd0;
    end else if (((icmp_ln33_reg_984 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_fu_86 <= add_ln33_fu_678_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln114_reg_998 <= add_ln114_fu_498_p2;
        add_ln121_reg_1039 <= add_ln121_fu_567_p2;
        icmp_ln33_reg_984 <= icmp_ln33_fu_459_p2;
        v229_0_addr_5_reg_1034 <= zext_ln69_fu_559_p1;
        v229_0_addr_5_reg_1034_pp0_iter1_reg <= v229_0_addr_5_reg_1034;
        v229_0_addr_5_reg_1034_pp0_iter2_reg <= v229_0_addr_5_reg_1034_pp0_iter1_reg;
        v229_0_addr_reg_993 <= zext_ln62_fu_490_p1;
        v229_0_addr_reg_993_pp0_iter1_reg <= v229_0_addr_reg_993;
        v229_0_addr_reg_993_pp0_iter2_reg <= v229_0_addr_reg_993_pp0_iter1_reg;
        v229_1_addr_5_reg_1044 <= zext_ln69_fu_559_p1;
        v229_1_addr_5_reg_1044_pp0_iter1_reg <= v229_1_addr_5_reg_1044;
        v229_1_addr_5_reg_1044_pp0_iter2_reg <= v229_1_addr_5_reg_1044_pp0_iter1_reg;
        v229_1_addr_reg_1003 <= zext_ln62_fu_490_p1;
        v229_1_addr_reg_1003_pp0_iter1_reg <= v229_1_addr_reg_1003;
        v229_1_addr_reg_1003_pp0_iter2_reg <= v229_1_addr_reg_1003_pp0_iter1_reg;
        v229_2_addr_4_reg_1014 <= zext_ln62_fu_490_p1;
        v229_2_addr_4_reg_1014_pp0_iter1_reg <= v229_2_addr_4_reg_1014;
        v229_2_addr_4_reg_1014_pp0_iter2_reg <= v229_2_addr_4_reg_1014_pp0_iter1_reg;
        v229_2_addr_6_reg_1050 <= zext_ln42_fu_579_p1;
        v229_2_addr_6_reg_1050_pp0_iter1_reg <= v229_2_addr_6_reg_1050;
        v229_2_addr_6_reg_1050_pp0_iter2_reg <= v229_2_addr_6_reg_1050_pp0_iter1_reg;
        v229_2_addr_7_reg_1055 <= zext_ln69_fu_559_p1;
        v229_2_addr_7_reg_1055_pp0_iter1_reg <= v229_2_addr_7_reg_1055;
        v229_2_addr_7_reg_1055_pp0_iter2_reg <= v229_2_addr_7_reg_1055_pp0_iter1_reg;
        v229_2_addr_reg_1009 <= zext_ln34_fu_510_p1;
        v229_2_addr_reg_1009_pp0_iter1_reg <= v229_2_addr_reg_1009;
        v229_2_addr_reg_1009_pp0_iter2_reg <= v229_2_addr_reg_1009_pp0_iter1_reg;
        v229_3_addr_6_reg_1024 <= zext_ln62_fu_490_p1;
        v229_3_addr_6_reg_1024_pp0_iter1_reg <= v229_3_addr_6_reg_1024;
        v229_3_addr_6_reg_1024_pp0_iter2_reg <= v229_3_addr_6_reg_1024_pp0_iter1_reg;
        v229_3_addr_7_reg_1060 <= zext_ln42_fu_579_p1;
        v229_3_addr_7_reg_1060_pp0_iter1_reg <= v229_3_addr_7_reg_1060;
        v229_3_addr_7_reg_1060_pp0_iter2_reg <= v229_3_addr_7_reg_1060_pp0_iter1_reg;
        v229_3_addr_8_reg_1065 <= zext_ln69_fu_559_p1;
        v229_3_addr_8_reg_1065_pp0_iter1_reg <= v229_3_addr_8_reg_1065;
        v229_3_addr_8_reg_1065_pp0_iter2_reg <= v229_3_addr_8_reg_1065_pp0_iter1_reg;
        v229_3_addr_reg_1019 <= zext_ln34_fu_510_p1;
        v229_3_addr_reg_1019_pp0_iter1_reg <= v229_3_addr_reg_1019;
        v229_3_addr_reg_1019_pp0_iter2_reg <= v229_3_addr_reg_1019_pp0_iter1_reg;
        v29_reg_1286 <= v29_fu_688_p3;
        v34_reg_1296 <= v34_fu_694_p3;
        v40_reg_1306 <= v40_fu_700_p3;
        v76_reg_1316 <= v76_fu_706_p1;
        v7_2_reg_979 <= ap_sig_allocacmp_v7_2;
        v82_reg_1322 <= v82_fu_710_p1;
        v87_reg_1328 <= v87_fu_714_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v10_reg_1238 <= v10_fu_646_p3;
        v17_reg_1248 <= v17_fu_652_p3;
        v23_reg_1258 <= v23_fu_658_p3;
        v60_reg_1268 <= v60_fu_664_p1;
        v65_reg_1274 <= v65_fu_669_p1;
        v71_reg_1280 <= v71_fu_674_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_415 <= v229_2_q1;
        reg_419 <= v229_2_q0;
        reg_423 <= v229_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_427 <= grp_fu_2126_p_dout0;
        reg_431 <= grp_fu_2130_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_435 <= grp_fu_2134_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_439 <= grp_fu_2126_p_dout0;
        reg_443 <= grp_fu_2130_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_447 <= grp_fu_2134_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v100_reg_1452 <= v100_fu_790_p3;
        v106_reg_1462 <= v106_fu_796_p3;
        v43_reg_1220 <= v43_fu_633_p1;
        v49_reg_1226 <= v49_fu_637_p1;
        v54_reg_1232 <= v54_fu_641_p1;
        v95_reg_1442 <= v95_fu_784_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1457 <= grp_fu_2150_p_dout0;
        v107_reg_1467 <= grp_fu_2158_p_dout0;
        v96_reg_1447 <= grp_fu_2142_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1477 <= grp_fu_2130_p_dout0;
        v108_reg_1482 <= grp_fu_2134_p_dout0;
        v97_reg_1472 <= grp_fu_2126_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v104_reg_1376 <= v104_fu_744_p1;
        v229_0_addr_4_reg_1070 <= zext_ln114_fu_585_p1;
        v229_0_addr_4_reg_1070_pp0_iter1_reg <= v229_0_addr_4_reg_1070;
        v229_0_addr_4_reg_1070_pp0_iter2_reg <= v229_0_addr_4_reg_1070_pp0_iter1_reg;
        v229_0_addr_6_reg_1090 <= zext_ln121_fu_591_p1;
        v229_0_addr_6_reg_1090_pp0_iter1_reg <= v229_0_addr_6_reg_1090;
        v229_0_addr_6_reg_1090_pp0_iter2_reg <= v229_0_addr_6_reg_1090_pp0_iter1_reg;
        v229_1_addr_4_reg_1075 <= zext_ln114_fu_585_p1;
        v229_1_addr_4_reg_1075_pp0_iter1_reg <= v229_1_addr_4_reg_1075;
        v229_1_addr_4_reg_1075_pp0_iter2_reg <= v229_1_addr_4_reg_1075_pp0_iter1_reg;
        v229_1_addr_6_reg_1095 <= zext_ln121_fu_591_p1;
        v229_1_addr_6_reg_1095_pp0_iter1_reg <= v229_1_addr_6_reg_1095;
        v229_1_addr_6_reg_1095_pp0_iter2_reg <= v229_1_addr_6_reg_1095_pp0_iter1_reg;
        v229_1_addr_6_reg_1095_pp0_iter3_reg <= v229_1_addr_6_reg_1095_pp0_iter2_reg;
        v229_2_addr_5_reg_1080 <= zext_ln114_fu_585_p1;
        v229_2_addr_5_reg_1080_pp0_iter1_reg <= v229_2_addr_5_reg_1080;
        v229_2_addr_5_reg_1080_pp0_iter2_reg <= v229_2_addr_5_reg_1080_pp0_iter1_reg;
        v229_2_addr_5_reg_1080_pp0_iter3_reg <= v229_2_addr_5_reg_1080_pp0_iter2_reg;
        v229_2_addr_8_reg_1100 <= zext_ln121_fu_591_p1;
        v229_2_addr_8_reg_1100_pp0_iter1_reg <= v229_2_addr_8_reg_1100;
        v229_2_addr_8_reg_1100_pp0_iter2_reg <= v229_2_addr_8_reg_1100_pp0_iter1_reg;
        v229_2_addr_8_reg_1100_pp0_iter3_reg <= v229_2_addr_8_reg_1100_pp0_iter2_reg;
        v45_reg_1334 <= v45_fu_718_p3;
        v51_reg_1344 <= v51_fu_724_p3;
        v56_reg_1354 <= v56_fu_730_p3;
        v93_reg_1364 <= v93_fu_736_p1;
        v98_reg_1370 <= v98_fu_740_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v12_reg_1141 <= v12_fu_602_p1;
        v15_reg_1148 <= v15_fu_607_p1;
        v18_reg_1154 <= v18_fu_612_p1;
        v21_reg_1161 <= v21_fu_616_p1;
        v62_reg_1382 <= v62_fu_748_p3;
        v67_reg_1392 <= v67_fu_754_p3;
        v73_reg_1402 <= v73_fu_760_p3;
        v8_reg_1135 <= v8_fu_597_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_1243 <= grp_fu_2142_p_dout0;
        v19_reg_1253 <= grp_fu_2150_p_dout0;
        v25_reg_1263 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_load_2_reg_1105 <= v228_q0;
        v228_load_reg_1085 <= v228_q1;
        v229_0_load_4_reg_1120 <= v229_0_q0;
        v229_0_load_reg_1115 <= v229_0_q1;
        v229_1_load_4_reg_1130 <= v229_1_q0;
        v229_1_load_reg_1125 <= v229_1_q1;
        v229_3_load_6_reg_1110 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_load_5_reg_1172 <= v229_0_q1;
        v229_0_load_6_reg_1177 <= v229_0_q0;
        v229_1_load_5_reg_1182 <= v229_1_q1;
        v229_1_load_6_reg_1187 <= v229_1_q0;
        v229_3_load_8_reg_1167 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_load_7_reg_1210 <= v229_2_q1;
        v229_2_load_8_reg_1215 <= v229_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_reg_1192 <= v27_fu_621_p1;
        v32_reg_1198 <= v32_fu_625_p1;
        v38_reg_1204 <= v38_fu_629_p1;
        v78_reg_1412 <= v78_fu_766_p3;
        v84_reg_1422 <= v84_fu_772_p3;
        v89_reg_1432 <= v89_fu_778_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1291 <= grp_fu_2142_p_dout0;
        v36_reg_1301 <= grp_fu_2150_p_dout0;
        v41_reg_1311 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1339 <= grp_fu_2142_p_dout0;
        v52_reg_1349 <= grp_fu_2150_p_dout0;
        v58_reg_1359 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v63_reg_1387 <= grp_fu_2142_p_dout0;
        v69_reg_1397 <= grp_fu_2150_p_dout0;
        v74_reg_1407 <= grp_fu_2158_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v80_reg_1417 <= grp_fu_2142_p_dout0;
        v85_reg_1427 <= grp_fu_2150_p_dout0;
        v91_reg_1437 <= grp_fu_2158_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_984 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v7_2 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_2 = v7_fu_86;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_379_p0 = v95_reg_1442;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_379_p0 = v78_reg_1412;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_379_p0 = v62_reg_1382;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_379_p0 = v45_reg_1334;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_379_p0 = v29_reg_1286;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_379_p0 = v10_reg_1238;
        end else begin
            grp_fu_379_p0 = 'bx;
        end
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_379_p1 = v96_reg_1447;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_379_p1 = v80_reg_1417;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_379_p1 = v63_reg_1387;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_379_p1 = v47_reg_1339;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_379_p1 = v30_reg_1291;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_379_p1 = v13_reg_1243;
        end else begin
            grp_fu_379_p1 = 'bx;
        end
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_383_p0 = v100_reg_1452;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_383_p0 = v84_reg_1422;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_383_p0 = v67_reg_1392;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_383_p0 = v51_reg_1344;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_383_p0 = v34_reg_1296;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_383_p0 = v17_reg_1248;
        end else begin
            grp_fu_383_p0 = 'bx;
        end
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_383_p1 = v102_reg_1457;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_383_p1 = v85_reg_1427;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_383_p1 = v69_reg_1397;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_383_p1 = v52_reg_1349;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_383_p1 = v36_reg_1301;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_383_p1 = v19_reg_1253;
        end else begin
            grp_fu_383_p1 = 'bx;
        end
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_387_p0 = v106_reg_1462;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_387_p0 = v89_reg_1432;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_387_p0 = v73_reg_1402;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_387_p0 = v56_reg_1354;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_387_p0 = v40_reg_1306;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_387_p0 = v23_reg_1258;
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
            grp_fu_387_p1 = v107_reg_1467;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_387_p1 = v91_reg_1437;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_387_p1 = v74_reg_1407;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_387_p1 = v58_reg_1359;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_387_p1 = v41_reg_1311;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_387_p1 = v25_reg_1263;
        end else begin
            grp_fu_387_p1 = 'bx;
        end
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_391_p0 = v93_fu_736_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_391_p0 = v76_fu_706_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_391_p0 = v60_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_391_p0 = v43_fu_633_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_391_p0 = v27_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_391_p0 = v8_fu_597_p1;
    end else begin
        grp_fu_391_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p0 = v90_2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_395_p0 = v79_2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_395_p0 = v57_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_395_p0 = v46_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p0 = v24_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p0 = v11_2;
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_395_p1 = v12_reg_1141;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_395_p1 = v18_reg_1154;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p1 = v12_fu_602_p1;
    end else begin
        grp_fu_395_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v98_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v82_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_399_p0 = v65_fu_669_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_399_p0 = v49_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v32_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v15_fu_607_p1;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = v101_2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p0 = v79_2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_403_p0 = v68_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_403_p0 = v46_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p0 = v35_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p0 = v11_2;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_403_p1 = v18_reg_1154;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_403_p1 = v12_reg_1141;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p1 = v18_fu_612_p1;
    end else begin
        grp_fu_403_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p0 = v104_fu_744_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = v87_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_407_p0 = v71_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_407_p0 = v54_fu_641_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = v38_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p0 = v21_fu_616_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p0 = v101_2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v90_2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_411_p0 = v68_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_411_p0 = v57_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v35_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v24_2;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_411_p1 = v12_reg_1141;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_411_p1 = v18_reg_1154;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p1 = v12_fu_602_p1;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_ce0_local = 1'b1;
    end else begin
        v228_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_ce1_local = 1'b1;
    end else begin
        v228_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address0_local = v229_0_addr_6_reg_1090_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_5_reg_1034_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln121_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln69_fu_559_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address1_local = v229_0_addr_4_reg_1070_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_reg_993_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln114_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln62_fu_490_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_0_d0_local = bitcast_ln126_fu_867_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_0_d0_local = bitcast_ln74_fu_817_p1;
        end else begin
            v229_0_d0_local = 'bx;
        end
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_0_d1_local = bitcast_ln120_fu_862_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_0_d1_local = bitcast_ln68_fu_812_p1;
        end else begin
            v229_0_d1_local = 'bx;
        end
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_6_reg_1095_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address0_local = v229_1_addr_reg_1003_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = zext_ln121_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln69_fu_559_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address1_local = v229_1_addr_4_reg_1075_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address1_local = v229_1_addr_5_reg_1044_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = zext_ln114_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln62_fu_490_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d0_local = bitcast_ln139_fu_877_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d0_local = bitcast_ln81_fu_832_p1;
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_1_d1_local = bitcast_ln133_fu_872_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_1_d1_local = bitcast_ln87_fu_837_p1;
        end else begin
            v229_1_d1_local = 'bx;
        end
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address0_local = v229_2_addr_8_reg_1100_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_address0_local = v229_2_addr_7_reg_1055_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_address0_local = v229_2_addr_6_reg_1050_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_8_reg_1100;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = v229_2_addr_7_reg_1055;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_579_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address1_local = v229_2_addr_5_reg_1080_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_address1_local = v229_2_addr_4_reg_1014_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_address1_local = v229_2_addr_reg_1009_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_5_reg_1080;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = v229_2_addr_4_reg_1014;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_510_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_d0_local = bitcast_ln152_fu_885_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_d0_local = bitcast_ln100_fu_847_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_d0_local = bitcast_ln48_fu_827_p1;
    end else begin
        v229_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_d1_local = bitcast_ln146_fu_881_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_d1_local = bitcast_ln94_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_d1_local = bitcast_ln41_fu_822_p1;
    end else begin
        v229_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_3_address0_local = v229_3_addr_8_reg_1065_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_7_reg_1060_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = v229_3_addr_8_reg_1065;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_579_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_3_address1_local = v229_3_addr_6_reg_1024_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address1_local = v229_3_addr_reg_1019_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = v229_3_addr_6_reg_1024;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_510_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_3_d0_local = bitcast_ln113_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_3_d0_local = bitcast_ln61_fu_807_p1;
        end else begin
            v229_3_d0_local = 'bx;
        end
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_3_d1_local = bitcast_ln107_fu_852_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_3_d1_local = bitcast_ln55_fu_802_p1;
        end else begin
            v229_3_d1_local = 'bx;
        end
    end else begin
        v229_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln114_fu_498_p2 = (mul_ln114 + zext_ln38_fu_465_p1);
assign add_ln121_fu_567_p2 = (mul_ln114 + zext_ln45_fu_534_p1);
assign add_ln33_fu_678_p2 = (v7_2_reg_979 + 8'd2);
assign add_ln34_fu_504_p2 = (mul_ln127 + zext_ln38_fu_465_p1);
assign add_ln38_fu_473_p2 = (phi_mul + zext_ln38_3_fu_469_p1);
assign add_ln42_fu_573_p2 = (mul_ln127 + zext_ln45_fu_534_p1);
assign add_ln45_fu_542_p2 = (phi_mul + zext_ln45_3_fu_538_p1);
assign add_ln62_fu_484_p2 = (mul_ln62 + zext_ln38_fu_465_p1);
assign add_ln69_fu_553_p2 = (mul_ln62 + zext_ln45_fu_534_p1);
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
assign bitcast_ln100_fu_847_p1 = reg_427;
assign bitcast_ln107_fu_852_p1 = reg_431;
assign bitcast_ln113_fu_857_p1 = reg_447;
assign bitcast_ln120_fu_862_p1 = reg_427;
assign bitcast_ln126_fu_867_p1 = reg_431;
assign bitcast_ln133_fu_872_p1 = reg_435;
assign bitcast_ln139_fu_877_p1 = v97_reg_1472;
assign bitcast_ln146_fu_881_p1 = v103_reg_1477;
assign bitcast_ln152_fu_885_p1 = v108_reg_1482;
assign bitcast_ln41_fu_822_p1 = reg_427;
assign bitcast_ln48_fu_827_p1 = reg_431;
assign bitcast_ln55_fu_802_p1 = reg_435;
assign bitcast_ln61_fu_807_p1 = reg_439;
assign bitcast_ln68_fu_812_p1 = reg_443;
assign bitcast_ln74_fu_817_p1 = reg_447;
assign bitcast_ln81_fu_832_p1 = reg_439;
assign bitcast_ln87_fu_837_p1 = reg_443;
assign bitcast_ln94_fu_842_p1 = reg_435;
assign grp_fu_2126_p_ce = 1'b1;
assign grp_fu_2126_p_din0 = grp_fu_379_p0;
assign grp_fu_2126_p_din1 = grp_fu_379_p1;
assign grp_fu_2126_p_opcode = 2'd0;
assign grp_fu_2130_p_ce = 1'b1;
assign grp_fu_2130_p_din0 = grp_fu_383_p0;
assign grp_fu_2130_p_din1 = grp_fu_383_p1;
assign grp_fu_2130_p_opcode = 2'd0;
assign grp_fu_2134_p_ce = 1'b1;
assign grp_fu_2134_p_din0 = grp_fu_387_p0;
assign grp_fu_2134_p_din1 = grp_fu_387_p1;
assign grp_fu_2134_p_opcode = 2'd0;
assign grp_fu_2138_p_ce = 1'b1;
assign grp_fu_2138_p_din0 = grp_fu_391_p0;
assign grp_fu_2138_p_din1 = v4;
assign grp_fu_2142_p_ce = 1'b1;
assign grp_fu_2142_p_din0 = grp_fu_395_p0;
assign grp_fu_2142_p_din1 = grp_fu_395_p1;
assign grp_fu_2146_p_ce = 1'b1;
assign grp_fu_2146_p_din0 = grp_fu_399_p0;
assign grp_fu_2146_p_din1 = v4;
assign grp_fu_2150_p_ce = 1'b1;
assign grp_fu_2150_p_din0 = grp_fu_403_p0;
assign grp_fu_2150_p_din1 = grp_fu_403_p1;
assign grp_fu_2154_p_ce = 1'b1;
assign grp_fu_2154_p_din0 = grp_fu_407_p0;
assign grp_fu_2154_p_din1 = v4;
assign grp_fu_2158_p_ce = 1'b1;
assign grp_fu_2158_p_din0 = grp_fu_411_p0;
assign grp_fu_2158_p_din1 = grp_fu_411_p1;
assign icmp_ln33_fu_459_p2 = ((ap_sig_allocacmp_v7_2 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln42_2_fu_526_p3 = {{tmp_s_fu_516_p4}, {1'd1}};
assign tmp_s_fu_516_p4 = {{ap_sig_allocacmp_v7_2[7:1]}};
assign v100_fu_790_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2146_p_dout0 : v98_reg_1370);
assign v104_fu_744_p1 = v229_2_load_8_reg_1215;
assign v106_fu_796_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2154_p_dout0 : v104_reg_1376);
assign v10_fu_646_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2138_p_dout0 : v8_reg_1135);
assign v12_fu_602_p1 = v228_load_reg_1085;
assign v15_fu_607_p1 = reg_419;
assign v17_fu_652_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2146_p_dout0 : v15_reg_1148);
assign v18_fu_612_p1 = v228_load_2_reg_1105;
assign v21_fu_616_p1 = reg_423;
assign v228_address0 = zext_ln45_4_fu_548_p1;
assign v228_address1 = zext_ln38_4_fu_479_p1;
assign v228_ce0 = v228_ce0_local;
assign v228_ce1 = v228_ce1_local;
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
assign v23_fu_658_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2154_p_dout0 : v21_reg_1161);
assign v27_fu_621_p1 = v229_3_load_6_reg_1110;
assign v29_fu_688_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2138_p_dout0 : v27_reg_1192);
assign v32_fu_625_p1 = v229_0_load_reg_1115;
assign v34_fu_694_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2146_p_dout0 : v32_reg_1198);
assign v38_fu_629_p1 = v229_0_load_4_reg_1120;
assign v40_fu_700_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2154_p_dout0 : v38_reg_1204);
assign v43_fu_633_p1 = v229_1_load_reg_1125;
assign v45_fu_718_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2138_p_dout0 : v43_reg_1220);
assign v49_fu_637_p1 = v229_1_load_4_reg_1130;
assign v51_fu_724_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2146_p_dout0 : v49_reg_1226);
assign v54_fu_641_p1 = reg_415;
assign v56_fu_730_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2154_p_dout0 : v54_reg_1232);
assign v60_fu_664_p1 = reg_419;
assign v62_fu_748_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2138_p_dout0 : v60_reg_1268);
assign v65_fu_669_p1 = reg_423;
assign v67_fu_754_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2146_p_dout0 : v65_reg_1274);
assign v71_fu_674_p1 = v229_3_load_8_reg_1167;
assign v73_fu_760_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2154_p_dout0 : v71_reg_1280);
assign v76_fu_706_p1 = v229_0_load_5_reg_1172;
assign v78_fu_766_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2138_p_dout0 : v76_reg_1316);
assign v82_fu_710_p1 = v229_0_load_6_reg_1177;
assign v84_fu_772_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2146_p_dout0 : v82_reg_1322);
assign v87_fu_714_p1 = v229_1_load_5_reg_1182;
assign v89_fu_778_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2154_p_dout0 : v87_reg_1328);
assign v8_fu_597_p1 = reg_415;
assign v93_fu_736_p1 = v229_1_load_6_reg_1187;
assign v95_fu_784_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_2138_p_dout0 : v93_reg_1364);
assign v98_fu_740_p1 = v229_2_load_7_reg_1210;
assign zext_ln114_fu_585_p1 = add_ln114_reg_998;
assign zext_ln121_fu_591_p1 = add_ln121_reg_1039;
assign zext_ln34_fu_510_p1 = add_ln34_fu_504_p2;
assign zext_ln38_3_fu_469_p1 = ap_sig_allocacmp_v7_2;
assign zext_ln38_4_fu_479_p1 = add_ln38_fu_473_p2;
assign zext_ln38_fu_465_p1 = ap_sig_allocacmp_v7_2;
assign zext_ln42_fu_579_p1 = add_ln42_fu_573_p2;
assign zext_ln45_3_fu_538_p1 = or_ln42_2_fu_526_p3;
assign zext_ln45_4_fu_548_p1 = add_ln45_fu_542_p2;
assign zext_ln45_fu_534_p1 = or_ln42_2_fu_526_p3;
assign zext_ln62_fu_490_p1 = add_ln62_fu_484_p2;
assign zext_ln69_fu_559_p1 = add_ln69_fu_553_p2;
endmodule 