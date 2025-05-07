module kernel_2mm_kernel_2mm_node1_Pipeline_label_55 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,mul_ln238,mul_ln251,cmp11,empty,v120_3,v133_3,v144_3,v155_3,v166_3,v177_3,v188_3,v199_3,v210_3,grp_fu_4104_p_din0,grp_fu_4104_p_din1,grp_fu_4104_p_opcode,grp_fu_4104_p_dout0,grp_fu_4104_p_ce,grp_fu_4108_p_din0,grp_fu_4108_p_din1,grp_fu_4108_p_opcode,grp_fu_4108_p_dout0,grp_fu_4108_p_ce,grp_fu_4112_p_din0,grp_fu_4112_p_din1,grp_fu_4112_p_opcode,grp_fu_4112_p_dout0,grp_fu_4112_p_ce,grp_fu_4116_p_din0,grp_fu_4116_p_din1,grp_fu_4116_p_opcode,grp_fu_4116_p_dout0,grp_fu_4116_p_ce,grp_fu_4120_p_din0,grp_fu_4120_p_din1,grp_fu_4120_p_opcode,grp_fu_4120_p_dout0,grp_fu_4120_p_ce,grp_fu_4124_p_din0,grp_fu_4124_p_din1,grp_fu_4124_p_dout0,grp_fu_4124_p_ce,grp_fu_4128_p_din0,grp_fu_4128_p_din1,grp_fu_4128_p_dout0,grp_fu_4128_p_ce,grp_fu_4132_p_din0,grp_fu_4132_p_din1,grp_fu_4132_p_dout0,grp_fu_4132_p_ce,grp_fu_4136_p_din0,grp_fu_4136_p_din1,grp_fu_4136_p_dout0,grp_fu_4136_p_ce,grp_fu_4140_p_din0,grp_fu_4140_p_din1,grp_fu_4140_p_dout0,grp_fu_4140_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v225_7_address0;
output   v225_7_ce0;
output   v225_7_we0;
output  [31:0] v225_7_d0;
input  [31:0] v225_7_q0;
output  [12:0] v225_7_address1;
output   v225_7_ce1;
output   v225_7_we1;
output  [31:0] v225_7_d1;
input  [31:0] v225_7_q1;
output  [12:0] v225_6_address0;
output   v225_6_ce0;
output   v225_6_we0;
output  [31:0] v225_6_d0;
input  [31:0] v225_6_q0;
output  [12:0] v225_6_address1;
output   v225_6_ce1;
output   v225_6_we1;
output  [31:0] v225_6_d1;
input  [31:0] v225_6_q1;
output  [12:0] v225_5_address0;
output   v225_5_ce0;
output   v225_5_we0;
output  [31:0] v225_5_d0;
input  [31:0] v225_5_q0;
output  [12:0] v225_5_address1;
output   v225_5_ce1;
output   v225_5_we1;
output  [31:0] v225_5_d1;
input  [31:0] v225_5_q1;
output  [12:0] v225_4_address0;
output   v225_4_ce0;
output   v225_4_we0;
output  [31:0] v225_4_d0;
input  [31:0] v225_4_q0;
output  [12:0] v225_4_address1;
output   v225_4_ce1;
output   v225_4_we1;
output  [31:0] v225_4_d1;
input  [31:0] v225_4_q1;
output  [12:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [12:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
output  [12:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [12:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [12:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [12:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [12:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [12:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
input  [13:0] mul_ln175;
output  [13:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [13:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [13:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [13:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [13:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [13:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [13:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [13:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
input  [12:0] mul_ln238;
input  [12:0] mul_ln251;
input  [0:0] cmp11;
input  [1:0] empty;
input  [31:0] v120_3;
input  [31:0] v133_3;
input  [31:0] v144_3;
input  [31:0] v155_3;
input  [31:0] v166_3;
input  [31:0] v177_3;
input  [31:0] v188_3;
input  [31:0] v199_3;
input  [31:0] v210_3;
output  [31:0] grp_fu_4104_p_din0;
output  [31:0] grp_fu_4104_p_din1;
output  [1:0] grp_fu_4104_p_opcode;
input  [31:0] grp_fu_4104_p_dout0;
output   grp_fu_4104_p_ce;
output  [31:0] grp_fu_4108_p_din0;
output  [31:0] grp_fu_4108_p_din1;
output  [1:0] grp_fu_4108_p_opcode;
input  [31:0] grp_fu_4108_p_dout0;
output   grp_fu_4108_p_ce;
output  [31:0] grp_fu_4112_p_din0;
output  [31:0] grp_fu_4112_p_din1;
output  [1:0] grp_fu_4112_p_opcode;
input  [31:0] grp_fu_4112_p_dout0;
output   grp_fu_4112_p_ce;
output  [31:0] grp_fu_4116_p_din0;
output  [31:0] grp_fu_4116_p_din1;
output  [1:0] grp_fu_4116_p_opcode;
input  [31:0] grp_fu_4116_p_dout0;
output   grp_fu_4116_p_ce;
output  [31:0] grp_fu_4120_p_din0;
output  [31:0] grp_fu_4120_p_din1;
output  [1:0] grp_fu_4120_p_opcode;
input  [31:0] grp_fu_4120_p_dout0;
output   grp_fu_4120_p_ce;
output  [31:0] grp_fu_4124_p_din0;
output  [31:0] grp_fu_4124_p_din1;
input  [31:0] grp_fu_4124_p_dout0;
output   grp_fu_4124_p_ce;
output  [31:0] grp_fu_4128_p_din0;
output  [31:0] grp_fu_4128_p_din1;
input  [31:0] grp_fu_4128_p_dout0;
output   grp_fu_4128_p_ce;
output  [31:0] grp_fu_4132_p_din0;
output  [31:0] grp_fu_4132_p_din1;
input  [31:0] grp_fu_4132_p_dout0;
output   grp_fu_4132_p_ce;
output  [31:0] grp_fu_4136_p_din0;
output  [31:0] grp_fu_4136_p_din1;
input  [31:0] grp_fu_4136_p_dout0;
output   grp_fu_4136_p_ce;
output  [31:0] grp_fu_4140_p_din0;
output  [31:0] grp_fu_4140_p_din1;
input  [31:0] grp_fu_4140_p_dout0;
output   grp_fu_4140_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln170_reg_1184;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_556;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_560;
reg   [31:0] reg_564;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_568;
reg   [31:0] reg_572;
reg   [31:0] reg_576;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_reg_1178;
wire   [0:0] icmp_ln170_fu_588_p2;
wire   [7:0] or_ln179_3_fu_622_p3;
reg   [7:0] or_ln179_3_reg_1208;
wire   [31:0] v121_fu_664_p11;
reg   [31:0] v121_reg_1233;
wire   [31:0] v127_fu_703_p11;
reg   [31:0] v127_reg_1242;
reg   [12:0] v225_0_addr_reg_1251;
reg   [12:0] v225_0_addr_reg_1251_pp0_iter2_reg;
reg   [12:0] v225_0_addr_reg_1251_pp0_iter3_reg;
reg   [12:0] v225_1_addr_reg_1256;
reg   [12:0] v225_1_addr_reg_1256_pp0_iter2_reg;
reg   [12:0] v225_1_addr_reg_1256_pp0_iter3_reg;
reg   [12:0] v225_2_addr_reg_1261;
reg   [12:0] v225_2_addr_reg_1261_pp0_iter2_reg;
reg   [12:0] v225_2_addr_reg_1261_pp0_iter3_reg;
reg   [12:0] v225_3_addr_reg_1266;
reg   [12:0] v225_3_addr_reg_1266_pp0_iter2_reg;
reg   [12:0] v225_3_addr_reg_1266_pp0_iter3_reg;
reg   [12:0] v225_3_addr_5_reg_1271;
reg   [12:0] v225_3_addr_5_reg_1271_pp0_iter2_reg;
reg   [12:0] v225_3_addr_5_reg_1271_pp0_iter3_reg;
reg   [12:0] v225_3_addr_5_reg_1271_pp0_iter4_reg;
reg   [12:0] v225_4_addr_reg_1276;
reg   [12:0] v225_4_addr_reg_1276_pp0_iter2_reg;
reg   [12:0] v225_4_addr_reg_1276_pp0_iter3_reg;
reg   [12:0] v225_5_addr_reg_1281;
reg   [12:0] v225_5_addr_reg_1281_pp0_iter2_reg;
reg   [12:0] v225_5_addr_reg_1281_pp0_iter3_reg;
reg   [12:0] v225_6_addr_reg_1287;
reg   [12:0] v225_6_addr_reg_1287_pp0_iter2_reg;
reg   [12:0] v225_6_addr_reg_1287_pp0_iter3_reg;
reg   [12:0] v225_7_addr_reg_1292;
reg   [12:0] v225_7_addr_reg_1292_pp0_iter2_reg;
reg   [12:0] v225_7_addr_reg_1292_pp0_iter3_reg;
reg   [12:0] v225_0_addr_5_reg_1297;
reg   [12:0] v225_0_addr_5_reg_1297_pp0_iter2_reg;
reg   [12:0] v225_0_addr_5_reg_1297_pp0_iter3_reg;
reg   [12:0] v225_1_addr_5_reg_1302;
reg   [12:0] v225_1_addr_5_reg_1302_pp0_iter2_reg;
reg   [12:0] v225_1_addr_5_reg_1302_pp0_iter3_reg;
reg   [12:0] v225_2_addr_5_reg_1307;
reg   [12:0] v225_2_addr_5_reg_1307_pp0_iter2_reg;
reg   [12:0] v225_2_addr_5_reg_1307_pp0_iter3_reg;
reg   [12:0] v225_2_addr_5_reg_1307_pp0_iter4_reg;
reg   [12:0] v225_3_addr_6_reg_1312;
reg   [12:0] v225_3_addr_6_reg_1312_pp0_iter2_reg;
reg   [12:0] v225_3_addr_6_reg_1312_pp0_iter3_reg;
reg   [12:0] v225_3_addr_7_reg_1317;
reg   [12:0] v225_3_addr_7_reg_1317_pp0_iter2_reg;
reg   [12:0] v225_3_addr_7_reg_1317_pp0_iter3_reg;
reg   [12:0] v225_3_addr_7_reg_1317_pp0_iter4_reg;
reg   [12:0] v225_4_addr_7_reg_1322;
reg   [12:0] v225_4_addr_7_reg_1322_pp0_iter2_reg;
reg   [12:0] v225_4_addr_7_reg_1322_pp0_iter3_reg;
reg   [12:0] v225_5_addr_7_reg_1327;
reg   [12:0] v225_5_addr_7_reg_1327_pp0_iter2_reg;
reg   [12:0] v225_5_addr_7_reg_1327_pp0_iter3_reg;
reg   [12:0] v225_6_addr_7_reg_1333;
reg   [12:0] v225_6_addr_7_reg_1333_pp0_iter2_reg;
reg   [12:0] v225_6_addr_7_reg_1333_pp0_iter3_reg;
reg   [12:0] v225_7_addr_7_reg_1338;
reg   [12:0] v225_7_addr_7_reg_1338_pp0_iter2_reg;
reg   [12:0] v225_7_addr_7_reg_1338_pp0_iter3_reg;
reg   [31:0] v225_3_load_reg_1343;
reg   [31:0] v122_reg_1348;
reg   [31:0] v225_3_load_5_reg_1353;
reg   [31:0] v128_reg_1358;
reg   [31:0] v225_4_load_6_reg_1363;
reg   [31:0] v134_reg_1368;
reg   [31:0] v225_4_load_reg_1373;
reg   [31:0] v139_reg_1378;
reg   [31:0] v225_5_load_6_reg_1383;
reg   [31:0] v145_reg_1388;
reg   [31:0] v225_5_load_reg_1393;
reg   [31:0] v225_6_load_6_reg_1398;
reg   [31:0] v225_6_load_reg_1403;
reg   [31:0] v225_7_load_6_reg_1408;
wire   [31:0] v170_fu_800_p3;
reg   [31:0] v170_reg_1413;
wire   [31:0] v175_fu_811_p3;
reg   [31:0] v175_reg_1418;
wire   [31:0] v181_fu_822_p3;
reg   [31:0] v181_reg_1423;
wire   [31:0] v186_fu_833_p3;
reg   [31:0] v186_reg_1428;
wire   [31:0] v192_fu_844_p3;
reg   [31:0] v192_reg_1433;
wire   [31:0] v197_fu_855_p3;
reg   [31:0] v197_reg_1438;
wire   [31:0] v203_fu_866_p3;
reg   [31:0] v203_reg_1443;
wire   [31:0] v118_fu_876_p3;
wire   [31:0] v125_fu_887_p3;
wire   [31:0] v131_fu_898_p3;
wire   [31:0] v137_fu_909_p3;
wire   [31:0] v142_fu_920_p3;
wire   [31:0] v148_fu_931_p3;
reg   [31:0] v148_reg_1473;
reg   [31:0] v150_reg_1478;
wire   [31:0] v153_fu_941_p3;
reg   [31:0] v153_reg_1483;
reg   [31:0] v156_reg_1488;
wire   [31:0] v159_fu_951_p3;
reg   [31:0] v159_reg_1493;
reg   [31:0] v161_reg_1498;
wire   [31:0] v164_fu_961_p3;
reg   [31:0] v164_reg_1503;
reg   [31:0] v167_reg_1508;
reg   [31:0] v172_reg_1513;
wire   [31:0] v208_fu_972_p3;
reg   [31:0] v208_reg_1518;
wire   [31:0] v214_fu_983_p3;
reg   [31:0] v214_reg_1523;
reg   [31:0] v178_reg_1528;
reg   [31:0] v183_reg_1533;
reg   [31:0] v189_reg_1538;
reg   [31:0] v194_reg_1543;
reg   [31:0] v200_reg_1548;
reg   [31:0] v205_reg_1553;
reg   [31:0] v211_reg_1558;
reg   [31:0] v216_reg_1563;
reg   [31:0] v157_reg_1568;
reg   [31:0] v212_reg_1573;
reg   [31:0] v217_reg_1578;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_10_fu_604_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_10_fu_640_p1;
wire   [63:0] zext_ln238_fu_744_p1;
wire   [63:0] zext_ln171_fu_757_p1;
wire   [63:0] zext_ln245_fu_774_p1;
wire   [63:0] zext_ln179_fu_787_p1;
reg   [7:0] v116_3_fu_114;
wire   [7:0] add_ln170_fu_726_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
wire    ap_block_pp0_stage1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln178_fu_1005_p1;
wire    ap_block_pp0_stage2;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln185_fu_1010_p1;
wire   [31:0] bitcast_ln283_fu_1069_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_1073_p1;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
reg    v225_4_we1_local;
wire   [31:0] bitcast_ln192_fu_990_p1;
reg    v225_4_we0_local;
wire   [31:0] bitcast_ln198_fu_995_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln205_fu_1000_p1;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln211_fu_1015_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln218_fu_1020_p1;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln224_fu_1024_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln231_fu_1029_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln237_fu_1034_p1;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
wire   [31:0] bitcast_ln244_fu_1039_p1;
reg    v225_0_we0_local;
wire   [31:0] bitcast_ln250_fu_1044_p1;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
reg    v225_1_we1_local;
wire   [31:0] bitcast_ln257_fu_1049_p1;
reg    v225_1_we0_local;
wire   [31:0] bitcast_ln263_fu_1054_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln270_fu_1059_p1;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln276_fu_1064_p1;
reg   [31:0] grp_fu_516_p0;
reg   [31:0] grp_fu_516_p1;
reg   [31:0] grp_fu_520_p0;
reg   [31:0] grp_fu_520_p1;
reg   [31:0] grp_fu_524_p0;
reg   [31:0] grp_fu_524_p1;
reg   [31:0] grp_fu_528_p0;
reg   [31:0] grp_fu_528_p1;
reg   [31:0] grp_fu_532_p0;
reg   [31:0] grp_fu_532_p1;
reg   [31:0] grp_fu_536_p0;
reg   [31:0] grp_fu_536_p1;
reg   [31:0] grp_fu_540_p0;
reg   [31:0] grp_fu_540_p1;
reg   [31:0] grp_fu_544_p0;
reg   [31:0] grp_fu_544_p1;
reg   [31:0] grp_fu_548_p0;
reg   [31:0] grp_fu_548_p1;
reg   [31:0] grp_fu_552_p0;
reg   [31:0] grp_fu_552_p1;
wire   [13:0] zext_ln175_9_fu_594_p1;
wire   [13:0] add_ln175_fu_598_p2;
wire   [6:0] tmp_s_fu_612_p4;
wire   [13:0] zext_ln182_9_fu_630_p1;
wire   [13:0] add_ln182_fu_634_p2;
wire   [31:0] v121_fu_664_p2;
wire   [31:0] v121_fu_664_p4;
wire   [31:0] v121_fu_664_p6;
wire   [31:0] v121_fu_664_p8;
wire   [31:0] v121_fu_664_p9;
wire   [31:0] v127_fu_703_p2;
wire   [31:0] v127_fu_703_p4;
wire   [31:0] v127_fu_703_p6;
wire   [31:0] v127_fu_703_p8;
wire   [31:0] v127_fu_703_p9;
wire   [12:0] zext_ln175_fu_736_p1;
wire   [12:0] add_ln238_fu_739_p2;
wire   [12:0] add_ln171_fu_752_p2;
wire   [12:0] zext_ln182_fu_766_p1;
wire   [12:0] add_ln245_fu_769_p2;
wire   [12:0] add_ln179_fu_782_p2;
wire   [31:0] v169_fu_796_p1;
wire   [31:0] v174_fu_807_p1;
wire   [31:0] v180_fu_818_p1;
wire   [31:0] v185_fu_829_p1;
wire   [31:0] v191_fu_840_p1;
wire   [31:0] v196_fu_851_p1;
wire   [31:0] v202_fu_862_p1;
wire   [31:0] v117_fu_873_p1;
wire   [31:0] v124_fu_884_p1;
wire   [31:0] v130_fu_895_p1;
wire   [31:0] v136_fu_906_p1;
wire   [31:0] v141_fu_917_p1;
wire   [31:0] v147_fu_928_p1;
wire   [31:0] v152_fu_938_p1;
wire   [31:0] v158_fu_948_p1;
wire   [31:0] v163_fu_958_p1;
wire   [31:0] v207_fu_968_p1;
wire   [31:0] v213_fu_979_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [1:0] v121_fu_664_p1;
wire   [1:0] v121_fu_664_p3;
wire  signed [1:0] v121_fu_664_p5;
wire  signed [1:0] v121_fu_664_p7;
wire   [1:0] v127_fu_703_p1;
wire   [1:0] v127_fu_703_p3;
wire  signed [1:0] v127_fu_703_p5;
wire  signed [1:0] v127_fu_703_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_3_fu_114 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U126(.din0(v121_fu_664_p2),.din1(v121_fu_664_p4),.din2(v121_fu_664_p6),.din3(v121_fu_664_p8),.def(v121_fu_664_p9),.sel(empty),.dout(v121_fu_664_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U127(.din0(v127_fu_703_p2),.din1(v127_fu_703_p4),.din2(v127_fu_703_p6),.din3(v127_fu_703_p8),.def(v127_fu_703_p9),.sel(empty),.dout(v127_fu_703_p11));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_fu_114 <= 8'd0;
    end else if (((icmp_ln170_reg_1184 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_fu_114 <= add_ln170_fu_726_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln170_reg_1184 <= icmp_ln170_fu_588_p2;
        or_ln179_3_reg_1208[7 : 1] <= or_ln179_3_fu_622_p3[7 : 1];
        v116_reg_1178 <= ap_sig_allocacmp_v116;
        v225_0_addr_5_reg_1297 <= zext_ln245_fu_774_p1;
        v225_0_addr_5_reg_1297_pp0_iter2_reg <= v225_0_addr_5_reg_1297;
        v225_0_addr_5_reg_1297_pp0_iter3_reg <= v225_0_addr_5_reg_1297_pp0_iter2_reg;
        v225_0_addr_reg_1251 <= zext_ln238_fu_744_p1;
        v225_0_addr_reg_1251_pp0_iter2_reg <= v225_0_addr_reg_1251;
        v225_0_addr_reg_1251_pp0_iter3_reg <= v225_0_addr_reg_1251_pp0_iter2_reg;
        v225_1_addr_5_reg_1302 <= zext_ln245_fu_774_p1;
        v225_1_addr_5_reg_1302_pp0_iter2_reg <= v225_1_addr_5_reg_1302;
        v225_1_addr_5_reg_1302_pp0_iter3_reg <= v225_1_addr_5_reg_1302_pp0_iter2_reg;
        v225_1_addr_reg_1256 <= zext_ln238_fu_744_p1;
        v225_1_addr_reg_1256_pp0_iter2_reg <= v225_1_addr_reg_1256;
        v225_1_addr_reg_1256_pp0_iter3_reg <= v225_1_addr_reg_1256_pp0_iter2_reg;
        v225_2_addr_5_reg_1307 <= zext_ln245_fu_774_p1;
        v225_2_addr_5_reg_1307_pp0_iter2_reg <= v225_2_addr_5_reg_1307;
        v225_2_addr_5_reg_1307_pp0_iter3_reg <= v225_2_addr_5_reg_1307_pp0_iter2_reg;
        v225_2_addr_5_reg_1307_pp0_iter4_reg <= v225_2_addr_5_reg_1307_pp0_iter3_reg;
        v225_2_addr_reg_1261 <= zext_ln238_fu_744_p1;
        v225_2_addr_reg_1261_pp0_iter2_reg <= v225_2_addr_reg_1261;
        v225_2_addr_reg_1261_pp0_iter3_reg <= v225_2_addr_reg_1261_pp0_iter2_reg;
        v225_3_addr_5_reg_1271 <= zext_ln238_fu_744_p1;
        v225_3_addr_5_reg_1271_pp0_iter2_reg <= v225_3_addr_5_reg_1271;
        v225_3_addr_5_reg_1271_pp0_iter3_reg <= v225_3_addr_5_reg_1271_pp0_iter2_reg;
        v225_3_addr_5_reg_1271_pp0_iter4_reg <= v225_3_addr_5_reg_1271_pp0_iter3_reg;
        v225_3_addr_6_reg_1312 <= zext_ln179_fu_787_p1;
        v225_3_addr_6_reg_1312_pp0_iter2_reg <= v225_3_addr_6_reg_1312;
        v225_3_addr_6_reg_1312_pp0_iter3_reg <= v225_3_addr_6_reg_1312_pp0_iter2_reg;
        v225_3_addr_7_reg_1317 <= zext_ln245_fu_774_p1;
        v225_3_addr_7_reg_1317_pp0_iter2_reg <= v225_3_addr_7_reg_1317;
        v225_3_addr_7_reg_1317_pp0_iter3_reg <= v225_3_addr_7_reg_1317_pp0_iter2_reg;
        v225_3_addr_7_reg_1317_pp0_iter4_reg <= v225_3_addr_7_reg_1317_pp0_iter3_reg;
        v225_3_addr_reg_1266 <= zext_ln171_fu_757_p1;
        v225_3_addr_reg_1266_pp0_iter2_reg <= v225_3_addr_reg_1266;
        v225_3_addr_reg_1266_pp0_iter3_reg <= v225_3_addr_reg_1266_pp0_iter2_reg;
        v225_4_addr_7_reg_1322 <= zext_ln179_fu_787_p1;
        v225_4_addr_7_reg_1322_pp0_iter2_reg <= v225_4_addr_7_reg_1322;
        v225_4_addr_7_reg_1322_pp0_iter3_reg <= v225_4_addr_7_reg_1322_pp0_iter2_reg;
        v225_4_addr_reg_1276 <= zext_ln171_fu_757_p1;
        v225_4_addr_reg_1276_pp0_iter2_reg <= v225_4_addr_reg_1276;
        v225_4_addr_reg_1276_pp0_iter3_reg <= v225_4_addr_reg_1276_pp0_iter2_reg;
        v225_5_addr_7_reg_1327 <= zext_ln179_fu_787_p1;
        v225_5_addr_7_reg_1327_pp0_iter2_reg <= v225_5_addr_7_reg_1327;
        v225_5_addr_7_reg_1327_pp0_iter3_reg <= v225_5_addr_7_reg_1327_pp0_iter2_reg;
        v225_5_addr_reg_1281 <= zext_ln171_fu_757_p1;
        v225_5_addr_reg_1281_pp0_iter2_reg <= v225_5_addr_reg_1281;
        v225_5_addr_reg_1281_pp0_iter3_reg <= v225_5_addr_reg_1281_pp0_iter2_reg;
        v225_6_addr_7_reg_1333 <= zext_ln179_fu_787_p1;
        v225_6_addr_7_reg_1333_pp0_iter2_reg <= v225_6_addr_7_reg_1333;
        v225_6_addr_7_reg_1333_pp0_iter3_reg <= v225_6_addr_7_reg_1333_pp0_iter2_reg;
        v225_6_addr_reg_1287 <= zext_ln171_fu_757_p1;
        v225_6_addr_reg_1287_pp0_iter2_reg <= v225_6_addr_reg_1287;
        v225_6_addr_reg_1287_pp0_iter3_reg <= v225_6_addr_reg_1287_pp0_iter2_reg;
        v225_7_addr_7_reg_1338 <= zext_ln179_fu_787_p1;
        v225_7_addr_7_reg_1338_pp0_iter2_reg <= v225_7_addr_7_reg_1338;
        v225_7_addr_7_reg_1338_pp0_iter3_reg <= v225_7_addr_7_reg_1338_pp0_iter2_reg;
        v225_7_addr_reg_1292 <= zext_ln171_fu_757_p1;
        v225_7_addr_reg_1292_pp0_iter2_reg <= v225_7_addr_reg_1292;
        v225_7_addr_reg_1292_pp0_iter3_reg <= v225_7_addr_reg_1292_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_556 <= grp_fu_4104_p_dout0;
        reg_560 <= grp_fu_4108_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_564 <= grp_fu_4112_p_dout0;
        reg_568 <= grp_fu_4116_p_dout0;
        reg_572 <= grp_fu_4120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_576 <= grp_fu_4104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v121_reg_1233 <= v121_fu_664_p11;
        v127_reg_1242 <= v127_fu_703_p11;
        v170_reg_1413 <= v170_fu_800_p3;
        v175_reg_1418 <= v175_fu_811_p3;
        v181_reg_1423 <= v181_fu_822_p3;
        v186_reg_1428 <= v186_fu_833_p3;
        v192_reg_1433 <= v192_fu_844_p3;
        v197_reg_1438 <= v197_fu_855_p3;
        v203_reg_1443 <= v203_fu_866_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_1348 <= grp_fu_4124_p_dout0;
        v128_reg_1358 <= grp_fu_4128_p_dout0;
        v134_reg_1368 <= grp_fu_4132_p_dout0;
        v139_reg_1378 <= grp_fu_4136_p_dout0;
        v145_reg_1388 <= grp_fu_4140_p_dout0;
        v225_3_load_5_reg_1353 <= v225_3_q0;
        v225_3_load_reg_1343 <= v225_3_q1;
        v225_4_load_6_reg_1363 <= v225_4_q1;
        v225_4_load_reg_1373 <= v225_4_q0;
        v225_5_load_6_reg_1383 <= v225_5_q1;
        v225_5_load_reg_1393 <= v225_5_q0;
        v225_6_load_6_reg_1398 <= v225_6_q1;
        v225_6_load_reg_1403 <= v225_6_q0;
        v225_7_load_6_reg_1408 <= v225_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v148_reg_1473 <= v148_fu_931_p3;
        v153_reg_1483 <= v153_fu_941_p3;
        v159_reg_1493 <= v159_fu_951_p3;
        v164_reg_1503 <= v164_fu_961_p3;
        v208_reg_1518 <= v208_fu_972_p3;
        v214_reg_1523 <= v214_fu_983_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1478 <= grp_fu_4124_p_dout0;
        v156_reg_1488 <= grp_fu_4128_p_dout0;
        v161_reg_1498 <= grp_fu_4132_p_dout0;
        v167_reg_1508 <= grp_fu_4136_p_dout0;
        v172_reg_1513 <= grp_fu_4140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1568 <= grp_fu_4108_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1528 <= grp_fu_4124_p_dout0;
        v183_reg_1533 <= grp_fu_4128_p_dout0;
        v189_reg_1538 <= grp_fu_4132_p_dout0;
        v194_reg_1543 <= grp_fu_4136_p_dout0;
        v200_reg_1548 <= grp_fu_4140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1553 <= grp_fu_4124_p_dout0;
        v211_reg_1558 <= grp_fu_4128_p_dout0;
        v216_reg_1563 <= grp_fu_4132_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1573 <= grp_fu_4108_p_dout0;
        v217_reg_1578 <= grp_fu_4112_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1184 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v116 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116 = v116_3_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_516_p0 = v203_reg_1443;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p0 = v175_reg_1418;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_516_p0 = v148_reg_1473;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_516_p0 = v118_fu_876_p3;
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_516_p1 = v205_reg_1553;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p1 = v178_reg_1528;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_516_p1 = v150_reg_1478;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_516_p1 = v122_reg_1348;
    end else begin
        grp_fu_516_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_520_p0 = v208_reg_1518;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_520_p0 = v181_reg_1423;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_520_p0 = v153_reg_1483;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_520_p0 = v125_fu_887_p3;
    end else begin
        grp_fu_520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_520_p1 = v211_reg_1558;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_520_p1 = v183_reg_1533;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_520_p1 = v156_reg_1488;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_520_p1 = v128_reg_1358;
    end else begin
        grp_fu_520_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_524_p0 = v214_reg_1523;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_524_p0 = v186_reg_1428;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p0 = v159_reg_1493;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_524_p0 = v131_fu_898_p3;
    end else begin
        grp_fu_524_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_524_p1 = v216_reg_1563;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_524_p1 = v189_reg_1538;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p1 = v161_reg_1498;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_524_p1 = v134_reg_1368;
    end else begin
        grp_fu_524_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_528_p0 = v192_reg_1433;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_528_p0 = v164_reg_1503;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_528_p0 = v137_fu_909_p3;
    end else begin
        grp_fu_528_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_528_p1 = v194_reg_1543;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_528_p1 = v167_reg_1508;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_528_p1 = v139_reg_1378;
    end else begin
        grp_fu_528_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_532_p0 = v197_reg_1438;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_532_p0 = v170_reg_1413;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_532_p0 = v142_fu_920_p3;
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_532_p1 = v200_reg_1548;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_532_p1 = v172_reg_1513;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_532_p1 = v145_reg_1388;
    end else begin
        grp_fu_532_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_536_p0 = v199_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_536_p0 = v177_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_536_p0 = v144_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_536_p0 = v120_3;
    end else begin
        grp_fu_536_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_536_p1 = v127_reg_1242;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_536_p1 = v121_reg_1233;
    end else begin
        grp_fu_536_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_540_p0 = v210_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_540_p0 = v177_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_540_p0 = v155_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_540_p0 = v120_3;
    end else begin
        grp_fu_540_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_540_p1 = v121_reg_1233;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_540_p1 = v127_reg_1242;
    end else begin
        grp_fu_540_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_544_p0 = v210_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_544_p0 = v188_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_544_p0 = v155_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_544_p0 = v133_3;
    end else begin
        grp_fu_544_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_544_p1 = v127_reg_1242;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_544_p1 = v121_reg_1233;
    end else begin
        grp_fu_544_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_548_p0 = v188_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_548_p0 = v166_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_548_p0 = v133_3;
    end else begin
        grp_fu_548_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_548_p1 = v121_reg_1233;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_548_p1 = v127_reg_1242;
    end else begin
        grp_fu_548_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_552_p0 = v199_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_552_p0 = v166_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_552_p0 = v144_3;
    end else begin
        grp_fu_552_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_552_p1 = v127_reg_1242;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_552_p1 = v121_reg_1233;
    end else begin
        grp_fu_552_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_5_reg_1297_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln245_fu_774_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_reg_1251_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln238_fu_744_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_5_reg_1302_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln245_fu_774_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_reg_1256_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln238_fu_744_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_5_reg_1307_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln245_fu_774_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_reg_1261_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln238_fu_744_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_7_reg_1317_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_6_reg_1312_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_7_reg_1317;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_787_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_5_reg_1271_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_reg_1266_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_5_reg_1271;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_757_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln289_fu_1073_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d0_local = bitcast_ln185_fu_1010_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d1_local = bitcast_ln283_fu_1069_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d1_local = bitcast_ln178_fu_1005_p1;
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_3_we1_local = 1'b1;
    end else begin
        v225_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_address0_local = v225_4_addr_7_reg_1322_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_787_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_address1_local = v225_4_addr_reg_1276_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address1_local = zext_ln171_fu_757_p1;
    end else begin
        v225_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_4_ce0_local = 1'b1;
    end else begin
        v225_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_4_ce1_local = 1'b1;
    end else begin
        v225_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_we0_local = 1'b1;
    end else begin
        v225_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_we1_local = 1'b1;
    end else begin
        v225_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_5_address0_local = v225_5_addr_reg_1281_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_787_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_5_address1_local = v225_5_addr_7_reg_1327_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_757_p1;
    end else begin
        v225_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_5_ce0_local = 1'b1;
    end else begin
        v225_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_5_ce1_local = 1'b1;
    end else begin
        v225_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_5_we0_local = 1'b1;
    end else begin
        v225_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_5_we1_local = 1'b1;
    end else begin
        v225_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_6_address0_local = v225_6_addr_7_reg_1333_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_787_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_6_address1_local = v225_6_addr_reg_1287_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address1_local = zext_ln171_fu_757_p1;
    end else begin
        v225_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_6_ce0_local = 1'b1;
    end else begin
        v225_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_6_ce1_local = 1'b1;
    end else begin
        v225_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_6_we0_local = 1'b1;
    end else begin
        v225_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_6_we1_local = 1'b1;
    end else begin
        v225_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_7_address0_local = v225_7_addr_7_reg_1338_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_787_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_7_address1_local = v225_7_addr_reg_1292_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_757_p1;
    end else begin
        v225_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_7_ce0_local = 1'b1;
    end else begin
        v225_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_7_ce1_local = 1'b1;
    end else begin
        v225_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_7_we0_local = 1'b1;
    end else begin
        v225_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_7_we1_local = 1'b1;
    end else begin
        v225_7_we1_local = 1'b0;
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
        v227_1_ce0_local = 1'b1;
    end else begin
        v227_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_1_ce1_local = 1'b1;
    end else begin
        v227_1_ce1_local = 1'b0;
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
        v227_3_ce0_local = 1'b1;
    end else begin
        v227_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_3_ce1_local = 1'b1;
    end else begin
        v227_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln170_fu_726_p2 = (v116_reg_1178 + 8'd2);
assign add_ln171_fu_752_p2 = (mul_ln251 + zext_ln175_fu_736_p1);
assign add_ln175_fu_598_p2 = (mul_ln175 + zext_ln175_9_fu_594_p1);
assign add_ln179_fu_782_p2 = (mul_ln251 + zext_ln182_fu_766_p1);
assign add_ln182_fu_634_p2 = (mul_ln175 + zext_ln182_9_fu_630_p1);
assign add_ln238_fu_739_p2 = (mul_ln238 + zext_ln175_fu_736_p1);
assign add_ln245_fu_769_p2 = (mul_ln238 + zext_ln182_fu_766_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln178_fu_1005_p1 = reg_556;
assign bitcast_ln185_fu_1010_p1 = reg_560;
assign bitcast_ln192_fu_990_p1 = reg_564;
assign bitcast_ln198_fu_995_p1 = reg_568;
assign bitcast_ln205_fu_1000_p1 = reg_572;
assign bitcast_ln211_fu_1015_p1 = reg_576;
assign bitcast_ln218_fu_1020_p1 = v157_reg_1568;
assign bitcast_ln224_fu_1024_p1 = reg_564;
assign bitcast_ln231_fu_1029_p1 = reg_568;
assign bitcast_ln237_fu_1034_p1 = reg_572;
assign bitcast_ln244_fu_1039_p1 = reg_556;
assign bitcast_ln250_fu_1044_p1 = reg_560;
assign bitcast_ln257_fu_1049_p1 = reg_564;
assign bitcast_ln263_fu_1054_p1 = reg_568;
assign bitcast_ln270_fu_1059_p1 = reg_572;
assign bitcast_ln276_fu_1064_p1 = reg_576;
assign bitcast_ln283_fu_1069_p1 = v212_reg_1573;
assign bitcast_ln289_fu_1073_p1 = v217_reg_1578;
assign grp_fu_4104_p_ce = 1'b1;
assign grp_fu_4104_p_din0 = grp_fu_516_p0;
assign grp_fu_4104_p_din1 = grp_fu_516_p1;
assign grp_fu_4104_p_opcode = 2'd0;
assign grp_fu_4108_p_ce = 1'b1;
assign grp_fu_4108_p_din0 = grp_fu_520_p0;
assign grp_fu_4108_p_din1 = grp_fu_520_p1;
assign grp_fu_4108_p_opcode = 2'd0;
assign grp_fu_4112_p_ce = 1'b1;
assign grp_fu_4112_p_din0 = grp_fu_524_p0;
assign grp_fu_4112_p_din1 = grp_fu_524_p1;
assign grp_fu_4112_p_opcode = 2'd0;
assign grp_fu_4116_p_ce = 1'b1;
assign grp_fu_4116_p_din0 = grp_fu_528_p0;
assign grp_fu_4116_p_din1 = grp_fu_528_p1;
assign grp_fu_4116_p_opcode = 2'd0;
assign grp_fu_4120_p_ce = 1'b1;
assign grp_fu_4120_p_din0 = grp_fu_532_p0;
assign grp_fu_4120_p_din1 = grp_fu_532_p1;
assign grp_fu_4120_p_opcode = 2'd0;
assign grp_fu_4124_p_ce = 1'b1;
assign grp_fu_4124_p_din0 = grp_fu_536_p0;
assign grp_fu_4124_p_din1 = grp_fu_536_p1;
assign grp_fu_4128_p_ce = 1'b1;
assign grp_fu_4128_p_din0 = grp_fu_540_p0;
assign grp_fu_4128_p_din1 = grp_fu_540_p1;
assign grp_fu_4132_p_ce = 1'b1;
assign grp_fu_4132_p_din0 = grp_fu_544_p0;
assign grp_fu_4132_p_din1 = grp_fu_544_p1;
assign grp_fu_4136_p_ce = 1'b1;
assign grp_fu_4136_p_din0 = grp_fu_548_p0;
assign grp_fu_4136_p_din1 = grp_fu_548_p1;
assign grp_fu_4140_p_ce = 1'b1;
assign grp_fu_4140_p_din0 = grp_fu_552_p0;
assign grp_fu_4140_p_din1 = grp_fu_552_p1;
assign icmp_ln170_fu_588_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_3_fu_622_p3 = {{tmp_s_fu_612_p4}, {1'd1}};
assign tmp_s_fu_612_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_873_p1 = v225_3_load_reg_1343;
assign v118_fu_876_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_873_p1);
assign v121_fu_664_p2 = v227_0_q1;
assign v121_fu_664_p4 = v227_1_q1;
assign v121_fu_664_p6 = v227_2_q1;
assign v121_fu_664_p8 = v227_3_q1;
assign v121_fu_664_p9 = 'bx;
assign v124_fu_884_p1 = v225_3_load_5_reg_1353;
assign v125_fu_887_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_884_p1);
assign v127_fu_703_p2 = v227_0_q0;
assign v127_fu_703_p4 = v227_1_q0;
assign v127_fu_703_p6 = v227_2_q0;
assign v127_fu_703_p8 = v227_3_q0;
assign v127_fu_703_p9 = 'bx;
assign v130_fu_895_p1 = v225_4_load_6_reg_1363;
assign v131_fu_898_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_895_p1);
assign v136_fu_906_p1 = v225_4_load_reg_1373;
assign v137_fu_909_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_906_p1);
assign v141_fu_917_p1 = v225_5_load_6_reg_1383;
assign v142_fu_920_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_917_p1);
assign v147_fu_928_p1 = v225_5_load_reg_1393;
assign v148_fu_931_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_928_p1);
assign v152_fu_938_p1 = v225_6_load_6_reg_1398;
assign v153_fu_941_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_938_p1);
assign v158_fu_948_p1 = v225_6_load_reg_1403;
assign v159_fu_951_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_948_p1);
assign v163_fu_958_p1 = v225_7_load_6_reg_1408;
assign v164_fu_961_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_958_p1);
assign v169_fu_796_p1 = v225_7_q0;
assign v170_fu_800_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_796_p1);
assign v174_fu_807_p1 = v225_0_q1;
assign v175_fu_811_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_807_p1);
assign v180_fu_818_p1 = v225_0_q0;
assign v181_fu_822_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_818_p1);
assign v185_fu_829_p1 = v225_1_q1;
assign v186_fu_833_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_829_p1);
assign v191_fu_840_p1 = v225_1_q0;
assign v192_fu_844_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_840_p1);
assign v196_fu_851_p1 = v225_2_q1;
assign v197_fu_855_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_851_p1);
assign v202_fu_862_p1 = v225_2_q0;
assign v203_fu_866_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_862_p1);
assign v207_fu_968_p1 = v225_3_q1;
assign v208_fu_972_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_968_p1);
assign v213_fu_979_p1 = v225_3_q0;
assign v214_fu_983_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_979_p1);
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = bitcast_ln250_fu_1044_p1;
assign v225_0_d1 = bitcast_ln244_fu_1039_p1;
assign v225_0_we0 = v225_0_we0_local;
assign v225_0_we1 = v225_0_we1_local;
assign v225_1_address0 = v225_1_address0_local;
assign v225_1_address1 = v225_1_address1_local;
assign v225_1_ce0 = v225_1_ce0_local;
assign v225_1_ce1 = v225_1_ce1_local;
assign v225_1_d0 = bitcast_ln263_fu_1054_p1;
assign v225_1_d1 = bitcast_ln257_fu_1049_p1;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = bitcast_ln276_fu_1064_p1;
assign v225_2_d1 = bitcast_ln270_fu_1059_p1;
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
assign v225_4_address0 = v225_4_address0_local;
assign v225_4_address1 = v225_4_address1_local;
assign v225_4_ce0 = v225_4_ce0_local;
assign v225_4_ce1 = v225_4_ce1_local;
assign v225_4_d0 = bitcast_ln198_fu_995_p1;
assign v225_4_d1 = bitcast_ln192_fu_990_p1;
assign v225_4_we0 = v225_4_we0_local;
assign v225_4_we1 = v225_4_we1_local;
assign v225_5_address0 = v225_5_address0_local;
assign v225_5_address1 = v225_5_address1_local;
assign v225_5_ce0 = v225_5_ce0_local;
assign v225_5_ce1 = v225_5_ce1_local;
assign v225_5_d0 = bitcast_ln205_fu_1000_p1;
assign v225_5_d1 = bitcast_ln211_fu_1015_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln224_fu_1024_p1;
assign v225_6_d1 = bitcast_ln218_fu_1020_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln237_fu_1034_p1;
assign v225_7_d1 = bitcast_ln231_fu_1029_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_0_address0 = zext_ln182_10_fu_640_p1;
assign v227_0_address1 = zext_ln175_10_fu_604_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_10_fu_640_p1;
assign v227_1_address1 = zext_ln175_10_fu_604_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_2_address0 = zext_ln182_10_fu_640_p1;
assign v227_2_address1 = zext_ln175_10_fu_604_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_3_address0 = zext_ln182_10_fu_640_p1;
assign v227_3_address1 = zext_ln175_10_fu_604_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign zext_ln171_fu_757_p1 = add_ln171_fu_752_p2;
assign zext_ln175_10_fu_604_p1 = add_ln175_fu_598_p2;
assign zext_ln175_9_fu_594_p1 = ap_sig_allocacmp_v116;
assign zext_ln175_fu_736_p1 = v116_reg_1178;
assign zext_ln179_fu_787_p1 = add_ln179_fu_782_p2;
assign zext_ln182_10_fu_640_p1 = add_ln182_fu_634_p2;
assign zext_ln182_9_fu_630_p1 = or_ln179_3_fu_622_p3;
assign zext_ln182_fu_766_p1 = or_ln179_3_reg_1208;
assign zext_ln238_fu_744_p1 = add_ln238_fu_739_p2;
assign zext_ln245_fu_774_p1 = add_ln245_fu_769_p2;
always @ (posedge ap_clk) begin
    or_ln179_3_reg_1208[0] <= 1'b1;
end
endmodule 