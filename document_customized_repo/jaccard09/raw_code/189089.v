module kernel_2mm_kernel_2mm_node1_Pipeline_label_55 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,mul_ln186,mul_ln238,mul_ln251,cmp11,empty,v120_4,v133_4,v144_4,v155_4,v166_4,v177_4,v188_4,v199_4,v210_4,grp_fu_5266_p_din0,grp_fu_5266_p_din1,grp_fu_5266_p_opcode,grp_fu_5266_p_dout0,grp_fu_5266_p_ce,grp_fu_5270_p_din0,grp_fu_5270_p_din1,grp_fu_5270_p_opcode,grp_fu_5270_p_dout0,grp_fu_5270_p_ce,grp_fu_5274_p_din0,grp_fu_5274_p_din1,grp_fu_5274_p_opcode,grp_fu_5274_p_dout0,grp_fu_5274_p_ce,grp_fu_5278_p_din0,grp_fu_5278_p_din1,grp_fu_5278_p_dout0,grp_fu_5278_p_ce,grp_fu_5282_p_din0,grp_fu_5282_p_din1,grp_fu_5282_p_dout0,grp_fu_5282_p_ce,grp_fu_5286_p_din0,grp_fu_5286_p_din1,grp_fu_5286_p_dout0,grp_fu_5286_p_ce); 
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
output  [13:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [13:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
output  [13:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [13:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [13:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [13:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [13:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [13:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
input  [12:0] mul_ln175;
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
input  [13:0] mul_ln186;
input  [13:0] mul_ln238;
input  [13:0] mul_ln251;
input  [0:0] cmp11;
input  [2:0] empty;
input  [31:0] v120_4;
input  [31:0] v133_4;
input  [31:0] v144_4;
input  [31:0] v155_4;
input  [31:0] v166_4;
input  [31:0] v177_4;
input  [31:0] v188_4;
input  [31:0] v199_4;
input  [31:0] v210_4;
output  [31:0] grp_fu_5266_p_din0;
output  [31:0] grp_fu_5266_p_din1;
output  [1:0] grp_fu_5266_p_opcode;
input  [31:0] grp_fu_5266_p_dout0;
output   grp_fu_5266_p_ce;
output  [31:0] grp_fu_5270_p_din0;
output  [31:0] grp_fu_5270_p_din1;
output  [1:0] grp_fu_5270_p_opcode;
input  [31:0] grp_fu_5270_p_dout0;
output   grp_fu_5270_p_ce;
output  [31:0] grp_fu_5274_p_din0;
output  [31:0] grp_fu_5274_p_din1;
output  [1:0] grp_fu_5274_p_opcode;
input  [31:0] grp_fu_5274_p_dout0;
output   grp_fu_5274_p_ce;
output  [31:0] grp_fu_5278_p_din0;
output  [31:0] grp_fu_5278_p_din1;
input  [31:0] grp_fu_5278_p_dout0;
output   grp_fu_5278_p_ce;
output  [31:0] grp_fu_5282_p_din0;
output  [31:0] grp_fu_5282_p_din1;
input  [31:0] grp_fu_5282_p_dout0;
output   grp_fu_5282_p_ce;
output  [31:0] grp_fu_5286_p_din0;
output  [31:0] grp_fu_5286_p_din1;
input  [31:0] grp_fu_5286_p_dout0;
output   grp_fu_5286_p_ce;
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
reg   [0:0] icmp_ln170_reg_1143;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_500;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_504;
reg   [31:0] reg_508;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_512;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_516;
reg   [31:0] reg_520;
reg   [7:0] v116_4_reg_1138;
wire   [0:0] icmp_ln170_fu_532_p2;
reg   [13:0] v225_0_addr_reg_1167;
reg   [13:0] v225_0_addr_reg_1167_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_1167_pp0_iter2_reg;
wire   [13:0] add_ln238_fu_574_p2;
reg   [13:0] add_ln238_reg_1172;
reg   [13:0] add_ln238_reg_1172_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1177;
reg   [13:0] v225_1_addr_reg_1177_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1177_pp0_iter2_reg;
reg   [13:0] v225_2_addr_reg_1182;
reg   [13:0] v225_2_addr_reg_1182_pp0_iter1_reg;
reg   [13:0] v225_2_addr_reg_1182_pp0_iter2_reg;
reg   [13:0] v225_3_addr_reg_1188;
reg   [13:0] v225_3_addr_reg_1188_pp0_iter1_reg;
reg   [13:0] v225_3_addr_reg_1188_pp0_iter2_reg;
reg   [13:0] v225_3_addr_12_reg_1193;
reg   [13:0] v225_3_addr_12_reg_1193_pp0_iter1_reg;
reg   [13:0] v225_3_addr_12_reg_1193_pp0_iter2_reg;
reg   [13:0] v225_0_addr_16_reg_1218;
reg   [13:0] v225_0_addr_16_reg_1218_pp0_iter1_reg;
reg   [13:0] v225_0_addr_16_reg_1218_pp0_iter2_reg;
wire   [13:0] add_ln245_fu_645_p2;
reg   [13:0] add_ln245_reg_1223;
reg   [13:0] add_ln245_reg_1223_pp0_iter1_reg;
reg   [13:0] v225_1_addr_15_reg_1228;
reg   [13:0] v225_1_addr_15_reg_1228_pp0_iter1_reg;
reg   [13:0] v225_1_addr_15_reg_1228_pp0_iter2_reg;
reg   [13:0] v225_2_addr_13_reg_1233;
reg   [13:0] v225_2_addr_13_reg_1233_pp0_iter1_reg;
reg   [13:0] v225_2_addr_13_reg_1233_pp0_iter2_reg;
reg   [13:0] v225_3_addr_14_reg_1239;
reg   [13:0] v225_3_addr_14_reg_1239_pp0_iter1_reg;
reg   [13:0] v225_3_addr_14_reg_1239_pp0_iter2_reg;
reg   [13:0] v225_3_addr_15_reg_1244;
reg   [13:0] v225_3_addr_15_reg_1244_pp0_iter1_reg;
reg   [13:0] v225_3_addr_15_reg_1244_pp0_iter2_reg;
reg   [31:0] v225_3_load_reg_1249;
wire   [31:0] v121_fu_678_p11;
reg   [31:0] v121_reg_1254;
reg   [31:0] v225_3_load_12_reg_1261;
wire   [31:0] v127_fu_717_p11;
reg   [31:0] v127_reg_1266;
reg   [31:0] v225_0_load_reg_1273;
reg   [31:0] v225_0_load_15_reg_1278;
reg   [31:0] v225_1_load_reg_1283;
reg   [31:0] v225_1_load_13_reg_1288;
wire   [31:0] v164_fu_744_p3;
reg   [31:0] v164_reg_1293;
reg   [31:0] v122_reg_1298;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1303;
reg   [31:0] v134_reg_1308;
wire   [31:0] v118_fu_764_p3;
wire   [31:0] v125_fu_775_p3;
wire   [31:0] v131_fu_786_p3;
reg   [31:0] v139_reg_1328;
reg   [31:0] v145_reg_1333;
reg   [31:0] v150_reg_1338;
reg   [13:0] v225_0_addr_15_reg_1343;
reg   [13:0] v225_0_addr_15_reg_1343_pp0_iter2_reg;
reg   [13:0] v225_1_addr_14_reg_1348;
reg   [13:0] v225_1_addr_14_reg_1348_pp0_iter2_reg;
reg   [13:0] v225_2_addr_12_reg_1353;
reg   [13:0] v225_2_addr_12_reg_1353_pp0_iter2_reg;
reg   [13:0] v225_3_addr_13_reg_1358;
reg   [13:0] v225_3_addr_13_reg_1358_pp0_iter2_reg;
reg   [13:0] v225_3_addr_13_reg_1358_pp0_iter3_reg;
reg   [13:0] v225_0_addr_17_reg_1363;
reg   [13:0] v225_0_addr_17_reg_1363_pp0_iter2_reg;
reg   [13:0] v225_1_addr_16_reg_1368;
reg   [13:0] v225_1_addr_16_reg_1368_pp0_iter2_reg;
reg   [13:0] v225_2_addr_14_reg_1373;
reg   [13:0] v225_2_addr_14_reg_1373_pp0_iter2_reg;
reg   [13:0] v225_2_addr_14_reg_1373_pp0_iter3_reg;
reg   [13:0] v225_3_addr_16_reg_1378;
reg   [13:0] v225_3_addr_16_reg_1378_pp0_iter2_reg;
reg   [13:0] v225_3_addr_16_reg_1378_pp0_iter3_reg;
wire   [31:0] v137_fu_811_p3;
wire   [31:0] v142_fu_822_p3;
wire   [31:0] v148_fu_833_p3;
reg   [31:0] v225_2_load_reg_1398;
reg   [31:0] v156_reg_1403;
reg   [31:0] v225_2_load_12_reg_1408;
reg   [31:0] v161_reg_1413;
reg   [31:0] v167_reg_1418;
wire   [31:0] v153_fu_844_p3;
wire   [31:0] v159_fu_855_p3;
wire   [31:0] v170_fu_867_p3;
reg   [31:0] v170_reg_1433;
reg   [31:0] v172_reg_1438;
wire   [31:0] v175_fu_878_p3;
reg   [31:0] v175_reg_1443;
reg   [31:0] v178_reg_1448;
wire   [31:0] v181_fu_889_p3;
reg   [31:0] v181_reg_1453;
reg   [31:0] v183_reg_1458;
wire   [31:0] v186_fu_900_p3;
reg   [31:0] v186_reg_1463;
wire   [31:0] v192_fu_911_p3;
reg   [31:0] v192_reg_1468;
wire   [31:0] v197_fu_922_p3;
reg   [31:0] v197_reg_1473;
wire   [31:0] v203_fu_933_p3;
reg   [31:0] v203_reg_1478;
reg   [31:0] v189_reg_1483;
reg   [31:0] v194_reg_1488;
reg   [31:0] v200_reg_1493;
wire   [31:0] v208_fu_944_p3;
reg   [31:0] v208_reg_1498;
wire   [31:0] v214_fu_955_p3;
reg   [31:0] v214_reg_1503;
reg   [31:0] v205_reg_1508;
reg   [31:0] v211_reg_1513;
reg   [31:0] v216_reg_1518;
reg   [31:0] v206_reg_1523;
reg   [31:0] v212_reg_1528;
reg   [31:0] v217_reg_1533;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_10_fu_552_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln186_fu_566_p1;
wire   [63:0] zext_ln171_fu_586_p1;
wire   [63:0] zext_ln182_10_fu_623_p1;
wire   [63:0] zext_ln193_fu_637_p1;
wire   [63:0] zext_ln179_fu_657_p1;
wire   [63:0] zext_ln238_fu_794_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln245_fu_801_p1;
reg   [7:0] v116_fu_108;
wire   [7:0] add_ln170_fu_751_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_4;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln178_fu_982_p1;
wire    ap_block_pp0_stage3;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln185_fu_987_p1;
wire   [31:0] bitcast_ln231_fu_1002_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_1007_p1;
wire   [31:0] bitcast_ln283_fu_1041_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_1045_p1;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_4_ce1_local;
reg    v227_4_ce0_local;
reg    v227_6_ce1_local;
reg    v227_6_ce0_local;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln192_fu_962_p1;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln198_fu_967_p1;
wire   [31:0] bitcast_ln244_fu_1012_p1;
wire   [31:0] bitcast_ln250_fu_1017_p1;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln205_fu_972_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln211_fu_977_p1;
wire   [31:0] bitcast_ln257_fu_1022_p1;
wire   [31:0] bitcast_ln263_fu_1027_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln218_fu_992_p1;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln224_fu_997_p1;
wire   [31:0] bitcast_ln270_fu_1032_p1;
wire   [31:0] bitcast_ln276_fu_1037_p1;
reg   [31:0] grp_fu_476_p0;
reg   [31:0] grp_fu_476_p1;
reg   [31:0] grp_fu_480_p0;
reg   [31:0] grp_fu_480_p1;
reg   [31:0] grp_fu_484_p0;
reg   [31:0] grp_fu_484_p1;
reg   [31:0] grp_fu_488_p0;
reg   [31:0] grp_fu_488_p1;
reg   [31:0] grp_fu_492_p0;
reg   [31:0] grp_fu_492_p1;
reg   [31:0] grp_fu_496_p0;
reg   [31:0] grp_fu_496_p1;
wire   [12:0] zext_ln175_9_fu_542_p1;
wire   [12:0] add_ln175_fu_546_p2;
wire   [13:0] zext_ln175_fu_538_p1;
wire   [13:0] add_ln186_fu_560_p2;
wire   [13:0] add_ln171_fu_580_p2;
wire   [6:0] tmp_s_fu_591_p4;
wire   [7:0] or_ln179_5_fu_601_p3;
wire   [12:0] zext_ln182_9_fu_613_p1;
wire   [12:0] add_ln182_fu_617_p2;
wire   [13:0] zext_ln182_fu_609_p1;
wire   [13:0] add_ln193_fu_631_p2;
wire   [13:0] add_ln179_fu_651_p2;
wire   [31:0] v121_fu_678_p2;
wire   [31:0] v121_fu_678_p4;
wire   [31:0] v121_fu_678_p6;
wire   [31:0] v121_fu_678_p8;
wire   [31:0] v121_fu_678_p9;
wire   [31:0] v127_fu_717_p2;
wire   [31:0] v127_fu_717_p4;
wire   [31:0] v127_fu_717_p6;
wire   [31:0] v127_fu_717_p8;
wire   [31:0] v127_fu_717_p9;
wire   [31:0] v163_fu_740_p1;
wire   [31:0] v117_fu_761_p1;
wire   [31:0] v124_fu_772_p1;
wire   [31:0] v130_fu_783_p1;
wire   [31:0] v136_fu_808_p1;
wire   [31:0] v141_fu_819_p1;
wire   [31:0] v147_fu_830_p1;
wire   [31:0] v152_fu_841_p1;
wire   [31:0] v158_fu_852_p1;
wire   [31:0] v169_fu_863_p1;
wire   [31:0] v174_fu_874_p1;
wire   [31:0] v180_fu_885_p1;
wire   [31:0] v185_fu_896_p1;
wire   [31:0] v191_fu_907_p1;
wire   [31:0] v196_fu_918_p1;
wire   [31:0] v202_fu_929_p1;
wire   [31:0] v207_fu_940_p1;
wire   [31:0] v213_fu_951_p1;
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
wire   [2:0] v121_fu_678_p1;
wire   [2:0] v121_fu_678_p3;
wire  signed [2:0] v121_fu_678_p5;
wire  signed [2:0] v121_fu_678_p7;
wire   [2:0] v127_fu_717_p1;
wire   [2:0] v127_fu_717_p3;
wire  signed [2:0] v127_fu_717_p5;
wire  signed [2:0] v127_fu_717_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_fu_108 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U101(.din0(v121_fu_678_p2),.din1(v121_fu_678_p4),.din2(v121_fu_678_p6),.din3(v121_fu_678_p8),.def(v121_fu_678_p9),.sel(empty),.dout(v121_fu_678_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U102(.din0(v127_fu_717_p2),.din1(v127_fu_717_p4),.din2(v127_fu_717_p6),.din3(v127_fu_717_p8),.def(v127_fu_717_p9),.sel(empty),.dout(v127_fu_717_p11));
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
        v116_fu_108 <= 8'd0;
    end else if (((icmp_ln170_reg_1143 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_108 <= add_ln170_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln238_reg_1172 <= add_ln238_fu_574_p2;
        add_ln238_reg_1172_pp0_iter1_reg <= add_ln238_reg_1172;
        add_ln245_reg_1223 <= add_ln245_fu_645_p2;
        add_ln245_reg_1223_pp0_iter1_reg <= add_ln245_reg_1223;
        icmp_ln170_reg_1143 <= icmp_ln170_fu_532_p2;
        v116_4_reg_1138 <= ap_sig_allocacmp_v116_4;
        v225_0_addr_16_reg_1218 <= zext_ln193_fu_637_p1;
        v225_0_addr_16_reg_1218_pp0_iter1_reg <= v225_0_addr_16_reg_1218;
        v225_0_addr_16_reg_1218_pp0_iter2_reg <= v225_0_addr_16_reg_1218_pp0_iter1_reg;
        v225_0_addr_reg_1167 <= zext_ln186_fu_566_p1;
        v225_0_addr_reg_1167_pp0_iter1_reg <= v225_0_addr_reg_1167;
        v225_0_addr_reg_1167_pp0_iter2_reg <= v225_0_addr_reg_1167_pp0_iter1_reg;
        v225_1_addr_15_reg_1228 <= zext_ln193_fu_637_p1;
        v225_1_addr_15_reg_1228_pp0_iter1_reg <= v225_1_addr_15_reg_1228;
        v225_1_addr_15_reg_1228_pp0_iter2_reg <= v225_1_addr_15_reg_1228_pp0_iter1_reg;
        v225_1_addr_reg_1177 <= zext_ln186_fu_566_p1;
        v225_1_addr_reg_1177_pp0_iter1_reg <= v225_1_addr_reg_1177;
        v225_1_addr_reg_1177_pp0_iter2_reg <= v225_1_addr_reg_1177_pp0_iter1_reg;
        v225_2_addr_13_reg_1233 <= zext_ln193_fu_637_p1;
        v225_2_addr_13_reg_1233_pp0_iter1_reg <= v225_2_addr_13_reg_1233;
        v225_2_addr_13_reg_1233_pp0_iter2_reg <= v225_2_addr_13_reg_1233_pp0_iter1_reg;
        v225_2_addr_reg_1182 <= zext_ln186_fu_566_p1;
        v225_2_addr_reg_1182_pp0_iter1_reg <= v225_2_addr_reg_1182;
        v225_2_addr_reg_1182_pp0_iter2_reg <= v225_2_addr_reg_1182_pp0_iter1_reg;
        v225_3_addr_12_reg_1193 <= zext_ln186_fu_566_p1;
        v225_3_addr_12_reg_1193_pp0_iter1_reg <= v225_3_addr_12_reg_1193;
        v225_3_addr_12_reg_1193_pp0_iter2_reg <= v225_3_addr_12_reg_1193_pp0_iter1_reg;
        v225_3_addr_14_reg_1239 <= zext_ln179_fu_657_p1;
        v225_3_addr_14_reg_1239_pp0_iter1_reg <= v225_3_addr_14_reg_1239;
        v225_3_addr_14_reg_1239_pp0_iter2_reg <= v225_3_addr_14_reg_1239_pp0_iter1_reg;
        v225_3_addr_15_reg_1244 <= zext_ln193_fu_637_p1;
        v225_3_addr_15_reg_1244_pp0_iter1_reg <= v225_3_addr_15_reg_1244;
        v225_3_addr_15_reg_1244_pp0_iter2_reg <= v225_3_addr_15_reg_1244_pp0_iter1_reg;
        v225_3_addr_reg_1188 <= zext_ln171_fu_586_p1;
        v225_3_addr_reg_1188_pp0_iter1_reg <= v225_3_addr_reg_1188;
        v225_3_addr_reg_1188_pp0_iter2_reg <= v225_3_addr_reg_1188_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_500 <= grp_fu_5266_p_dout0;
        reg_504 <= grp_fu_5270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_508 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_512 <= grp_fu_5266_p_dout0;
        reg_516 <= grp_fu_5270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_520 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v121_reg_1254 <= v121_fu_678_p11;
        v127_reg_1266 <= v127_fu_717_p11;
        v225_0_addr_15_reg_1343 <= zext_ln238_fu_794_p1;
        v225_0_addr_15_reg_1343_pp0_iter2_reg <= v225_0_addr_15_reg_1343;
        v225_0_addr_17_reg_1363 <= zext_ln245_fu_801_p1;
        v225_0_addr_17_reg_1363_pp0_iter2_reg <= v225_0_addr_17_reg_1363;
        v225_1_addr_14_reg_1348 <= zext_ln238_fu_794_p1;
        v225_1_addr_14_reg_1348_pp0_iter2_reg <= v225_1_addr_14_reg_1348;
        v225_1_addr_16_reg_1368 <= zext_ln245_fu_801_p1;
        v225_1_addr_16_reg_1368_pp0_iter2_reg <= v225_1_addr_16_reg_1368;
        v225_2_addr_12_reg_1353 <= zext_ln238_fu_794_p1;
        v225_2_addr_12_reg_1353_pp0_iter2_reg <= v225_2_addr_12_reg_1353;
        v225_2_addr_14_reg_1373 <= zext_ln245_fu_801_p1;
        v225_2_addr_14_reg_1373_pp0_iter2_reg <= v225_2_addr_14_reg_1373;
        v225_2_addr_14_reg_1373_pp0_iter3_reg <= v225_2_addr_14_reg_1373_pp0_iter2_reg;
        v225_3_addr_13_reg_1358 <= zext_ln238_fu_794_p1;
        v225_3_addr_13_reg_1358_pp0_iter2_reg <= v225_3_addr_13_reg_1358;
        v225_3_addr_13_reg_1358_pp0_iter3_reg <= v225_3_addr_13_reg_1358_pp0_iter2_reg;
        v225_3_addr_16_reg_1378 <= zext_ln245_fu_801_p1;
        v225_3_addr_16_reg_1378_pp0_iter2_reg <= v225_3_addr_16_reg_1378;
        v225_3_addr_16_reg_1378_pp0_iter3_reg <= v225_3_addr_16_reg_1378_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1298 <= grp_fu_5278_p_dout0;
        v128_reg_1303 <= grp_fu_5282_p_dout0;
        v134_reg_1308 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1328 <= grp_fu_5278_p_dout0;
        v145_reg_1333 <= grp_fu_5282_p_dout0;
        v150_reg_1338 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1403 <= grp_fu_5278_p_dout0;
        v161_reg_1413 <= grp_fu_5282_p_dout0;
        v167_reg_1418 <= grp_fu_5286_p_dout0;
        v225_2_load_12_reg_1408 <= v225_2_q0;
        v225_2_load_reg_1398 <= v225_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v164_reg_1293 <= v164_fu_744_p3;
        v170_reg_1433 <= v170_fu_867_p3;
        v175_reg_1443 <= v175_fu_878_p3;
        v181_reg_1453 <= v181_fu_889_p3;
        v186_reg_1463 <= v186_fu_900_p3;
        v192_reg_1468 <= v192_fu_911_p3;
        v197_reg_1473 <= v197_fu_922_p3;
        v203_reg_1478 <= v203_fu_933_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1438 <= grp_fu_5278_p_dout0;
        v178_reg_1448 <= grp_fu_5282_p_dout0;
        v183_reg_1458 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1483 <= grp_fu_5278_p_dout0;
        v194_reg_1488 <= grp_fu_5282_p_dout0;
        v200_reg_1493 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1508 <= grp_fu_5278_p_dout0;
        v211_reg_1513 <= grp_fu_5282_p_dout0;
        v216_reg_1518 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1523 <= grp_fu_5266_p_dout0;
        v212_reg_1528 <= grp_fu_5270_p_dout0;
        v217_reg_1533 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1498 <= v208_fu_944_p3;
        v214_reg_1503 <= v214_fu_955_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_15_reg_1278 <= v225_0_q0;
        v225_0_load_reg_1273 <= v225_0_q1;
        v225_1_load_13_reg_1288 <= v225_1_q0;
        v225_1_load_reg_1283 <= v225_1_q1;
        v225_3_load_12_reg_1261 <= v225_3_q0;
        v225_3_load_reg_1249 <= v225_3_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1143 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_4 = v116_fu_108;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_476_p0 = v203_reg_1478;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_476_p0 = v186_reg_1463;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_476_p0 = v170_reg_1433;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_476_p0 = v153_fu_844_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_476_p0 = v137_fu_811_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_476_p0 = v118_fu_764_p3;
        end else begin
            grp_fu_476_p0 = 'bx;
        end
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_476_p1 = v205_reg_1508;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_476_p1 = v189_reg_1483;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_476_p1 = v172_reg_1438;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_476_p1 = v156_reg_1403;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_476_p1 = v139_reg_1328;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_476_p1 = v122_reg_1298;
        end else begin
            grp_fu_476_p1 = 'bx;
        end
    end else begin
        grp_fu_476_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_480_p0 = v208_reg_1498;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_480_p0 = v192_reg_1468;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_480_p0 = v175_reg_1443;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_480_p0 = v159_fu_855_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_480_p0 = v142_fu_822_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_480_p0 = v125_fu_775_p3;
        end else begin
            grp_fu_480_p0 = 'bx;
        end
    end else begin
        grp_fu_480_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_480_p1 = v211_reg_1513;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_480_p1 = v194_reg_1488;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_480_p1 = v178_reg_1448;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_480_p1 = v161_reg_1413;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_480_p1 = v145_reg_1333;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_480_p1 = v128_reg_1303;
        end else begin
            grp_fu_480_p1 = 'bx;
        end
    end else begin
        grp_fu_480_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_484_p0 = v214_reg_1503;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_484_p0 = v197_reg_1473;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_484_p0 = v181_reg_1453;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_484_p0 = v164_reg_1293;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_484_p0 = v148_fu_833_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_484_p0 = v131_fu_786_p3;
        end else begin
            grp_fu_484_p0 = 'bx;
        end
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_484_p1 = v216_reg_1518;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_484_p1 = v200_reg_1493;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_484_p1 = v183_reg_1458;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_484_p1 = v167_reg_1418;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_484_p1 = v150_reg_1338;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_484_p1 = v134_reg_1308;
        end else begin
            grp_fu_484_p1 = 'bx;
        end
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_488_p0 = v199_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_488_p0 = v188_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_488_p0 = v166_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_488_p0 = v155_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_488_p0 = v133_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_488_p0 = v120_4;
    end else begin
        grp_fu_488_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_488_p1 = v127_reg_1266;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_488_p1 = v121_reg_1254;
    end else begin
        grp_fu_488_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p0 = v210_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p0 = v188_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_492_p0 = v177_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_492_p0 = v155_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_492_p0 = v144_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_492_p0 = v120_4;
    end else begin
        grp_fu_492_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_492_p1 = v121_reg_1254;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_492_p1 = v127_reg_1266;
    end else begin
        grp_fu_492_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_496_p0 = v210_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_496_p0 = v199_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_496_p0 = v177_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_496_p0 = v166_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_496_p0 = v144_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_496_p0 = v133_4;
    end else begin
        grp_fu_496_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_496_p1 = v127_reg_1266;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_496_p1 = v121_reg_1254;
    end else begin
        grp_fu_496_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_17_reg_1363_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_16_reg_1218_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln245_fu_801_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln193_fu_637_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_15_reg_1343_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_reg_1167_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln238_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln186_fu_566_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_0_d0_local = bitcast_ln250_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d0_local = bitcast_ln198_fu_967_p1;
        end else begin
            v225_0_d0_local = 'bx;
        end
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_0_d1_local = bitcast_ln244_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d1_local = bitcast_ln192_fu_962_p1;
        end else begin
            v225_0_d1_local = 'bx;
        end
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address0_local = v225_1_addr_16_reg_1368_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_15_reg_1228_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln245_fu_801_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln193_fu_637_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_14_reg_1348_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_reg_1177_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln238_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln186_fu_566_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_1_d0_local = bitcast_ln263_fu_1027_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln211_fu_977_p1;
        end else begin
            v225_1_d0_local = 'bx;
        end
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_1_d1_local = bitcast_ln257_fu_1022_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln205_fu_972_p1;
        end else begin
            v225_1_d1_local = 'bx;
        end
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_14_reg_1373_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address0_local = v225_2_addr_reg_1182_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln245_fu_801_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = v225_2_addr_13_reg_1233;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_12_reg_1353_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_13_reg_1233_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = zext_ln238_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = v225_2_addr_reg_1182;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_d0_local = bitcast_ln276_fu_1037_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_d0_local = bitcast_ln218_fu_992_p1;
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d1_local = bitcast_ln270_fu_1032_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_2_d1_local = bitcast_ln224_fu_997_p1;
        end else begin
            v225_2_d1_local = 'bx;
        end
    end else begin
        v225_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address0_local = v225_3_addr_16_reg_1378_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address0_local = v225_3_addr_15_reg_1244_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_14_reg_1239_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_16_reg_1378;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_15_reg_1244_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_657_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_13_reg_1358_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address1_local = v225_3_addr_12_reg_1193_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_reg_1188_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_13_reg_1358;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_12_reg_1193;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_586_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_d0_local = bitcast_ln289_fu_1045_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d0_local = bitcast_ln237_fu_1007_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln185_fu_987_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_d1_local = bitcast_ln283_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d1_local = bitcast_ln231_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d1_local = bitcast_ln178_fu_982_p1;
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_3_we1_local = 1'b1;
    end else begin
        v225_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce0_local = 1'b1;
    end else begin
        v227_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce1_local = 1'b1;
    end else begin
        v227_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce0_local = 1'b1;
    end else begin
        v227_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce1_local = 1'b1;
    end else begin
        v227_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce0_local = 1'b1;
    end else begin
        v227_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce1_local = 1'b1;
    end else begin
        v227_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce0_local = 1'b1;
    end else begin
        v227_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce1_local = 1'b1;
    end else begin
        v227_6_ce1_local = 1'b0;
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
assign add_ln170_fu_751_p2 = (v116_4_reg_1138 + 8'd2);
assign add_ln171_fu_580_p2 = (mul_ln251 + zext_ln175_fu_538_p1);
assign add_ln175_fu_546_p2 = (mul_ln175 + zext_ln175_9_fu_542_p1);
assign add_ln179_fu_651_p2 = (mul_ln251 + zext_ln182_fu_609_p1);
assign add_ln182_fu_617_p2 = (mul_ln175 + zext_ln182_9_fu_613_p1);
assign add_ln186_fu_560_p2 = (mul_ln186 + zext_ln175_fu_538_p1);
assign add_ln193_fu_631_p2 = (mul_ln186 + zext_ln182_fu_609_p1);
assign add_ln238_fu_574_p2 = (mul_ln238 + zext_ln175_fu_538_p1);
assign add_ln245_fu_645_p2 = (mul_ln238 + zext_ln182_fu_609_p1);
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
assign bitcast_ln178_fu_982_p1 = reg_500;
assign bitcast_ln185_fu_987_p1 = reg_504;
assign bitcast_ln192_fu_962_p1 = reg_508;
assign bitcast_ln198_fu_967_p1 = reg_512;
assign bitcast_ln205_fu_972_p1 = reg_516;
assign bitcast_ln211_fu_977_p1 = reg_520;
assign bitcast_ln218_fu_992_p1 = reg_512;
assign bitcast_ln224_fu_997_p1 = reg_516;
assign bitcast_ln231_fu_1002_p1 = reg_508;
assign bitcast_ln237_fu_1007_p1 = reg_500;
assign bitcast_ln244_fu_1012_p1 = reg_504;
assign bitcast_ln250_fu_1017_p1 = reg_520;
assign bitcast_ln257_fu_1022_p1 = reg_500;
assign bitcast_ln263_fu_1027_p1 = reg_504;
assign bitcast_ln270_fu_1032_p1 = reg_508;
assign bitcast_ln276_fu_1037_p1 = v206_reg_1523;
assign bitcast_ln283_fu_1041_p1 = v212_reg_1528;
assign bitcast_ln289_fu_1045_p1 = v217_reg_1533;
assign grp_fu_5266_p_ce = 1'b1;
assign grp_fu_5266_p_din0 = grp_fu_476_p0;
assign grp_fu_5266_p_din1 = grp_fu_476_p1;
assign grp_fu_5266_p_opcode = 2'd0;
assign grp_fu_5270_p_ce = 1'b1;
assign grp_fu_5270_p_din0 = grp_fu_480_p0;
assign grp_fu_5270_p_din1 = grp_fu_480_p1;
assign grp_fu_5270_p_opcode = 2'd0;
assign grp_fu_5274_p_ce = 1'b1;
assign grp_fu_5274_p_din0 = grp_fu_484_p0;
assign grp_fu_5274_p_din1 = grp_fu_484_p1;
assign grp_fu_5274_p_opcode = 2'd0;
assign grp_fu_5278_p_ce = 1'b1;
assign grp_fu_5278_p_din0 = grp_fu_488_p0;
assign grp_fu_5278_p_din1 = grp_fu_488_p1;
assign grp_fu_5282_p_ce = 1'b1;
assign grp_fu_5282_p_din0 = grp_fu_492_p0;
assign grp_fu_5282_p_din1 = grp_fu_492_p1;
assign grp_fu_5286_p_ce = 1'b1;
assign grp_fu_5286_p_din0 = grp_fu_496_p0;
assign grp_fu_5286_p_din1 = grp_fu_496_p1;
assign icmp_ln170_fu_532_p2 = ((ap_sig_allocacmp_v116_4 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_5_fu_601_p3 = {{tmp_s_fu_591_p4}, {1'd1}};
assign tmp_s_fu_591_p4 = {{ap_sig_allocacmp_v116_4[7:1]}};
assign v117_fu_761_p1 = v225_3_load_reg_1249;
assign v118_fu_764_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_761_p1);
assign v121_fu_678_p2 = v227_0_q1;
assign v121_fu_678_p4 = v227_2_q1;
assign v121_fu_678_p6 = v227_4_q1;
assign v121_fu_678_p8 = v227_6_q1;
assign v121_fu_678_p9 = 'bx;
assign v124_fu_772_p1 = v225_3_load_12_reg_1261;
assign v125_fu_775_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_772_p1);
assign v127_fu_717_p2 = v227_0_q0;
assign v127_fu_717_p4 = v227_2_q0;
assign v127_fu_717_p6 = v227_4_q0;
assign v127_fu_717_p8 = v227_6_q0;
assign v127_fu_717_p9 = 'bx;
assign v130_fu_783_p1 = v225_0_load_reg_1273;
assign v131_fu_786_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_783_p1);
assign v136_fu_808_p1 = v225_0_load_15_reg_1278;
assign v137_fu_811_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_808_p1);
assign v141_fu_819_p1 = v225_1_load_reg_1283;
assign v142_fu_822_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_819_p1);
assign v147_fu_830_p1 = v225_1_load_13_reg_1288;
assign v148_fu_833_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_830_p1);
assign v152_fu_841_p1 = v225_2_load_reg_1398;
assign v153_fu_844_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_841_p1);
assign v158_fu_852_p1 = v225_2_load_12_reg_1408;
assign v159_fu_855_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_852_p1);
assign v163_fu_740_p1 = v225_3_q1;
assign v164_fu_744_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_740_p1);
assign v169_fu_863_p1 = v225_3_q0;
assign v170_fu_867_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_863_p1);
assign v174_fu_874_p1 = v225_0_q1;
assign v175_fu_878_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_874_p1);
assign v180_fu_885_p1 = v225_0_q0;
assign v181_fu_889_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_885_p1);
assign v185_fu_896_p1 = v225_1_q1;
assign v186_fu_900_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_896_p1);
assign v191_fu_907_p1 = v225_1_q0;
assign v192_fu_911_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_907_p1);
assign v196_fu_918_p1 = v225_2_q1;
assign v197_fu_922_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_918_p1);
assign v202_fu_929_p1 = v225_2_q0;
assign v203_fu_933_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_929_p1);
assign v207_fu_940_p1 = v225_3_q1;
assign v208_fu_944_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_940_p1);
assign v213_fu_951_p1 = v225_3_q0;
assign v214_fu_955_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_951_p1);
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = v225_0_d0_local;
assign v225_0_d1 = v225_0_d1_local;
assign v225_0_we0 = v225_0_we0_local;
assign v225_0_we1 = v225_0_we1_local;
assign v225_1_address0 = v225_1_address0_local;
assign v225_1_address1 = v225_1_address1_local;
assign v225_1_ce0 = v225_1_ce0_local;
assign v225_1_ce1 = v225_1_ce1_local;
assign v225_1_d0 = v225_1_d0_local;
assign v225_1_d1 = v225_1_d1_local;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = v225_2_d0_local;
assign v225_2_d1 = v225_2_d1_local;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = v225_3_d0_local;
assign v225_3_d1 = v225_3_d1_local;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v227_0_address0 = zext_ln182_10_fu_623_p1;
assign v227_0_address1 = zext_ln175_10_fu_552_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_2_address0 = zext_ln182_10_fu_623_p1;
assign v227_2_address1 = zext_ln175_10_fu_552_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_4_address0 = zext_ln182_10_fu_623_p1;
assign v227_4_address1 = zext_ln175_10_fu_552_p1;
assign v227_4_ce0 = v227_4_ce0_local;
assign v227_4_ce1 = v227_4_ce1_local;
assign v227_6_address0 = zext_ln182_10_fu_623_p1;
assign v227_6_address1 = zext_ln175_10_fu_552_p1;
assign v227_6_ce0 = v227_6_ce0_local;
assign v227_6_ce1 = v227_6_ce1_local;
assign zext_ln171_fu_586_p1 = add_ln171_fu_580_p2;
assign zext_ln175_10_fu_552_p1 = add_ln175_fu_546_p2;
assign zext_ln175_9_fu_542_p1 = ap_sig_allocacmp_v116_4;
assign zext_ln175_fu_538_p1 = ap_sig_allocacmp_v116_4;
assign zext_ln179_fu_657_p1 = add_ln179_fu_651_p2;
assign zext_ln182_10_fu_623_p1 = add_ln182_fu_617_p2;
assign zext_ln182_9_fu_613_p1 = or_ln179_5_fu_601_p3;
assign zext_ln182_fu_609_p1 = or_ln179_5_fu_601_p3;
assign zext_ln186_fu_566_p1 = add_ln186_fu_560_p2;
assign zext_ln193_fu_637_p1 = add_ln193_fu_631_p2;
assign zext_ln238_fu_794_p1 = add_ln238_reg_1172_pp0_iter1_reg;
assign zext_ln245_fu_801_p1 = add_ln245_reg_1223_pp0_iter1_reg;
endmodule 