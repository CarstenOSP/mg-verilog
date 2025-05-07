module kernel_3mm_Loop_VITIS_LOOP_290_1_proc_Pipeline_VITIS_LOOP_291_2_VITIS_LOOP_292_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v261_5_1_address0,v261_5_1_ce0,v261_5_1_we0,v261_5_1_d0,v261_5_1_address1,v261_5_1_ce1,v261_5_1_q1,v261_5_0_address0,v261_5_0_ce0,v261_5_0_we0,v261_5_0_d0,v261_5_0_address1,v261_5_0_ce1,v261_5_0_q1,v261_4_1_address0,v261_4_1_ce0,v261_4_1_we0,v261_4_1_d0,v261_4_1_address1,v261_4_1_ce1,v261_4_1_q1,v261_4_0_address0,v261_4_0_ce0,v261_4_0_we0,v261_4_0_d0,v261_4_0_address1,v261_4_0_ce1,v261_4_0_q1,v261_3_1_address0,v261_3_1_ce0,v261_3_1_we0,v261_3_1_d0,v261_3_1_address1,v261_3_1_ce1,v261_3_1_q1,v261_3_0_address0,v261_3_0_ce0,v261_3_0_we0,v261_3_0_d0,v261_3_0_address1,v261_3_0_ce1,v261_3_0_q1,v261_2_1_address0,v261_2_1_ce0,v261_2_1_we0,v261_2_1_d0,v261_2_1_address1,v261_2_1_ce1,v261_2_1_q1,v261_2_0_address0,v261_2_0_ce0,v261_2_0_we0,v261_2_0_d0,v261_2_0_address1,v261_2_0_ce1,v261_2_0_q1,v261_1_1_address0,v261_1_1_ce0,v261_1_1_we0,v261_1_1_d0,v261_1_1_address1,v261_1_1_ce1,v261_1_1_q1,v261_1_0_address0,v261_1_0_ce0,v261_1_0_we0,v261_1_0_d0,v261_1_0_address1,v261_1_0_ce1,v261_1_0_q1,v261_0_1_address0,v261_0_1_ce0,v261_0_1_we0,v261_0_1_d0,v261_0_1_address1,v261_0_1_ce1,v261_0_1_q1,v261_0_0_address0,v261_0_0_ce0,v261_0_0_we0,v261_0_0_d0,v261_0_0_address1,v261_0_0_ce1,v261_0_0_q1,zext_ln290,v262_0_address0,v262_0_ce0,v262_0_q0,v262_1_address0,v262_1_ce0,v262_1_q0,v262_2_address0,v262_2_ce0,v262_2_q0,v262_3_address0,v262_3_ce0,v262_3_q0,v262_4_address0,v262_4_ce0,v262_4_q0,v262_5_address0,v262_5_ce0,v262_5_q0,phi_mul,v263_0_address0,v263_0_ce0,v263_0_q0,v263_1_address0,v263_1_ce0,v263_1_q0,cmp11_i); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v261_5_1_address0;
output   v261_5_1_ce0;
output   v261_5_1_we0;
output  [31:0] v261_5_1_d0;
output  [11:0] v261_5_1_address1;
output   v261_5_1_ce1;
input  [31:0] v261_5_1_q1;
output  [11:0] v261_5_0_address0;
output   v261_5_0_ce0;
output   v261_5_0_we0;
output  [31:0] v261_5_0_d0;
output  [11:0] v261_5_0_address1;
output   v261_5_0_ce1;
input  [31:0] v261_5_0_q1;
output  [11:0] v261_4_1_address0;
output   v261_4_1_ce0;
output   v261_4_1_we0;
output  [31:0] v261_4_1_d0;
output  [11:0] v261_4_1_address1;
output   v261_4_1_ce1;
input  [31:0] v261_4_1_q1;
output  [11:0] v261_4_0_address0;
output   v261_4_0_ce0;
output   v261_4_0_we0;
output  [31:0] v261_4_0_d0;
output  [11:0] v261_4_0_address1;
output   v261_4_0_ce1;
input  [31:0] v261_4_0_q1;
output  [11:0] v261_3_1_address0;
output   v261_3_1_ce0;
output   v261_3_1_we0;
output  [31:0] v261_3_1_d0;
output  [11:0] v261_3_1_address1;
output   v261_3_1_ce1;
input  [31:0] v261_3_1_q1;
output  [11:0] v261_3_0_address0;
output   v261_3_0_ce0;
output   v261_3_0_we0;
output  [31:0] v261_3_0_d0;
output  [11:0] v261_3_0_address1;
output   v261_3_0_ce1;
input  [31:0] v261_3_0_q1;
output  [11:0] v261_2_1_address0;
output   v261_2_1_ce0;
output   v261_2_1_we0;
output  [31:0] v261_2_1_d0;
output  [11:0] v261_2_1_address1;
output   v261_2_1_ce1;
input  [31:0] v261_2_1_q1;
output  [11:0] v261_2_0_address0;
output   v261_2_0_ce0;
output   v261_2_0_we0;
output  [31:0] v261_2_0_d0;
output  [11:0] v261_2_0_address1;
output   v261_2_0_ce1;
input  [31:0] v261_2_0_q1;
output  [11:0] v261_1_1_address0;
output   v261_1_1_ce0;
output   v261_1_1_we0;
output  [31:0] v261_1_1_d0;
output  [11:0] v261_1_1_address1;
output   v261_1_1_ce1;
input  [31:0] v261_1_1_q1;
output  [11:0] v261_1_0_address0;
output   v261_1_0_ce0;
output   v261_1_0_we0;
output  [31:0] v261_1_0_d0;
output  [11:0] v261_1_0_address1;
output   v261_1_0_ce1;
input  [31:0] v261_1_0_q1;
output  [11:0] v261_0_1_address0;
output   v261_0_1_ce0;
output   v261_0_1_we0;
output  [31:0] v261_0_1_d0;
output  [11:0] v261_0_1_address1;
output   v261_0_1_ce1;
input  [31:0] v261_0_1_q1;
output  [11:0] v261_0_0_address0;
output   v261_0_0_ce0;
output   v261_0_0_we0;
output  [31:0] v261_0_0_d0;
output  [11:0] v261_0_0_address1;
output   v261_0_0_ce1;
input  [31:0] v261_0_0_q1;
input  [7:0] zext_ln290;
output  [12:0] v262_0_address0;
output   v262_0_ce0;
input  [31:0] v262_0_q0;
output  [12:0] v262_1_address0;
output   v262_1_ce0;
input  [31:0] v262_1_q0;
output  [12:0] v262_2_address0;
output   v262_2_ce0;
input  [31:0] v262_2_q0;
output  [12:0] v262_3_address0;
output   v262_3_ce0;
input  [31:0] v262_3_q0;
output  [12:0] v262_4_address0;
output   v262_4_ce0;
input  [31:0] v262_4_q0;
output  [12:0] v262_5_address0;
output   v262_5_ce0;
input  [31:0] v262_5_q0;
input  [14:0] phi_mul;
output  [14:0] v263_0_address0;
output   v263_0_ce0;
input  [31:0] v263_0_q0;
output  [14:0] v263_1_address0;
output   v263_1_ce0;
input  [31:0] v263_1_q0;
input  [0:0] cmp11_i;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln291_fu_568_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [12:0] zext_ln290_cast_fu_546_p1;
reg   [12:0] zext_ln290_cast_reg_999;
wire   [5:0] tmp_fu_629_p4;
reg   [5:0] tmp_reg_1008;
reg   [6:0] lshr_ln_reg_1018;
reg   [6:0] lshr_ln_reg_1018_pp0_iter2_reg;
reg   [6:0] lshr_ln_reg_1018_pp0_iter3_reg;
reg   [31:0] v262_0_load_reg_1074;
reg   [31:0] v262_1_load_reg_1079;
reg   [31:0] v262_2_load_reg_1084;
reg   [31:0] v262_3_load_reg_1089;
reg   [31:0] v262_4_load_reg_1094;
reg   [31:0] v262_5_load_reg_1099;
wire   [11:0] grp_fu_949_p3;
reg   [11:0] add_ln357_reg_1104;
reg   [11:0] add_ln357_reg_1104_pp0_iter6_reg;
reg   [11:0] add_ln357_reg_1104_pp0_iter7_reg;
reg   [31:0] v263_0_load_reg_1109;
reg   [31:0] v263_1_load_reg_1114;
wire   [31:0] v201_fu_698_p1;
wire   [31:0] v212_fu_703_p1;
wire   [31:0] v221_fu_708_p1;
wire   [31:0] v230_fu_713_p1;
wire   [31:0] v239_fu_718_p1;
wire   [31:0] v248_fu_723_p1;
wire   [31:0] v202_fu_728_p1;
wire   [31:0] v207_fu_737_p1;
reg   [11:0] v261_5_1_addr_reg_1175;
reg   [11:0] v261_5_1_addr_reg_1175_pp0_iter9_reg;
reg   [11:0] v261_5_1_addr_reg_1175_pp0_iter10_reg;
reg   [11:0] v261_5_1_addr_reg_1175_pp0_iter11_reg;
reg   [11:0] v261_5_1_addr_reg_1175_pp0_iter12_reg;
reg   [11:0] v261_5_1_addr_reg_1175_pp0_iter13_reg;
reg   [11:0] v261_5_1_addr_reg_1175_pp0_iter14_reg;
reg   [11:0] v261_5_0_addr_reg_1181;
reg   [11:0] v261_5_0_addr_reg_1181_pp0_iter9_reg;
reg   [11:0] v261_5_0_addr_reg_1181_pp0_iter10_reg;
reg   [11:0] v261_5_0_addr_reg_1181_pp0_iter11_reg;
reg   [11:0] v261_5_0_addr_reg_1181_pp0_iter12_reg;
reg   [11:0] v261_5_0_addr_reg_1181_pp0_iter13_reg;
reg   [11:0] v261_5_0_addr_reg_1181_pp0_iter14_reg;
reg   [11:0] v261_4_1_addr_reg_1187;
reg   [11:0] v261_4_1_addr_reg_1187_pp0_iter9_reg;
reg   [11:0] v261_4_1_addr_reg_1187_pp0_iter10_reg;
reg   [11:0] v261_4_1_addr_reg_1187_pp0_iter11_reg;
reg   [11:0] v261_4_1_addr_reg_1187_pp0_iter12_reg;
reg   [11:0] v261_4_1_addr_reg_1187_pp0_iter13_reg;
reg   [11:0] v261_4_1_addr_reg_1187_pp0_iter14_reg;
reg   [11:0] v261_4_0_addr_reg_1193;
reg   [11:0] v261_4_0_addr_reg_1193_pp0_iter9_reg;
reg   [11:0] v261_4_0_addr_reg_1193_pp0_iter10_reg;
reg   [11:0] v261_4_0_addr_reg_1193_pp0_iter11_reg;
reg   [11:0] v261_4_0_addr_reg_1193_pp0_iter12_reg;
reg   [11:0] v261_4_0_addr_reg_1193_pp0_iter13_reg;
reg   [11:0] v261_4_0_addr_reg_1193_pp0_iter14_reg;
reg   [11:0] v261_3_1_addr_reg_1199;
reg   [11:0] v261_3_1_addr_reg_1199_pp0_iter9_reg;
reg   [11:0] v261_3_1_addr_reg_1199_pp0_iter10_reg;
reg   [11:0] v261_3_1_addr_reg_1199_pp0_iter11_reg;
reg   [11:0] v261_3_1_addr_reg_1199_pp0_iter12_reg;
reg   [11:0] v261_3_1_addr_reg_1199_pp0_iter13_reg;
reg   [11:0] v261_3_1_addr_reg_1199_pp0_iter14_reg;
reg   [11:0] v261_3_0_addr_reg_1205;
reg   [11:0] v261_3_0_addr_reg_1205_pp0_iter9_reg;
reg   [11:0] v261_3_0_addr_reg_1205_pp0_iter10_reg;
reg   [11:0] v261_3_0_addr_reg_1205_pp0_iter11_reg;
reg   [11:0] v261_3_0_addr_reg_1205_pp0_iter12_reg;
reg   [11:0] v261_3_0_addr_reg_1205_pp0_iter13_reg;
reg   [11:0] v261_3_0_addr_reg_1205_pp0_iter14_reg;
reg   [11:0] v261_2_1_addr_reg_1211;
reg   [11:0] v261_2_1_addr_reg_1211_pp0_iter9_reg;
reg   [11:0] v261_2_1_addr_reg_1211_pp0_iter10_reg;
reg   [11:0] v261_2_1_addr_reg_1211_pp0_iter11_reg;
reg   [11:0] v261_2_1_addr_reg_1211_pp0_iter12_reg;
reg   [11:0] v261_2_1_addr_reg_1211_pp0_iter13_reg;
reg   [11:0] v261_2_1_addr_reg_1211_pp0_iter14_reg;
reg   [11:0] v261_2_0_addr_reg_1217;
reg   [11:0] v261_2_0_addr_reg_1217_pp0_iter9_reg;
reg   [11:0] v261_2_0_addr_reg_1217_pp0_iter10_reg;
reg   [11:0] v261_2_0_addr_reg_1217_pp0_iter11_reg;
reg   [11:0] v261_2_0_addr_reg_1217_pp0_iter12_reg;
reg   [11:0] v261_2_0_addr_reg_1217_pp0_iter13_reg;
reg   [11:0] v261_2_0_addr_reg_1217_pp0_iter14_reg;
reg   [11:0] v261_1_1_addr_reg_1223;
reg   [11:0] v261_1_1_addr_reg_1223_pp0_iter9_reg;
reg   [11:0] v261_1_1_addr_reg_1223_pp0_iter10_reg;
reg   [11:0] v261_1_1_addr_reg_1223_pp0_iter11_reg;
reg   [11:0] v261_1_1_addr_reg_1223_pp0_iter12_reg;
reg   [11:0] v261_1_1_addr_reg_1223_pp0_iter13_reg;
reg   [11:0] v261_1_1_addr_reg_1223_pp0_iter14_reg;
reg   [11:0] v261_1_0_addr_reg_1229;
reg   [11:0] v261_1_0_addr_reg_1229_pp0_iter9_reg;
reg   [11:0] v261_1_0_addr_reg_1229_pp0_iter10_reg;
reg   [11:0] v261_1_0_addr_reg_1229_pp0_iter11_reg;
reg   [11:0] v261_1_0_addr_reg_1229_pp0_iter12_reg;
reg   [11:0] v261_1_0_addr_reg_1229_pp0_iter13_reg;
reg   [11:0] v261_1_0_addr_reg_1229_pp0_iter14_reg;
reg   [11:0] v261_0_1_addr_reg_1235;
reg   [11:0] v261_0_1_addr_reg_1235_pp0_iter9_reg;
reg   [11:0] v261_0_1_addr_reg_1235_pp0_iter10_reg;
reg   [11:0] v261_0_1_addr_reg_1235_pp0_iter11_reg;
reg   [11:0] v261_0_1_addr_reg_1235_pp0_iter12_reg;
reg   [11:0] v261_0_1_addr_reg_1235_pp0_iter13_reg;
reg   [11:0] v261_0_1_addr_reg_1235_pp0_iter14_reg;
reg   [11:0] v261_0_0_addr_reg_1241;
reg   [11:0] v261_0_0_addr_reg_1241_pp0_iter9_reg;
reg   [11:0] v261_0_0_addr_reg_1241_pp0_iter10_reg;
reg   [11:0] v261_0_0_addr_reg_1241_pp0_iter11_reg;
reg   [11:0] v261_0_0_addr_reg_1241_pp0_iter12_reg;
reg   [11:0] v261_0_0_addr_reg_1241_pp0_iter13_reg;
reg   [11:0] v261_0_0_addr_reg_1241_pp0_iter14_reg;
wire   [31:0] v200_fu_765_p3;
reg   [31:0] v200_reg_1247;
wire   [31:0] grp_fu_498_p2;
reg   [31:0] v203_reg_1252;
wire   [31:0] v206_fu_776_p3;
reg   [31:0] v206_reg_1257;
wire   [31:0] grp_fu_502_p2;
reg   [31:0] v208_reg_1262;
wire   [31:0] v211_fu_787_p3;
reg   [31:0] v211_reg_1267;
wire   [31:0] grp_fu_506_p2;
reg   [31:0] v213_reg_1272;
wire   [31:0] v216_fu_798_p3;
reg   [31:0] v216_reg_1277;
wire   [31:0] grp_fu_510_p2;
reg   [31:0] v217_reg_1282;
wire   [31:0] v220_fu_809_p3;
reg   [31:0] v220_reg_1287;
wire   [31:0] grp_fu_514_p2;
reg   [31:0] v222_reg_1292;
wire   [31:0] v225_fu_820_p3;
reg   [31:0] v225_reg_1297;
wire   [31:0] grp_fu_518_p2;
reg   [31:0] v226_reg_1302;
wire   [31:0] v229_fu_831_p3;
reg   [31:0] v229_reg_1307;
wire   [31:0] grp_fu_522_p2;
reg   [31:0] v231_reg_1312;
wire   [31:0] v234_fu_842_p3;
reg   [31:0] v234_reg_1317;
wire   [31:0] grp_fu_526_p2;
reg   [31:0] v235_reg_1322;
wire   [31:0] v238_fu_853_p3;
reg   [31:0] v238_reg_1327;
wire   [31:0] grp_fu_530_p2;
reg   [31:0] v240_reg_1332;
wire   [31:0] v243_fu_864_p3;
reg   [31:0] v243_reg_1337;
wire   [31:0] grp_fu_534_p2;
reg   [31:0] v244_reg_1342;
wire   [31:0] v247_fu_875_p3;
reg   [31:0] v247_reg_1347;
wire   [31:0] grp_fu_538_p2;
reg   [31:0] v249_reg_1352;
wire   [31:0] v252_fu_886_p3;
reg   [31:0] v252_reg_1357;
wire   [31:0] grp_fu_542_p2;
reg   [31:0] v253_reg_1362;
wire   [31:0] grp_fu_450_p2;
reg   [31:0] v204_reg_1367;
wire   [31:0] grp_fu_454_p2;
reg   [31:0] v209_reg_1372;
wire   [31:0] grp_fu_458_p2;
reg   [31:0] v214_reg_1377;
wire   [31:0] grp_fu_462_p2;
reg   [31:0] v218_reg_1382;
wire   [31:0] grp_fu_466_p2;
reg   [31:0] v223_reg_1387;
wire   [31:0] grp_fu_470_p2;
reg   [31:0] v227_reg_1392;
wire   [31:0] grp_fu_474_p2;
reg   [31:0] v232_reg_1397;
wire   [31:0] grp_fu_478_p2;
reg   [31:0] v236_reg_1402;
wire   [31:0] grp_fu_482_p2;
reg   [31:0] v241_reg_1407;
wire   [31:0] grp_fu_486_p2;
reg   [31:0] v245_reg_1412;
wire   [31:0] grp_fu_490_p2;
reg   [31:0] v250_reg_1417;
wire   [31:0] grp_fu_494_p2;
reg   [31:0] v254_reg_1422;
wire   [63:0] p_cast3_fu_672_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln297_fu_692_p1;
wire   [63:0] zext_ln357_2_fu_746_p1;
reg   [7:0] v198_fu_112;
wire   [7:0] add_ln292_fu_653_p2;
wire    ap_loop_init;
reg   [7:0] v197_fu_116;
wire   [7:0] select_ln291_1_fu_611_p3;
reg   [11:0] indvar_flatten_fu_120;
wire   [11:0] add_ln291_1_fu_574_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v262_0_ce0_local;
reg    v262_1_ce0_local;
reg    v262_2_ce0_local;
reg    v262_3_ce0_local;
reg    v262_4_ce0_local;
reg    v262_5_ce0_local;
reg    v263_0_ce0_local;
reg    v263_1_ce0_local;
reg    v261_0_0_ce1_local;
reg    v261_0_0_we0_local;
wire   [31:0] bitcast_ln300_fu_893_p1;
reg    v261_0_0_ce0_local;
reg    v261_0_1_ce1_local;
reg    v261_0_1_we0_local;
wire   [31:0] bitcast_ln306_fu_897_p1;
reg    v261_0_1_ce0_local;
reg    v261_1_0_ce1_local;
reg    v261_1_0_we0_local;
wire   [31:0] bitcast_ln312_fu_901_p1;
reg    v261_1_0_ce0_local;
reg    v261_1_1_ce1_local;
reg    v261_1_1_we0_local;
wire   [31:0] bitcast_ln317_fu_905_p1;
reg    v261_1_1_ce0_local;
reg    v261_2_0_ce1_local;
reg    v261_2_0_we0_local;
wire   [31:0] bitcast_ln323_fu_909_p1;
reg    v261_2_0_ce0_local;
reg    v261_2_1_ce1_local;
reg    v261_2_1_we0_local;
wire   [31:0] bitcast_ln328_fu_913_p1;
reg    v261_2_1_ce0_local;
reg    v261_3_0_ce1_local;
reg    v261_3_0_we0_local;
wire   [31:0] bitcast_ln334_fu_917_p1;
reg    v261_3_0_ce0_local;
reg    v261_3_1_ce1_local;
reg    v261_3_1_we0_local;
wire   [31:0] bitcast_ln339_fu_921_p1;
reg    v261_3_1_ce0_local;
reg    v261_4_0_ce1_local;
reg    v261_4_0_we0_local;
wire   [31:0] bitcast_ln345_fu_925_p1;
reg    v261_4_0_ce0_local;
reg    v261_4_1_ce1_local;
reg    v261_4_1_we0_local;
wire   [31:0] bitcast_ln350_fu_929_p1;
reg    v261_4_1_ce0_local;
reg    v261_5_0_ce1_local;
reg    v261_5_0_we0_local;
wire   [31:0] bitcast_ln356_fu_933_p1;
reg    v261_5_0_ce0_local;
reg    v261_5_1_ce1_local;
reg    v261_5_1_we0_local;
wire   [31:0] bitcast_ln361_fu_937_p1;
reg    v261_5_1_ce0_local;
wire   [0:0] icmp_ln292_fu_597_p2;
wire   [7:0] add_ln291_fu_591_p2;
wire   [7:0] mul_ln291_fu_623_p0;
wire   [9:0] mul_ln291_fu_623_p1;
wire   [16:0] mul_ln291_fu_623_p2;
wire   [7:0] select_ln291_fu_603_p3;
wire   [12:0] grp_fu_941_p3;
wire   [14:0] zext_ln357_fu_681_p1;
wire   [14:0] add_ln297_fu_687_p2;
wire   [31:0] v199_fu_761_p1;
wire   [31:0] v205_fu_772_p1;
wire   [31:0] v210_fu_783_p1;
wire   [31:0] v215_fu_794_p1;
wire   [31:0] v219_fu_805_p1;
wire   [31:0] v224_fu_816_p1;
wire   [31:0] v228_fu_827_p1;
wire   [31:0] v233_fu_838_p1;
wire   [31:0] v237_fu_849_p1;
wire   [31:0] v242_fu_860_p1;
wire   [31:0] v246_fu_871_p1;
wire   [31:0] v251_fu_882_p1;
wire   [7:0] grp_fu_941_p0;
wire   [5:0] grp_fu_941_p1;
wire   [7:0] grp_fu_941_p2;
wire   [6:0] grp_fu_949_p0;
wire   [5:0] grp_fu_949_p1;
wire   [6:0] grp_fu_949_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [12:0] grp_fu_941_p10;
wire   [11:0] grp_fu_949_p10;
wire   [11:0] grp_fu_949_p20;
wire   [16:0] mul_ln291_fu_623_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 v198_fu_112 = 8'd0;
#0 v197_fu_116 = 8'd0;
#0 indvar_flatten_fu_120 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(v200_reg_1247),.din1(v203_reg_1252),.ce(1'b1),.dout(grp_fu_450_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(v206_reg_1257),.din1(v208_reg_1262),.ce(1'b1),.dout(grp_fu_454_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(v211_reg_1267),.din1(v213_reg_1272),.ce(1'b1),.dout(grp_fu_458_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(v216_reg_1277),.din1(v217_reg_1282),.ce(1'b1),.dout(grp_fu_462_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(v220_reg_1287),.din1(v222_reg_1292),.ce(1'b1),.dout(grp_fu_466_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(v225_reg_1297),.din1(v226_reg_1302),.ce(1'b1),.dout(grp_fu_470_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(v229_reg_1307),.din1(v231_reg_1312),.ce(1'b1),.dout(grp_fu_474_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(v234_reg_1317),.din1(v235_reg_1322),.ce(1'b1),.dout(grp_fu_478_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(v238_reg_1327),.din1(v240_reg_1332),.ce(1'b1),.dout(grp_fu_482_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(v243_reg_1337),.din1(v244_reg_1342),.ce(1'b1),.dout(grp_fu_486_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(v247_reg_1347),.din1(v249_reg_1352),.ce(1'b1),.dout(grp_fu_490_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(v252_reg_1357),.din1(v253_reg_1362),.ce(1'b1),.dout(grp_fu_494_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(v201_fu_698_p1),.din1(v202_fu_728_p1),.ce(1'b1),.dout(grp_fu_498_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(v201_fu_698_p1),.din1(v207_fu_737_p1),.ce(1'b1),.dout(grp_fu_502_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(v212_fu_703_p1),.din1(v202_fu_728_p1),.ce(1'b1),.dout(grp_fu_506_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(v212_fu_703_p1),.din1(v207_fu_737_p1),.ce(1'b1),.dout(grp_fu_510_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(v221_fu_708_p1),.din1(v202_fu_728_p1),.ce(1'b1),.dout(grp_fu_514_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(v221_fu_708_p1),.din1(v207_fu_737_p1),.ce(1'b1),.dout(grp_fu_518_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(v230_fu_713_p1),.din1(v202_fu_728_p1),.ce(1'b1),.dout(grp_fu_522_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(v230_fu_713_p1),.din1(v207_fu_737_p1),.ce(1'b1),.dout(grp_fu_526_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(v239_fu_718_p1),.din1(v202_fu_728_p1),.ce(1'b1),.dout(grp_fu_530_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(v239_fu_718_p1),.din1(v207_fu_737_p1),.ce(1'b1),.dout(grp_fu_534_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(v248_fu_723_p1),.din1(v202_fu_728_p1),.ce(1'b1),.dout(grp_fu_538_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(v248_fu_723_p1),.din1(v207_fu_737_p1),.ce(1'b1),.dout(grp_fu_542_p2));
kernel_3mm_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U25(.din0(mul_ln291_fu_623_p0),.din1(mul_ln291_fu_623_p1),.dout(mul_ln291_fu_623_p2));
kernel_3mm_mac_muladd_8ns_6ns_8ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_6ns_8ns_13_4_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_941_p0),.din1(grp_fu_941_p1),.din2(grp_fu_941_p2),.ce(1'b1),.dout(grp_fu_941_p3));
kernel_3mm_mac_muladd_7ns_6ns_7ns_12_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.dout_WIDTH( 12 ))
mac_muladd_7ns_6ns_7ns_12_4_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_949_p0),.din1(grp_fu_949_p1),.din2(grp_fu_949_p2),.ce(1'b1),.dout(grp_fu_949_p3));
kernel_3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln291_fu_568_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_120 <= add_ln291_1_fu_574_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_120 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v197_fu_116 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v197_fu_116 <= select_ln291_1_fu_611_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v198_fu_112 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v198_fu_112 <= add_ln292_fu_653_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        add_ln357_reg_1104 <= grp_fu_949_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln357_reg_1104_pp0_iter6_reg <= add_ln357_reg_1104;
        add_ln357_reg_1104_pp0_iter7_reg <= add_ln357_reg_1104_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln_reg_1018_pp0_iter2_reg <= lshr_ln_reg_1018;
        lshr_ln_reg_1018_pp0_iter3_reg <= lshr_ln_reg_1018_pp0_iter2_reg;
        v200_reg_1247 <= v200_fu_765_p3;
        v203_reg_1252 <= grp_fu_498_p2;
        v204_reg_1367 <= grp_fu_450_p2;
        v206_reg_1257 <= v206_fu_776_p3;
        v208_reg_1262 <= grp_fu_502_p2;
        v209_reg_1372 <= grp_fu_454_p2;
        v211_reg_1267 <= v211_fu_787_p3;
        v213_reg_1272 <= grp_fu_506_p2;
        v214_reg_1377 <= grp_fu_458_p2;
        v216_reg_1277 <= v216_fu_798_p3;
        v217_reg_1282 <= grp_fu_510_p2;
        v218_reg_1382 <= grp_fu_462_p2;
        v220_reg_1287 <= v220_fu_809_p3;
        v222_reg_1292 <= grp_fu_514_p2;
        v223_reg_1387 <= grp_fu_466_p2;
        v225_reg_1297 <= v225_fu_820_p3;
        v226_reg_1302 <= grp_fu_518_p2;
        v227_reg_1392 <= grp_fu_470_p2;
        v229_reg_1307 <= v229_fu_831_p3;
        v231_reg_1312 <= grp_fu_522_p2;
        v232_reg_1397 <= grp_fu_474_p2;
        v234_reg_1317 <= v234_fu_842_p3;
        v235_reg_1322 <= grp_fu_526_p2;
        v236_reg_1402 <= grp_fu_478_p2;
        v238_reg_1327 <= v238_fu_853_p3;
        v240_reg_1332 <= grp_fu_530_p2;
        v241_reg_1407 <= grp_fu_482_p2;
        v243_reg_1337 <= v243_fu_864_p3;
        v244_reg_1342 <= grp_fu_534_p2;
        v245_reg_1412 <= grp_fu_486_p2;
        v247_reg_1347 <= v247_fu_875_p3;
        v249_reg_1352 <= grp_fu_538_p2;
        v250_reg_1417 <= grp_fu_490_p2;
        v252_reg_1357 <= v252_fu_886_p3;
        v253_reg_1362 <= grp_fu_542_p2;
        v254_reg_1422 <= grp_fu_494_p2;
        v261_0_0_addr_reg_1241 <= zext_ln357_2_fu_746_p1;
        v261_0_0_addr_reg_1241_pp0_iter10_reg <= v261_0_0_addr_reg_1241_pp0_iter9_reg;
        v261_0_0_addr_reg_1241_pp0_iter11_reg <= v261_0_0_addr_reg_1241_pp0_iter10_reg;
        v261_0_0_addr_reg_1241_pp0_iter12_reg <= v261_0_0_addr_reg_1241_pp0_iter11_reg;
        v261_0_0_addr_reg_1241_pp0_iter13_reg <= v261_0_0_addr_reg_1241_pp0_iter12_reg;
        v261_0_0_addr_reg_1241_pp0_iter14_reg <= v261_0_0_addr_reg_1241_pp0_iter13_reg;
        v261_0_0_addr_reg_1241_pp0_iter9_reg <= v261_0_0_addr_reg_1241;
        v261_0_1_addr_reg_1235 <= zext_ln357_2_fu_746_p1;
        v261_0_1_addr_reg_1235_pp0_iter10_reg <= v261_0_1_addr_reg_1235_pp0_iter9_reg;
        v261_0_1_addr_reg_1235_pp0_iter11_reg <= v261_0_1_addr_reg_1235_pp0_iter10_reg;
        v261_0_1_addr_reg_1235_pp0_iter12_reg <= v261_0_1_addr_reg_1235_pp0_iter11_reg;
        v261_0_1_addr_reg_1235_pp0_iter13_reg <= v261_0_1_addr_reg_1235_pp0_iter12_reg;
        v261_0_1_addr_reg_1235_pp0_iter14_reg <= v261_0_1_addr_reg_1235_pp0_iter13_reg;
        v261_0_1_addr_reg_1235_pp0_iter9_reg <= v261_0_1_addr_reg_1235;
        v261_1_0_addr_reg_1229 <= zext_ln357_2_fu_746_p1;
        v261_1_0_addr_reg_1229_pp0_iter10_reg <= v261_1_0_addr_reg_1229_pp0_iter9_reg;
        v261_1_0_addr_reg_1229_pp0_iter11_reg <= v261_1_0_addr_reg_1229_pp0_iter10_reg;
        v261_1_0_addr_reg_1229_pp0_iter12_reg <= v261_1_0_addr_reg_1229_pp0_iter11_reg;
        v261_1_0_addr_reg_1229_pp0_iter13_reg <= v261_1_0_addr_reg_1229_pp0_iter12_reg;
        v261_1_0_addr_reg_1229_pp0_iter14_reg <= v261_1_0_addr_reg_1229_pp0_iter13_reg;
        v261_1_0_addr_reg_1229_pp0_iter9_reg <= v261_1_0_addr_reg_1229;
        v261_1_1_addr_reg_1223 <= zext_ln357_2_fu_746_p1;
        v261_1_1_addr_reg_1223_pp0_iter10_reg <= v261_1_1_addr_reg_1223_pp0_iter9_reg;
        v261_1_1_addr_reg_1223_pp0_iter11_reg <= v261_1_1_addr_reg_1223_pp0_iter10_reg;
        v261_1_1_addr_reg_1223_pp0_iter12_reg <= v261_1_1_addr_reg_1223_pp0_iter11_reg;
        v261_1_1_addr_reg_1223_pp0_iter13_reg <= v261_1_1_addr_reg_1223_pp0_iter12_reg;
        v261_1_1_addr_reg_1223_pp0_iter14_reg <= v261_1_1_addr_reg_1223_pp0_iter13_reg;
        v261_1_1_addr_reg_1223_pp0_iter9_reg <= v261_1_1_addr_reg_1223;
        v261_2_0_addr_reg_1217 <= zext_ln357_2_fu_746_p1;
        v261_2_0_addr_reg_1217_pp0_iter10_reg <= v261_2_0_addr_reg_1217_pp0_iter9_reg;
        v261_2_0_addr_reg_1217_pp0_iter11_reg <= v261_2_0_addr_reg_1217_pp0_iter10_reg;
        v261_2_0_addr_reg_1217_pp0_iter12_reg <= v261_2_0_addr_reg_1217_pp0_iter11_reg;
        v261_2_0_addr_reg_1217_pp0_iter13_reg <= v261_2_0_addr_reg_1217_pp0_iter12_reg;
        v261_2_0_addr_reg_1217_pp0_iter14_reg <= v261_2_0_addr_reg_1217_pp0_iter13_reg;
        v261_2_0_addr_reg_1217_pp0_iter9_reg <= v261_2_0_addr_reg_1217;
        v261_2_1_addr_reg_1211 <= zext_ln357_2_fu_746_p1;
        v261_2_1_addr_reg_1211_pp0_iter10_reg <= v261_2_1_addr_reg_1211_pp0_iter9_reg;
        v261_2_1_addr_reg_1211_pp0_iter11_reg <= v261_2_1_addr_reg_1211_pp0_iter10_reg;
        v261_2_1_addr_reg_1211_pp0_iter12_reg <= v261_2_1_addr_reg_1211_pp0_iter11_reg;
        v261_2_1_addr_reg_1211_pp0_iter13_reg <= v261_2_1_addr_reg_1211_pp0_iter12_reg;
        v261_2_1_addr_reg_1211_pp0_iter14_reg <= v261_2_1_addr_reg_1211_pp0_iter13_reg;
        v261_2_1_addr_reg_1211_pp0_iter9_reg <= v261_2_1_addr_reg_1211;
        v261_3_0_addr_reg_1205 <= zext_ln357_2_fu_746_p1;
        v261_3_0_addr_reg_1205_pp0_iter10_reg <= v261_3_0_addr_reg_1205_pp0_iter9_reg;
        v261_3_0_addr_reg_1205_pp0_iter11_reg <= v261_3_0_addr_reg_1205_pp0_iter10_reg;
        v261_3_0_addr_reg_1205_pp0_iter12_reg <= v261_3_0_addr_reg_1205_pp0_iter11_reg;
        v261_3_0_addr_reg_1205_pp0_iter13_reg <= v261_3_0_addr_reg_1205_pp0_iter12_reg;
        v261_3_0_addr_reg_1205_pp0_iter14_reg <= v261_3_0_addr_reg_1205_pp0_iter13_reg;
        v261_3_0_addr_reg_1205_pp0_iter9_reg <= v261_3_0_addr_reg_1205;
        v261_3_1_addr_reg_1199 <= zext_ln357_2_fu_746_p1;
        v261_3_1_addr_reg_1199_pp0_iter10_reg <= v261_3_1_addr_reg_1199_pp0_iter9_reg;
        v261_3_1_addr_reg_1199_pp0_iter11_reg <= v261_3_1_addr_reg_1199_pp0_iter10_reg;
        v261_3_1_addr_reg_1199_pp0_iter12_reg <= v261_3_1_addr_reg_1199_pp0_iter11_reg;
        v261_3_1_addr_reg_1199_pp0_iter13_reg <= v261_3_1_addr_reg_1199_pp0_iter12_reg;
        v261_3_1_addr_reg_1199_pp0_iter14_reg <= v261_3_1_addr_reg_1199_pp0_iter13_reg;
        v261_3_1_addr_reg_1199_pp0_iter9_reg <= v261_3_1_addr_reg_1199;
        v261_4_0_addr_reg_1193 <= zext_ln357_2_fu_746_p1;
        v261_4_0_addr_reg_1193_pp0_iter10_reg <= v261_4_0_addr_reg_1193_pp0_iter9_reg;
        v261_4_0_addr_reg_1193_pp0_iter11_reg <= v261_4_0_addr_reg_1193_pp0_iter10_reg;
        v261_4_0_addr_reg_1193_pp0_iter12_reg <= v261_4_0_addr_reg_1193_pp0_iter11_reg;
        v261_4_0_addr_reg_1193_pp0_iter13_reg <= v261_4_0_addr_reg_1193_pp0_iter12_reg;
        v261_4_0_addr_reg_1193_pp0_iter14_reg <= v261_4_0_addr_reg_1193_pp0_iter13_reg;
        v261_4_0_addr_reg_1193_pp0_iter9_reg <= v261_4_0_addr_reg_1193;
        v261_4_1_addr_reg_1187 <= zext_ln357_2_fu_746_p1;
        v261_4_1_addr_reg_1187_pp0_iter10_reg <= v261_4_1_addr_reg_1187_pp0_iter9_reg;
        v261_4_1_addr_reg_1187_pp0_iter11_reg <= v261_4_1_addr_reg_1187_pp0_iter10_reg;
        v261_4_1_addr_reg_1187_pp0_iter12_reg <= v261_4_1_addr_reg_1187_pp0_iter11_reg;
        v261_4_1_addr_reg_1187_pp0_iter13_reg <= v261_4_1_addr_reg_1187_pp0_iter12_reg;
        v261_4_1_addr_reg_1187_pp0_iter14_reg <= v261_4_1_addr_reg_1187_pp0_iter13_reg;
        v261_4_1_addr_reg_1187_pp0_iter9_reg <= v261_4_1_addr_reg_1187;
        v261_5_0_addr_reg_1181 <= zext_ln357_2_fu_746_p1;
        v261_5_0_addr_reg_1181_pp0_iter10_reg <= v261_5_0_addr_reg_1181_pp0_iter9_reg;
        v261_5_0_addr_reg_1181_pp0_iter11_reg <= v261_5_0_addr_reg_1181_pp0_iter10_reg;
        v261_5_0_addr_reg_1181_pp0_iter12_reg <= v261_5_0_addr_reg_1181_pp0_iter11_reg;
        v261_5_0_addr_reg_1181_pp0_iter13_reg <= v261_5_0_addr_reg_1181_pp0_iter12_reg;
        v261_5_0_addr_reg_1181_pp0_iter14_reg <= v261_5_0_addr_reg_1181_pp0_iter13_reg;
        v261_5_0_addr_reg_1181_pp0_iter9_reg <= v261_5_0_addr_reg_1181;
        v261_5_1_addr_reg_1175 <= zext_ln357_2_fu_746_p1;
        v261_5_1_addr_reg_1175_pp0_iter10_reg <= v261_5_1_addr_reg_1175_pp0_iter9_reg;
        v261_5_1_addr_reg_1175_pp0_iter11_reg <= v261_5_1_addr_reg_1175_pp0_iter10_reg;
        v261_5_1_addr_reg_1175_pp0_iter12_reg <= v261_5_1_addr_reg_1175_pp0_iter11_reg;
        v261_5_1_addr_reg_1175_pp0_iter13_reg <= v261_5_1_addr_reg_1175_pp0_iter12_reg;
        v261_5_1_addr_reg_1175_pp0_iter14_reg <= v261_5_1_addr_reg_1175_pp0_iter13_reg;
        v261_5_1_addr_reg_1175_pp0_iter9_reg <= v261_5_1_addr_reg_1175;
        v262_0_load_reg_1074 <= v262_0_q0;
        v262_1_load_reg_1079 <= v262_1_q0;
        v262_2_load_reg_1084 <= v262_2_q0;
        v262_3_load_reg_1089 <= v262_3_q0;
        v262_4_load_reg_1094 <= v262_4_q0;
        v262_5_load_reg_1099 <= v262_5_q0;
        v263_0_load_reg_1109 <= v263_0_q0;
        v263_1_load_reg_1114 <= v263_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_1018 <= {{select_ln291_fu_603_p3[7:1]}};
        tmp_reg_1008 <= {{mul_ln291_fu_623_p2[16:11]}};
        zext_ln290_cast_reg_999[7 : 0] <= zext_ln290_cast_fu_546_p1[7 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln291_fu_568_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_0_0_ce0_local = 1'b1;
    end else begin
        v261_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_0_0_ce1_local = 1'b1;
    end else begin
        v261_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_0_0_we0_local = 1'b1;
    end else begin
        v261_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_0_1_ce0_local = 1'b1;
    end else begin
        v261_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_0_1_ce1_local = 1'b1;
    end else begin
        v261_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_0_1_we0_local = 1'b1;
    end else begin
        v261_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_1_0_ce0_local = 1'b1;
    end else begin
        v261_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_1_0_ce1_local = 1'b1;
    end else begin
        v261_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_1_0_we0_local = 1'b1;
    end else begin
        v261_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_1_1_ce0_local = 1'b1;
    end else begin
        v261_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_1_1_ce1_local = 1'b1;
    end else begin
        v261_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_1_1_we0_local = 1'b1;
    end else begin
        v261_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_2_0_ce0_local = 1'b1;
    end else begin
        v261_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_2_0_ce1_local = 1'b1;
    end else begin
        v261_2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_2_0_we0_local = 1'b1;
    end else begin
        v261_2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_2_1_ce0_local = 1'b1;
    end else begin
        v261_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_2_1_ce1_local = 1'b1;
    end else begin
        v261_2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_2_1_we0_local = 1'b1;
    end else begin
        v261_2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_3_0_ce0_local = 1'b1;
    end else begin
        v261_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_3_0_ce1_local = 1'b1;
    end else begin
        v261_3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_3_0_we0_local = 1'b1;
    end else begin
        v261_3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_3_1_ce0_local = 1'b1;
    end else begin
        v261_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_3_1_ce1_local = 1'b1;
    end else begin
        v261_3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_3_1_we0_local = 1'b1;
    end else begin
        v261_3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_4_0_ce0_local = 1'b1;
    end else begin
        v261_4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_4_0_ce1_local = 1'b1;
    end else begin
        v261_4_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_4_0_we0_local = 1'b1;
    end else begin
        v261_4_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_4_1_ce0_local = 1'b1;
    end else begin
        v261_4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_4_1_ce1_local = 1'b1;
    end else begin
        v261_4_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_4_1_we0_local = 1'b1;
    end else begin
        v261_4_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_5_0_ce0_local = 1'b1;
    end else begin
        v261_5_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_5_0_ce1_local = 1'b1;
    end else begin
        v261_5_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_5_0_we0_local = 1'b1;
    end else begin
        v261_5_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_5_1_ce0_local = 1'b1;
    end else begin
        v261_5_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v261_5_1_ce1_local = 1'b1;
    end else begin
        v261_5_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        v261_5_1_we0_local = 1'b1;
    end else begin
        v261_5_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v262_0_ce0_local = 1'b1;
    end else begin
        v262_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v262_1_ce0_local = 1'b1;
    end else begin
        v262_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v262_2_ce0_local = 1'b1;
    end else begin
        v262_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v262_3_ce0_local = 1'b1;
    end else begin
        v262_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v262_4_ce0_local = 1'b1;
    end else begin
        v262_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v262_5_ce0_local = 1'b1;
    end else begin
        v262_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v263_0_ce0_local = 1'b1;
    end else begin
        v263_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v263_1_ce0_local = 1'b1;
    end else begin
        v263_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln291_1_fu_574_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln291_fu_591_p2 = (v197_fu_116 + 8'd6);
assign add_ln292_fu_653_p2 = (select_ln291_fu_603_p3 + 8'd2);
assign add_ln297_fu_687_p2 = (phi_mul + zext_ln357_fu_681_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln300_fu_893_p1 = v204_reg_1367;
assign bitcast_ln306_fu_897_p1 = v209_reg_1372;
assign bitcast_ln312_fu_901_p1 = v214_reg_1377;
assign bitcast_ln317_fu_905_p1 = v218_reg_1382;
assign bitcast_ln323_fu_909_p1 = v223_reg_1387;
assign bitcast_ln328_fu_913_p1 = v227_reg_1392;
assign bitcast_ln334_fu_917_p1 = v232_reg_1397;
assign bitcast_ln339_fu_921_p1 = v236_reg_1402;
assign bitcast_ln345_fu_925_p1 = v241_reg_1407;
assign bitcast_ln350_fu_929_p1 = v245_reg_1412;
assign bitcast_ln356_fu_933_p1 = v250_reg_1417;
assign bitcast_ln361_fu_937_p1 = v254_reg_1422;
assign grp_fu_941_p0 = 13'd200;
assign grp_fu_941_p1 = grp_fu_941_p10;
assign grp_fu_941_p10 = tmp_fu_629_p4;
assign grp_fu_941_p2 = zext_ln290_cast_reg_999;
assign grp_fu_949_p0 = 12'd95;
assign grp_fu_949_p1 = grp_fu_949_p10;
assign grp_fu_949_p10 = tmp_reg_1008;
assign grp_fu_949_p2 = grp_fu_949_p20;
assign grp_fu_949_p20 = lshr_ln_reg_1018_pp0_iter3_reg;
assign icmp_ln291_fu_568_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2850) ? 1'b1 : 1'b0);
assign icmp_ln292_fu_597_p2 = ((v198_fu_112 < 8'd190) ? 1'b1 : 1'b0);
assign mul_ln291_fu_623_p0 = mul_ln291_fu_623_p00;
assign mul_ln291_fu_623_p00 = select_ln291_1_fu_611_p3;
assign mul_ln291_fu_623_p1 = 17'd342;
assign p_cast3_fu_672_p1 = grp_fu_941_p3;
assign select_ln291_1_fu_611_p3 = ((icmp_ln292_fu_597_p2[0:0] == 1'b1) ? v197_fu_116 : add_ln291_fu_591_p2);
assign select_ln291_fu_603_p3 = ((icmp_ln292_fu_597_p2[0:0] == 1'b1) ? v198_fu_112 : 8'd0);
assign tmp_fu_629_p4 = {{mul_ln291_fu_623_p2[16:11]}};
assign v199_fu_761_p1 = v261_0_0_q1;
assign v200_fu_765_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v199_fu_761_p1);
assign v201_fu_698_p1 = v262_0_load_reg_1074;
assign v202_fu_728_p1 = v263_0_load_reg_1109;
assign v205_fu_772_p1 = v261_0_1_q1;
assign v206_fu_776_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v205_fu_772_p1);
assign v207_fu_737_p1 = v263_1_load_reg_1114;
assign v210_fu_783_p1 = v261_1_0_q1;
assign v211_fu_787_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v210_fu_783_p1);
assign v212_fu_703_p1 = v262_1_load_reg_1079;
assign v215_fu_794_p1 = v261_1_1_q1;
assign v216_fu_798_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v215_fu_794_p1);
assign v219_fu_805_p1 = v261_2_0_q1;
assign v220_fu_809_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v219_fu_805_p1);
assign v221_fu_708_p1 = v262_2_load_reg_1084;
assign v224_fu_816_p1 = v261_2_1_q1;
assign v225_fu_820_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v224_fu_816_p1);
assign v228_fu_827_p1 = v261_3_0_q1;
assign v229_fu_831_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v228_fu_827_p1);
assign v230_fu_713_p1 = v262_3_load_reg_1089;
assign v233_fu_838_p1 = v261_3_1_q1;
assign v234_fu_842_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v233_fu_838_p1);
assign v237_fu_849_p1 = v261_4_0_q1;
assign v238_fu_853_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v237_fu_849_p1);
assign v239_fu_718_p1 = v262_4_load_reg_1094;
assign v242_fu_860_p1 = v261_4_1_q1;
assign v243_fu_864_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v242_fu_860_p1);
assign v246_fu_871_p1 = v261_5_0_q1;
assign v247_fu_875_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v246_fu_871_p1);
assign v248_fu_723_p1 = v262_5_load_reg_1099;
assign v251_fu_882_p1 = v261_5_1_q1;
assign v252_fu_886_p3 = ((cmp11_i[0:0] == 1'b1) ? 32'd0 : v251_fu_882_p1);
assign v261_0_0_address0 = v261_0_0_addr_reg_1241_pp0_iter14_reg;
assign v261_0_0_address1 = zext_ln357_2_fu_746_p1;
assign v261_0_0_ce0 = v261_0_0_ce0_local;
assign v261_0_0_ce1 = v261_0_0_ce1_local;
assign v261_0_0_d0 = bitcast_ln300_fu_893_p1;
assign v261_0_0_we0 = v261_0_0_we0_local;
assign v261_0_1_address0 = v261_0_1_addr_reg_1235_pp0_iter14_reg;
assign v261_0_1_address1 = zext_ln357_2_fu_746_p1;
assign v261_0_1_ce0 = v261_0_1_ce0_local;
assign v261_0_1_ce1 = v261_0_1_ce1_local;
assign v261_0_1_d0 = bitcast_ln306_fu_897_p1;
assign v261_0_1_we0 = v261_0_1_we0_local;
assign v261_1_0_address0 = v261_1_0_addr_reg_1229_pp0_iter14_reg;
assign v261_1_0_address1 = zext_ln357_2_fu_746_p1;
assign v261_1_0_ce0 = v261_1_0_ce0_local;
assign v261_1_0_ce1 = v261_1_0_ce1_local;
assign v261_1_0_d0 = bitcast_ln312_fu_901_p1;
assign v261_1_0_we0 = v261_1_0_we0_local;
assign v261_1_1_address0 = v261_1_1_addr_reg_1223_pp0_iter14_reg;
assign v261_1_1_address1 = zext_ln357_2_fu_746_p1;
assign v261_1_1_ce0 = v261_1_1_ce0_local;
assign v261_1_1_ce1 = v261_1_1_ce1_local;
assign v261_1_1_d0 = bitcast_ln317_fu_905_p1;
assign v261_1_1_we0 = v261_1_1_we0_local;
assign v261_2_0_address0 = v261_2_0_addr_reg_1217_pp0_iter14_reg;
assign v261_2_0_address1 = zext_ln357_2_fu_746_p1;
assign v261_2_0_ce0 = v261_2_0_ce0_local;
assign v261_2_0_ce1 = v261_2_0_ce1_local;
assign v261_2_0_d0 = bitcast_ln323_fu_909_p1;
assign v261_2_0_we0 = v261_2_0_we0_local;
assign v261_2_1_address0 = v261_2_1_addr_reg_1211_pp0_iter14_reg;
assign v261_2_1_address1 = zext_ln357_2_fu_746_p1;
assign v261_2_1_ce0 = v261_2_1_ce0_local;
assign v261_2_1_ce1 = v261_2_1_ce1_local;
assign v261_2_1_d0 = bitcast_ln328_fu_913_p1;
assign v261_2_1_we0 = v261_2_1_we0_local;
assign v261_3_0_address0 = v261_3_0_addr_reg_1205_pp0_iter14_reg;
assign v261_3_0_address1 = zext_ln357_2_fu_746_p1;
assign v261_3_0_ce0 = v261_3_0_ce0_local;
assign v261_3_0_ce1 = v261_3_0_ce1_local;
assign v261_3_0_d0 = bitcast_ln334_fu_917_p1;
assign v261_3_0_we0 = v261_3_0_we0_local;
assign v261_3_1_address0 = v261_3_1_addr_reg_1199_pp0_iter14_reg;
assign v261_3_1_address1 = zext_ln357_2_fu_746_p1;
assign v261_3_1_ce0 = v261_3_1_ce0_local;
assign v261_3_1_ce1 = v261_3_1_ce1_local;
assign v261_3_1_d0 = bitcast_ln339_fu_921_p1;
assign v261_3_1_we0 = v261_3_1_we0_local;
assign v261_4_0_address0 = v261_4_0_addr_reg_1193_pp0_iter14_reg;
assign v261_4_0_address1 = zext_ln357_2_fu_746_p1;
assign v261_4_0_ce0 = v261_4_0_ce0_local;
assign v261_4_0_ce1 = v261_4_0_ce1_local;
assign v261_4_0_d0 = bitcast_ln345_fu_925_p1;
assign v261_4_0_we0 = v261_4_0_we0_local;
assign v261_4_1_address0 = v261_4_1_addr_reg_1187_pp0_iter14_reg;
assign v261_4_1_address1 = zext_ln357_2_fu_746_p1;
assign v261_4_1_ce0 = v261_4_1_ce0_local;
assign v261_4_1_ce1 = v261_4_1_ce1_local;
assign v261_4_1_d0 = bitcast_ln350_fu_929_p1;
assign v261_4_1_we0 = v261_4_1_we0_local;
assign v261_5_0_address0 = v261_5_0_addr_reg_1181_pp0_iter14_reg;
assign v261_5_0_address1 = zext_ln357_2_fu_746_p1;
assign v261_5_0_ce0 = v261_5_0_ce0_local;
assign v261_5_0_ce1 = v261_5_0_ce1_local;
assign v261_5_0_d0 = bitcast_ln356_fu_933_p1;
assign v261_5_0_we0 = v261_5_0_we0_local;
assign v261_5_1_address0 = v261_5_1_addr_reg_1175_pp0_iter14_reg;
assign v261_5_1_address1 = zext_ln357_2_fu_746_p1;
assign v261_5_1_ce0 = v261_5_1_ce0_local;
assign v261_5_1_ce1 = v261_5_1_ce1_local;
assign v261_5_1_d0 = bitcast_ln361_fu_937_p1;
assign v261_5_1_we0 = v261_5_1_we0_local;
assign v262_0_address0 = p_cast3_fu_672_p1;
assign v262_0_ce0 = v262_0_ce0_local;
assign v262_1_address0 = p_cast3_fu_672_p1;
assign v262_1_ce0 = v262_1_ce0_local;
assign v262_2_address0 = p_cast3_fu_672_p1;
assign v262_2_ce0 = v262_2_ce0_local;
assign v262_3_address0 = p_cast3_fu_672_p1;
assign v262_3_ce0 = v262_3_ce0_local;
assign v262_4_address0 = p_cast3_fu_672_p1;
assign v262_4_ce0 = v262_4_ce0_local;
assign v262_5_address0 = p_cast3_fu_672_p1;
assign v262_5_ce0 = v262_5_ce0_local;
assign v263_0_address0 = zext_ln297_fu_692_p1;
assign v263_0_ce0 = v263_0_ce0_local;
assign v263_1_address0 = zext_ln297_fu_692_p1;
assign v263_1_ce0 = v263_1_ce0_local;
assign zext_ln290_cast_fu_546_p1 = zext_ln290;
assign zext_ln297_fu_692_p1 = add_ln297_fu_687_p2;
assign zext_ln357_2_fu_746_p1 = add_ln357_reg_1104_pp0_iter7_reg;
assign zext_ln357_fu_681_p1 = lshr_ln_reg_1018_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    zext_ln290_cast_reg_999[12:8] <= 5'b00000;
end
endmodule 