module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,mul_ln171,mul_ln225,mul_ln277,cmp11,empty,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_5266_p_din0,grp_fu_5266_p_din1,grp_fu_5266_p_opcode,grp_fu_5266_p_dout0,grp_fu_5266_p_ce,grp_fu_5270_p_din0,grp_fu_5270_p_din1,grp_fu_5270_p_opcode,grp_fu_5270_p_dout0,grp_fu_5270_p_ce,grp_fu_5274_p_din0,grp_fu_5274_p_din1,grp_fu_5274_p_opcode,grp_fu_5274_p_dout0,grp_fu_5274_p_ce,grp_fu_5278_p_din0,grp_fu_5278_p_din1,grp_fu_5278_p_dout0,grp_fu_5278_p_ce,grp_fu_5282_p_din0,grp_fu_5282_p_din1,grp_fu_5282_p_dout0,grp_fu_5282_p_ce,grp_fu_5286_p_din0,grp_fu_5286_p_din1,grp_fu_5286_p_dout0,grp_fu_5286_p_ce); 
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
input  [13:0] mul_ln171;
input  [13:0] mul_ln225;
input  [13:0] mul_ln277;
input  [0:0] cmp11;
input  [2:0] empty;
input  [31:0] v120;
input  [31:0] v133;
input  [31:0] v144;
input  [31:0] v155;
input  [31:0] v166;
input  [31:0] v177;
input  [31:0] v188;
input  [31:0] v199;
input  [31:0] v210;
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
reg   [0:0] icmp_ln170_reg_1148;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_501;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_505;
reg   [31:0] reg_509;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_513;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_517;
reg   [31:0] reg_521;
reg   [7:0] v116_5_reg_1143;
wire   [0:0] icmp_ln170_fu_533_p2;
wire   [13:0] zext_ln175_fu_539_p1;
reg   [13:0] zext_ln175_reg_1152;
reg   [13:0] v225_0_addr_1_reg_1178;
reg   [13:0] v225_0_addr_1_reg_1178_pp0_iter1_reg;
reg   [13:0] v225_0_addr_1_reg_1178_pp0_iter2_reg;
reg   [13:0] v225_1_addr_1_reg_1183;
reg   [13:0] v225_1_addr_1_reg_1183_pp0_iter1_reg;
reg   [13:0] v225_1_addr_1_reg_1183_pp0_iter2_reg;
reg   [13:0] v225_2_addr_1_reg_1188;
reg   [13:0] v225_2_addr_1_reg_1188_pp0_iter1_reg;
reg   [13:0] v225_2_addr_1_reg_1188_pp0_iter2_reg;
reg   [13:0] v225_3_addr_1_reg_1193;
reg   [13:0] v225_3_addr_1_reg_1193_pp0_iter1_reg;
reg   [13:0] v225_3_addr_1_reg_1193_pp0_iter2_reg;
wire   [13:0] zext_ln182_fu_593_p1;
reg   [13:0] zext_ln182_reg_1199;
reg   [13:0] zext_ln182_reg_1199_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1225;
reg   [13:0] v225_0_addr_2_reg_1225_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1225_pp0_iter2_reg;
reg   [13:0] v225_1_addr_2_reg_1230;
reg   [13:0] v225_1_addr_2_reg_1230_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1230_pp0_iter2_reg;
reg   [13:0] v225_2_addr_2_reg_1235;
reg   [13:0] v225_2_addr_2_reg_1235_pp0_iter1_reg;
reg   [13:0] v225_2_addr_2_reg_1235_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1240;
reg   [13:0] v225_3_addr_2_reg_1240_pp0_iter1_reg;
reg   [13:0] v225_3_addr_2_reg_1240_pp0_iter2_reg;
reg   [13:0] v225_0_addr_3_reg_1246;
reg   [13:0] v225_0_addr_3_reg_1246_pp0_iter1_reg;
reg   [13:0] v225_0_addr_3_reg_1246_pp0_iter2_reg;
wire   [13:0] add_ln277_fu_641_p2;
reg   [13:0] add_ln277_reg_1251;
reg   [13:0] add_ln277_reg_1251_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1256;
reg   [13:0] v225_1_addr_3_reg_1256_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1256_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1261;
reg   [13:0] v225_2_addr_3_reg_1261_pp0_iter1_reg;
reg   [13:0] v225_2_addr_3_reg_1261_pp0_iter2_reg;
reg   [13:0] v225_3_addr_3_reg_1266;
reg   [13:0] v225_3_addr_3_reg_1266_pp0_iter1_reg;
reg   [13:0] v225_3_addr_3_reg_1266_pp0_iter2_reg;
reg   [31:0] v225_0_load_reg_1271;
wire   [31:0] v121_fu_661_p11;
reg   [31:0] v121_reg_1276;
reg   [31:0] v225_0_load_1_reg_1283;
wire   [31:0] v127_fu_700_p11;
reg   [31:0] v127_reg_1288;
reg   [31:0] v225_1_load_reg_1295;
reg   [31:0] v225_1_load_1_reg_1300;
reg   [31:0] v225_2_load_reg_1305;
reg   [31:0] v225_2_load_1_reg_1310;
wire   [31:0] v164_fu_727_p3;
reg   [31:0] v164_reg_1315;
reg   [31:0] v122_reg_1320;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1325;
reg   [31:0] v134_reg_1330;
wire   [31:0] v118_fu_747_p3;
wire   [31:0] v125_fu_758_p3;
wire   [31:0] v131_fu_769_p3;
reg   [31:0] v139_reg_1350;
reg   [31:0] v145_reg_1355;
reg   [31:0] v150_reg_1360;
reg   [13:0] v225_0_addr_4_reg_1365;
reg   [13:0] v225_0_addr_4_reg_1365_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_789_p2;
reg   [13:0] add_ln284_reg_1370;
reg   [13:0] v225_1_addr_4_reg_1375;
reg   [13:0] v225_1_addr_4_reg_1375_pp0_iter2_reg;
reg   [13:0] v225_2_addr_4_reg_1380;
reg   [13:0] v225_2_addr_4_reg_1380_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1385;
reg   [13:0] v225_3_addr_4_reg_1385_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1385_pp0_iter3_reg;
wire   [31:0] v137_fu_796_p3;
wire   [31:0] v142_fu_807_p3;
wire   [31:0] v148_fu_818_p3;
reg   [31:0] v225_3_load_reg_1405;
reg   [31:0] v156_reg_1410;
reg   [31:0] v225_3_load_1_reg_1415;
reg   [31:0] v161_reg_1420;
reg   [31:0] v167_reg_1425;
reg   [13:0] v225_0_addr_5_reg_1430;
reg   [13:0] v225_0_addr_5_reg_1430_pp0_iter2_reg;
reg   [13:0] v225_0_addr_5_reg_1430_pp0_iter3_reg;
reg   [13:0] v225_0_addr_6_reg_1435;
reg   [13:0] v225_0_addr_6_reg_1435_pp0_iter2_reg;
reg   [13:0] v225_0_addr_6_reg_1435_pp0_iter3_reg;
wire   [31:0] v153_fu_837_p3;
wire   [31:0] v159_fu_848_p3;
wire   [31:0] v170_fu_860_p3;
reg   [31:0] v170_reg_1450;
reg   [31:0] v172_reg_1455;
wire   [31:0] v175_fu_871_p3;
reg   [31:0] v175_reg_1460;
reg   [31:0] v178_reg_1465;
wire   [31:0] v181_fu_882_p3;
reg   [31:0] v181_reg_1470;
reg   [31:0] v183_reg_1475;
wire   [31:0] v186_fu_893_p3;
reg   [31:0] v186_reg_1480;
wire   [31:0] v192_fu_904_p3;
reg   [31:0] v192_reg_1485;
wire   [31:0] v197_fu_915_p3;
reg   [31:0] v197_reg_1490;
wire   [31:0] v203_fu_926_p3;
reg   [31:0] v203_reg_1495;
reg   [31:0] v189_reg_1500;
reg   [31:0] v194_reg_1505;
reg   [31:0] v200_reg_1510;
wire   [31:0] v208_fu_937_p3;
reg   [31:0] v208_reg_1515;
wire   [31:0] v214_fu_948_p3;
reg   [31:0] v214_reg_1520;
reg   [31:0] v205_reg_1525;
reg   [31:0] v211_reg_1530;
reg   [31:0] v216_reg_1535;
reg   [31:0] v206_reg_1540;
reg   [31:0] v212_reg_1545;
reg   [31:0] v217_reg_1550;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_16_fu_553_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_567_p1;
wire   [63:0] zext_ln182_16_fu_607_p1;
wire   [63:0] zext_ln179_fu_621_p1;
wire   [63:0] zext_ln225_fu_633_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln232_fu_781_p1;
wire   [63:0] zext_ln277_fu_826_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_830_p1;
reg   [7:0] v116_fu_108;
wire   [7:0] add_ln170_fu_734_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_5;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_975_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_980_p1;
wire   [31:0] bitcast_ln231_fu_995_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_1000_p1;
wire   [31:0] bitcast_ln283_fu_1034_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_1038_p1;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_4_ce1_local;
reg    v227_4_ce0_local;
reg    v227_6_ce1_local;
reg    v227_6_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_955_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_960_p1;
wire   [31:0] bitcast_ln244_fu_1005_p1;
wire   [31:0] bitcast_ln250_fu_1010_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_965_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_970_p1;
wire   [31:0] bitcast_ln257_fu_1015_p1;
wire   [31:0] bitcast_ln263_fu_1020_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln218_fu_985_p1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln224_fu_990_p1;
wire   [31:0] bitcast_ln270_fu_1025_p1;
wire   [31:0] bitcast_ln276_fu_1030_p1;
reg   [31:0] grp_fu_477_p0;
reg   [31:0] grp_fu_477_p1;
reg   [31:0] grp_fu_481_p0;
reg   [31:0] grp_fu_481_p1;
reg   [31:0] grp_fu_485_p0;
reg   [31:0] grp_fu_485_p1;
reg   [31:0] grp_fu_489_p0;
reg   [31:0] grp_fu_489_p1;
reg   [31:0] grp_fu_493_p0;
reg   [31:0] grp_fu_493_p1;
reg   [31:0] grp_fu_497_p0;
reg   [31:0] grp_fu_497_p1;
wire   [12:0] zext_ln175_15_fu_543_p1;
wire   [12:0] add_ln175_fu_547_p2;
wire   [13:0] add_ln171_fu_561_p2;
wire   [6:0] tmp_7_fu_575_p4;
wire   [7:0] or_ln_fu_585_p3;
wire   [12:0] zext_ln182_15_fu_597_p1;
wire   [12:0] add_ln182_fu_601_p2;
wire   [13:0] add_ln179_fu_615_p2;
wire   [13:0] add_ln225_fu_629_p2;
wire   [31:0] v121_fu_661_p2;
wire   [31:0] v121_fu_661_p4;
wire   [31:0] v121_fu_661_p6;
wire   [31:0] v121_fu_661_p8;
wire   [31:0] v121_fu_661_p9;
wire   [31:0] v127_fu_700_p2;
wire   [31:0] v127_fu_700_p4;
wire   [31:0] v127_fu_700_p6;
wire   [31:0] v127_fu_700_p8;
wire   [31:0] v127_fu_700_p9;
wire   [31:0] v163_fu_723_p1;
wire   [31:0] v117_fu_744_p1;
wire   [31:0] v124_fu_755_p1;
wire   [31:0] v130_fu_766_p1;
wire   [13:0] add_ln232_fu_777_p2;
wire   [31:0] v136_fu_793_p1;
wire   [31:0] v141_fu_804_p1;
wire   [31:0] v147_fu_815_p1;
wire   [31:0] v152_fu_834_p1;
wire   [31:0] v158_fu_845_p1;
wire   [31:0] v169_fu_856_p1;
wire   [31:0] v174_fu_867_p1;
wire   [31:0] v180_fu_878_p1;
wire   [31:0] v185_fu_889_p1;
wire   [31:0] v191_fu_900_p1;
wire   [31:0] v196_fu_911_p1;
wire   [31:0] v202_fu_922_p1;
wire   [31:0] v207_fu_933_p1;
wire   [31:0] v213_fu_944_p1;
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
wire   [2:0] v121_fu_661_p1;
wire   [2:0] v121_fu_661_p3;
wire  signed [2:0] v121_fu_661_p5;
wire  signed [2:0] v121_fu_661_p7;
wire   [2:0] v127_fu_700_p1;
wire   [2:0] v127_fu_700_p3;
wire  signed [2:0] v127_fu_700_p5;
wire  signed [2:0] v127_fu_700_p7;
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
sparsemux_9_3_32_1_1_U7(.din0(v121_fu_661_p2),.din1(v121_fu_661_p4),.din2(v121_fu_661_p6),.din3(v121_fu_661_p8),.def(v121_fu_661_p9),.sel(empty),.dout(v121_fu_661_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U8(.din0(v127_fu_700_p2),.din1(v127_fu_700_p4),.din2(v127_fu_700_p6),.din3(v127_fu_700_p8),.def(v127_fu_700_p9),.sel(empty),.dout(v127_fu_700_p11));
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
    end else if (((icmp_ln170_reg_1148 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_108 <= add_ln170_fu_734_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_1251 <= add_ln277_fu_641_p2;
        add_ln277_reg_1251_pp0_iter1_reg <= add_ln277_reg_1251;
        add_ln284_reg_1370 <= add_ln284_fu_789_p2;
        v121_reg_1276 <= v121_fu_661_p11;
        v127_reg_1288 <= v127_fu_700_p11;
        v225_0_addr_3_reg_1246 <= zext_ln225_fu_633_p1;
        v225_0_addr_3_reg_1246_pp0_iter1_reg <= v225_0_addr_3_reg_1246;
        v225_0_addr_3_reg_1246_pp0_iter2_reg <= v225_0_addr_3_reg_1246_pp0_iter1_reg;
        v225_0_addr_4_reg_1365 <= zext_ln232_fu_781_p1;
        v225_0_addr_4_reg_1365_pp0_iter2_reg <= v225_0_addr_4_reg_1365;
        v225_1_addr_3_reg_1256 <= zext_ln225_fu_633_p1;
        v225_1_addr_3_reg_1256_pp0_iter1_reg <= v225_1_addr_3_reg_1256;
        v225_1_addr_3_reg_1256_pp0_iter2_reg <= v225_1_addr_3_reg_1256_pp0_iter1_reg;
        v225_1_addr_4_reg_1375 <= zext_ln232_fu_781_p1;
        v225_1_addr_4_reg_1375_pp0_iter2_reg <= v225_1_addr_4_reg_1375;
        v225_2_addr_3_reg_1261 <= zext_ln225_fu_633_p1;
        v225_2_addr_3_reg_1261_pp0_iter1_reg <= v225_2_addr_3_reg_1261;
        v225_2_addr_3_reg_1261_pp0_iter2_reg <= v225_2_addr_3_reg_1261_pp0_iter1_reg;
        v225_2_addr_4_reg_1380 <= zext_ln232_fu_781_p1;
        v225_2_addr_4_reg_1380_pp0_iter2_reg <= v225_2_addr_4_reg_1380;
        v225_3_addr_3_reg_1266 <= zext_ln225_fu_633_p1;
        v225_3_addr_3_reg_1266_pp0_iter1_reg <= v225_3_addr_3_reg_1266;
        v225_3_addr_3_reg_1266_pp0_iter2_reg <= v225_3_addr_3_reg_1266_pp0_iter1_reg;
        v225_3_addr_4_reg_1385 <= zext_ln232_fu_781_p1;
        v225_3_addr_4_reg_1385_pp0_iter2_reg <= v225_3_addr_4_reg_1385;
        v225_3_addr_4_reg_1385_pp0_iter3_reg <= v225_3_addr_4_reg_1385_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln170_reg_1148 <= icmp_ln170_fu_533_p2;
        v116_5_reg_1143 <= ap_sig_allocacmp_v116_5;
        v225_0_addr_1_reg_1178 <= zext_ln171_fu_567_p1;
        v225_0_addr_1_reg_1178_pp0_iter1_reg <= v225_0_addr_1_reg_1178;
        v225_0_addr_1_reg_1178_pp0_iter2_reg <= v225_0_addr_1_reg_1178_pp0_iter1_reg;
        v225_0_addr_2_reg_1225 <= zext_ln179_fu_621_p1;
        v225_0_addr_2_reg_1225_pp0_iter1_reg <= v225_0_addr_2_reg_1225;
        v225_0_addr_2_reg_1225_pp0_iter2_reg <= v225_0_addr_2_reg_1225_pp0_iter1_reg;
        v225_1_addr_1_reg_1183 <= zext_ln171_fu_567_p1;
        v225_1_addr_1_reg_1183_pp0_iter1_reg <= v225_1_addr_1_reg_1183;
        v225_1_addr_1_reg_1183_pp0_iter2_reg <= v225_1_addr_1_reg_1183_pp0_iter1_reg;
        v225_1_addr_2_reg_1230 <= zext_ln179_fu_621_p1;
        v225_1_addr_2_reg_1230_pp0_iter1_reg <= v225_1_addr_2_reg_1230;
        v225_1_addr_2_reg_1230_pp0_iter2_reg <= v225_1_addr_2_reg_1230_pp0_iter1_reg;
        v225_2_addr_1_reg_1188 <= zext_ln171_fu_567_p1;
        v225_2_addr_1_reg_1188_pp0_iter1_reg <= v225_2_addr_1_reg_1188;
        v225_2_addr_1_reg_1188_pp0_iter2_reg <= v225_2_addr_1_reg_1188_pp0_iter1_reg;
        v225_2_addr_2_reg_1235 <= zext_ln179_fu_621_p1;
        v225_2_addr_2_reg_1235_pp0_iter1_reg <= v225_2_addr_2_reg_1235;
        v225_2_addr_2_reg_1235_pp0_iter2_reg <= v225_2_addr_2_reg_1235_pp0_iter1_reg;
        v225_3_addr_1_reg_1193 <= zext_ln171_fu_567_p1;
        v225_3_addr_1_reg_1193_pp0_iter1_reg <= v225_3_addr_1_reg_1193;
        v225_3_addr_1_reg_1193_pp0_iter2_reg <= v225_3_addr_1_reg_1193_pp0_iter1_reg;
        v225_3_addr_2_reg_1240 <= zext_ln179_fu_621_p1;
        v225_3_addr_2_reg_1240_pp0_iter1_reg <= v225_3_addr_2_reg_1240;
        v225_3_addr_2_reg_1240_pp0_iter2_reg <= v225_3_addr_2_reg_1240_pp0_iter1_reg;
        zext_ln175_reg_1152[7 : 0] <= zext_ln175_fu_539_p1[7 : 0];
        zext_ln182_reg_1199[7 : 1] <= zext_ln182_fu_593_p1[7 : 1];
        zext_ln182_reg_1199_pp0_iter1_reg[7 : 1] <= zext_ln182_reg_1199[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_501 <= grp_fu_5266_p_dout0;
        reg_505 <= grp_fu_5270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_509 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_513 <= grp_fu_5266_p_dout0;
        reg_517 <= grp_fu_5270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_521 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1320 <= grp_fu_5278_p_dout0;
        v128_reg_1325 <= grp_fu_5282_p_dout0;
        v134_reg_1330 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1350 <= grp_fu_5278_p_dout0;
        v145_reg_1355 <= grp_fu_5282_p_dout0;
        v150_reg_1360 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1410 <= grp_fu_5278_p_dout0;
        v161_reg_1420 <= grp_fu_5282_p_dout0;
        v167_reg_1425 <= grp_fu_5286_p_dout0;
        v225_3_load_1_reg_1415 <= v225_3_q0;
        v225_3_load_reg_1405 <= v225_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v164_reg_1315 <= v164_fu_727_p3;
        v170_reg_1450 <= v170_fu_860_p3;
        v175_reg_1460 <= v175_fu_871_p3;
        v181_reg_1470 <= v181_fu_882_p3;
        v186_reg_1480 <= v186_fu_893_p3;
        v192_reg_1485 <= v192_fu_904_p3;
        v197_reg_1490 <= v197_fu_915_p3;
        v203_reg_1495 <= v203_fu_926_p3;
        v225_0_addr_5_reg_1430 <= zext_ln277_fu_826_p1;
        v225_0_addr_5_reg_1430_pp0_iter2_reg <= v225_0_addr_5_reg_1430;
        v225_0_addr_5_reg_1430_pp0_iter3_reg <= v225_0_addr_5_reg_1430_pp0_iter2_reg;
        v225_0_addr_6_reg_1435 <= zext_ln284_fu_830_p1;
        v225_0_addr_6_reg_1435_pp0_iter2_reg <= v225_0_addr_6_reg_1435;
        v225_0_addr_6_reg_1435_pp0_iter3_reg <= v225_0_addr_6_reg_1435_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1455 <= grp_fu_5278_p_dout0;
        v178_reg_1465 <= grp_fu_5282_p_dout0;
        v183_reg_1475 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1500 <= grp_fu_5278_p_dout0;
        v194_reg_1505 <= grp_fu_5282_p_dout0;
        v200_reg_1510 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1525 <= grp_fu_5278_p_dout0;
        v211_reg_1530 <= grp_fu_5282_p_dout0;
        v216_reg_1535 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1540 <= grp_fu_5266_p_dout0;
        v212_reg_1545 <= grp_fu_5270_p_dout0;
        v217_reg_1550 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1515 <= v208_fu_937_p3;
        v214_reg_1520 <= v214_fu_948_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_1_reg_1283 <= v225_0_q0;
        v225_0_load_reg_1271 <= v225_0_q1;
        v225_1_load_1_reg_1300 <= v225_1_q0;
        v225_1_load_reg_1295 <= v225_1_q1;
        v225_2_load_1_reg_1310 <= v225_2_q0;
        v225_2_load_reg_1305 <= v225_2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1148 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116_5 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_5 = v116_fu_108;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_477_p0 = v203_reg_1495;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_477_p0 = v186_reg_1480;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_477_p0 = v170_reg_1450;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_477_p0 = v153_fu_837_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_477_p0 = v137_fu_796_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_477_p0 = v118_fu_747_p3;
        end else begin
            grp_fu_477_p0 = 'bx;
        end
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_477_p1 = v205_reg_1525;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_477_p1 = v189_reg_1500;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_477_p1 = v172_reg_1455;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_477_p1 = v156_reg_1410;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_477_p1 = v139_reg_1350;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_477_p1 = v122_reg_1320;
        end else begin
            grp_fu_477_p1 = 'bx;
        end
    end else begin
        grp_fu_477_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_481_p0 = v208_reg_1515;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_481_p0 = v192_reg_1485;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_481_p0 = v175_reg_1460;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_481_p0 = v159_fu_848_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_481_p0 = v142_fu_807_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_481_p0 = v125_fu_758_p3;
        end else begin
            grp_fu_481_p0 = 'bx;
        end
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_481_p1 = v211_reg_1530;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_481_p1 = v194_reg_1505;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_481_p1 = v178_reg_1465;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_481_p1 = v161_reg_1420;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_481_p1 = v145_reg_1355;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_481_p1 = v128_reg_1325;
        end else begin
            grp_fu_481_p1 = 'bx;
        end
    end else begin
        grp_fu_481_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_485_p0 = v214_reg_1520;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_485_p0 = v197_reg_1490;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_485_p0 = v181_reg_1470;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_485_p0 = v164_reg_1315;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_485_p0 = v148_fu_818_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_485_p0 = v131_fu_769_p3;
        end else begin
            grp_fu_485_p0 = 'bx;
        end
    end else begin
        grp_fu_485_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_485_p1 = v216_reg_1535;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_485_p1 = v200_reg_1510;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_485_p1 = v183_reg_1475;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_485_p1 = v167_reg_1425;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_485_p1 = v150_reg_1360;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_485_p1 = v134_reg_1330;
        end else begin
            grp_fu_485_p1 = 'bx;
        end
    end else begin
        grp_fu_485_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_489_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_489_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_489_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_489_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_489_p0 = v133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_489_p0 = v120;
    end else begin
        grp_fu_489_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_489_p1 = v127_reg_1288;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_489_p1 = v121_reg_1276;
    end else begin
        grp_fu_489_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_493_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_493_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_493_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_493_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_493_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_493_p0 = v120;
    end else begin
        grp_fu_493_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_493_p1 = v121_reg_1276;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_493_p1 = v127_reg_1288;
    end else begin
        grp_fu_493_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_497_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_497_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_497_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_497_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_497_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_497_p0 = v133;
    end else begin
        grp_fu_497_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_497_p1 = v127_reg_1288;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_497_p1 = v121_reg_1276;
    end else begin
        grp_fu_497_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_6_reg_1435_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1365_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1225_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_830_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_621_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_5_reg_1430_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1246_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1178_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_633_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_567_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d0_local = bitcast_ln289_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln237_fu_1000_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_980_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln283_fu_1034_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln231_fu_995_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln178_fu_975_p1;
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address0_local = v225_1_addr_4_reg_1375_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1230_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_621_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1256_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1183_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1256;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_567_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_1_d0_local = bitcast_ln250_fu_1010_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln198_fu_960_p1;
        end else begin
            v225_1_d0_local = 'bx;
        end
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_1_d1_local = bitcast_ln244_fu_1005_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln192_fu_955_p1;
        end else begin
            v225_1_d1_local = 'bx;
        end
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address0_local = v225_2_addr_4_reg_1380_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1235_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_621_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1261_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_1_reg_1188_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1261;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_567_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d0_local = bitcast_ln263_fu_1020_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln211_fu_970_p1;
        end else begin
            v225_2_d0_local = 'bx;
        end
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d1_local = bitcast_ln257_fu_1015_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln205_fu_965_p1;
        end else begin
            v225_2_d1_local = 'bx;
        end
    end else begin
        v225_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_4_reg_1385_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_1_reg_1193_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1240;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1266_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1240_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1266;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1193;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d0_local = bitcast_ln276_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln218_fu_985_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln270_fu_1025_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln224_fu_990_p1;
        end else begin
            v225_3_d1_local = 'bx;
        end
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln170_fu_734_p2 = (v116_5_reg_1143 + 8'd2);
assign add_ln171_fu_561_p2 = (mul_ln171 + zext_ln175_fu_539_p1);
assign add_ln175_fu_547_p2 = (mul_ln175 + zext_ln175_15_fu_543_p1);
assign add_ln179_fu_615_p2 = (mul_ln171 + zext_ln182_fu_593_p1);
assign add_ln182_fu_601_p2 = (mul_ln175 + zext_ln182_15_fu_597_p1);
assign add_ln225_fu_629_p2 = (mul_ln225 + zext_ln175_reg_1152);
assign add_ln232_fu_777_p2 = (mul_ln225 + zext_ln182_reg_1199_pp0_iter1_reg);
assign add_ln277_fu_641_p2 = (mul_ln277 + zext_ln175_reg_1152);
assign add_ln284_fu_789_p2 = (mul_ln277 + zext_ln182_reg_1199_pp0_iter1_reg);
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
assign bitcast_ln178_fu_975_p1 = reg_501;
assign bitcast_ln185_fu_980_p1 = reg_505;
assign bitcast_ln192_fu_955_p1 = reg_509;
assign bitcast_ln198_fu_960_p1 = reg_513;
assign bitcast_ln205_fu_965_p1 = reg_517;
assign bitcast_ln211_fu_970_p1 = reg_521;
assign bitcast_ln218_fu_985_p1 = reg_513;
assign bitcast_ln224_fu_990_p1 = reg_517;
assign bitcast_ln231_fu_995_p1 = reg_509;
assign bitcast_ln237_fu_1000_p1 = reg_501;
assign bitcast_ln244_fu_1005_p1 = reg_505;
assign bitcast_ln250_fu_1010_p1 = reg_521;
assign bitcast_ln257_fu_1015_p1 = reg_501;
assign bitcast_ln263_fu_1020_p1 = reg_505;
assign bitcast_ln270_fu_1025_p1 = reg_509;
assign bitcast_ln276_fu_1030_p1 = v206_reg_1540;
assign bitcast_ln283_fu_1034_p1 = v212_reg_1545;
assign bitcast_ln289_fu_1038_p1 = v217_reg_1550;
assign grp_fu_5266_p_ce = 1'b1;
assign grp_fu_5266_p_din0 = grp_fu_477_p0;
assign grp_fu_5266_p_din1 = grp_fu_477_p1;
assign grp_fu_5266_p_opcode = 2'd0;
assign grp_fu_5270_p_ce = 1'b1;
assign grp_fu_5270_p_din0 = grp_fu_481_p0;
assign grp_fu_5270_p_din1 = grp_fu_481_p1;
assign grp_fu_5270_p_opcode = 2'd0;
assign grp_fu_5274_p_ce = 1'b1;
assign grp_fu_5274_p_din0 = grp_fu_485_p0;
assign grp_fu_5274_p_din1 = grp_fu_485_p1;
assign grp_fu_5274_p_opcode = 2'd0;
assign grp_fu_5278_p_ce = 1'b1;
assign grp_fu_5278_p_din0 = grp_fu_489_p0;
assign grp_fu_5278_p_din1 = grp_fu_489_p1;
assign grp_fu_5282_p_ce = 1'b1;
assign grp_fu_5282_p_din0 = grp_fu_493_p0;
assign grp_fu_5282_p_din1 = grp_fu_493_p1;
assign grp_fu_5286_p_ce = 1'b1;
assign grp_fu_5286_p_din0 = grp_fu_497_p0;
assign grp_fu_5286_p_din1 = grp_fu_497_p1;
assign icmp_ln170_fu_533_p2 = ((ap_sig_allocacmp_v116_5 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln_fu_585_p3 = {{tmp_7_fu_575_p4}, {1'd1}};
assign tmp_7_fu_575_p4 = {{ap_sig_allocacmp_v116_5[7:1]}};
assign v117_fu_744_p1 = v225_0_load_reg_1271;
assign v118_fu_747_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_744_p1);
assign v121_fu_661_p2 = v227_0_q1;
assign v121_fu_661_p4 = v227_2_q1;
assign v121_fu_661_p6 = v227_4_q1;
assign v121_fu_661_p8 = v227_6_q1;
assign v121_fu_661_p9 = 'bx;
assign v124_fu_755_p1 = v225_0_load_1_reg_1283;
assign v125_fu_758_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_755_p1);
assign v127_fu_700_p2 = v227_0_q0;
assign v127_fu_700_p4 = v227_2_q0;
assign v127_fu_700_p6 = v227_4_q0;
assign v127_fu_700_p8 = v227_6_q0;
assign v127_fu_700_p9 = 'bx;
assign v130_fu_766_p1 = v225_1_load_reg_1295;
assign v131_fu_769_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_766_p1);
assign v136_fu_793_p1 = v225_1_load_1_reg_1300;
assign v137_fu_796_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_793_p1);
assign v141_fu_804_p1 = v225_2_load_reg_1305;
assign v142_fu_807_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_804_p1);
assign v147_fu_815_p1 = v225_2_load_1_reg_1310;
assign v148_fu_818_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_815_p1);
assign v152_fu_834_p1 = v225_3_load_reg_1405;
assign v153_fu_837_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_834_p1);
assign v158_fu_845_p1 = v225_3_load_1_reg_1415;
assign v159_fu_848_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_845_p1);
assign v163_fu_723_p1 = v225_0_q1;
assign v164_fu_727_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_723_p1);
assign v169_fu_856_p1 = v225_0_q0;
assign v170_fu_860_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_856_p1);
assign v174_fu_867_p1 = v225_1_q1;
assign v175_fu_871_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_867_p1);
assign v180_fu_878_p1 = v225_1_q0;
assign v181_fu_882_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_878_p1);
assign v185_fu_889_p1 = v225_2_q1;
assign v186_fu_893_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_889_p1);
assign v191_fu_900_p1 = v225_2_q0;
assign v192_fu_904_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_900_p1);
assign v196_fu_911_p1 = v225_3_q1;
assign v197_fu_915_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_911_p1);
assign v202_fu_922_p1 = v225_3_q0;
assign v203_fu_926_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_922_p1);
assign v207_fu_933_p1 = v225_0_q1;
assign v208_fu_937_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_933_p1);
assign v213_fu_944_p1 = v225_0_q0;
assign v214_fu_948_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_944_p1);
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
assign v227_0_address0 = zext_ln182_16_fu_607_p1;
assign v227_0_address1 = zext_ln175_16_fu_553_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_2_address0 = zext_ln182_16_fu_607_p1;
assign v227_2_address1 = zext_ln175_16_fu_553_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_4_address0 = zext_ln182_16_fu_607_p1;
assign v227_4_address1 = zext_ln175_16_fu_553_p1;
assign v227_4_ce0 = v227_4_ce0_local;
assign v227_4_ce1 = v227_4_ce1_local;
assign v227_6_address0 = zext_ln182_16_fu_607_p1;
assign v227_6_address1 = zext_ln175_16_fu_553_p1;
assign v227_6_ce0 = v227_6_ce0_local;
assign v227_6_ce1 = v227_6_ce1_local;
assign zext_ln171_fu_567_p1 = add_ln171_fu_561_p2;
assign zext_ln175_15_fu_543_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln175_16_fu_553_p1 = add_ln175_fu_547_p2;
assign zext_ln175_fu_539_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln179_fu_621_p1 = add_ln179_fu_615_p2;
assign zext_ln182_15_fu_597_p1 = or_ln_fu_585_p3;
assign zext_ln182_16_fu_607_p1 = add_ln182_fu_601_p2;
assign zext_ln182_fu_593_p1 = or_ln_fu_585_p3;
assign zext_ln225_fu_633_p1 = add_ln225_fu_629_p2;
assign zext_ln232_fu_781_p1 = add_ln232_fu_777_p2;
assign zext_ln277_fu_826_p1 = add_ln277_reg_1251_pp0_iter1_reg;
assign zext_ln284_fu_830_p1 = add_ln284_reg_1370;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1152[13:8] <= 6'b000000;
    zext_ln182_reg_1199[0] <= 1'b1;
    zext_ln182_reg_1199[13:8] <= 6'b000000;
    zext_ln182_reg_1199_pp0_iter1_reg[0] <= 1'b1;
    zext_ln182_reg_1199_pp0_iter1_reg[13:8] <= 6'b000000;
end
endmodule 