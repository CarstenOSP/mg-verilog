
module kernel_2mm_kernel_2mm_node1_Pipeline_label_56 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,mul_ln171_1,mul_ln225_1,mul_ln277_1,empty,v120_1,v133_1,v144_1,v155_1,v166_1,v177_1,v188_1,v199_1,v210_1,grp_fu_5266_p_din0,grp_fu_5266_p_din1,grp_fu_5266_p_opcode,grp_fu_5266_p_dout0,grp_fu_5266_p_ce,grp_fu_5270_p_din0,grp_fu_5270_p_din1,grp_fu_5270_p_opcode,grp_fu_5270_p_dout0,grp_fu_5270_p_ce,grp_fu_5274_p_din0,grp_fu_5274_p_din1,grp_fu_5274_p_opcode,grp_fu_5274_p_dout0,grp_fu_5274_p_ce,grp_fu_5278_p_din0,grp_fu_5278_p_din1,grp_fu_5278_p_dout0,grp_fu_5278_p_ce,grp_fu_5282_p_din0,grp_fu_5282_p_din1,grp_fu_5282_p_dout0,grp_fu_5282_p_ce,grp_fu_5286_p_din0,grp_fu_5286_p_din1,grp_fu_5286_p_dout0,grp_fu_5286_p_ce);  
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
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
input  [13:0] mul_ln171_1;
input  [13:0] mul_ln225_1;
input  [13:0] mul_ln277_1;
input  [2:0] empty;
input  [31:0] v120_1;
input  [31:0] v133_1;
input  [31:0] v144_1;
input  [31:0] v155_1;
input  [31:0] v166_1;
input  [31:0] v177_1;
input  [31:0] v188_1;
input  [31:0] v199_1;
input  [31:0] v210_1;
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
reg   [0:0] icmp_ln170_reg_1007;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_489;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_493;
reg   [31:0] reg_497;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_502;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_506;
reg   [31:0] reg_510;
reg   [31:0] reg_514;
reg   [31:0] reg_518;
reg   [31:0] reg_522;
reg   [7:0] v116_reg_1002;
wire   [0:0] icmp_ln170_fu_534_p2;
wire   [13:0] zext_ln175_fu_540_p1;
reg   [13:0] zext_ln175_reg_1011;
reg   [13:0] v225_0_addr_reg_1037;
reg   [13:0] v225_0_addr_reg_1037_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_1037_pp0_iter2_reg;
reg   [13:0] v225_1_addr_11_reg_1042;
reg   [13:0] v225_1_addr_11_reg_1042_pp0_iter1_reg;
reg   [13:0] v225_1_addr_11_reg_1042_pp0_iter2_reg;
reg   [13:0] v225_2_addr_9_reg_1047;
reg   [13:0] v225_2_addr_9_reg_1047_pp0_iter1_reg;
reg   [13:0] v225_2_addr_9_reg_1047_pp0_iter2_reg;
reg   [13:0] v225_3_addr_9_reg_1052;
reg   [13:0] v225_3_addr_9_reg_1052_pp0_iter1_reg;
reg   [13:0] v225_3_addr_9_reg_1052_pp0_iter2_reg;
wire   [13:0] zext_ln182_fu_594_p1;
reg   [13:0] zext_ln182_reg_1058;
reg   [13:0] zext_ln182_reg_1058_pp0_iter1_reg;
reg   [13:0] v225_0_addr_12_reg_1084;
reg   [13:0] v225_0_addr_12_reg_1084_pp0_iter1_reg;
reg   [13:0] v225_0_addr_12_reg_1084_pp0_iter2_reg;
reg   [13:0] v225_1_addr_12_reg_1089;
reg   [13:0] v225_1_addr_12_reg_1089_pp0_iter1_reg;
reg   [13:0] v225_1_addr_12_reg_1089_pp0_iter2_reg;
reg   [13:0] v225_2_addr_10_reg_1094;
reg   [13:0] v225_2_addr_10_reg_1094_pp0_iter1_reg;
reg   [13:0] v225_2_addr_10_reg_1094_pp0_iter2_reg;
reg   [13:0] v225_3_addr_10_reg_1099;
reg   [13:0] v225_3_addr_10_reg_1099_pp0_iter1_reg;
reg   [13:0] v225_3_addr_10_reg_1099_pp0_iter2_reg;
reg   [13:0] v225_0_addr_10_reg_1105;
reg   [13:0] v225_0_addr_10_reg_1105_pp0_iter1_reg;
reg   [13:0] v225_0_addr_10_reg_1105_pp0_iter2_reg;
wire   [13:0] add_ln277_fu_642_p2;
reg   [13:0] add_ln277_reg_1110;
reg   [13:0] add_ln277_reg_1110_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1115;
reg   [13:0] v225_1_addr_reg_1115_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1115_pp0_iter2_reg;
reg   [13:0] v225_2_addr_11_reg_1120;
reg   [13:0] v225_2_addr_11_reg_1120_pp0_iter1_reg;
reg   [13:0] v225_2_addr_11_reg_1120_pp0_iter2_reg;
reg   [13:0] v225_3_addr_11_reg_1125;
reg   [13:0] v225_3_addr_11_reg_1125_pp0_iter1_reg;
reg   [13:0] v225_3_addr_11_reg_1125_pp0_iter2_reg;
reg   [31:0] v225_0_load_reg_1130;
wire   [31:0] v121_fu_662_p11;
reg   [31:0] v121_reg_1135;
reg   [31:0] v225_0_load_10_reg_1142;
wire   [31:0] v127_fu_701_p11;
reg   [31:0] v127_reg_1147;
reg   [31:0] v225_1_load_10_reg_1154;
reg   [31:0] v225_1_load_11_reg_1159;
reg   [31:0] v225_2_load_8_reg_1164;
reg   [31:0] v225_2_load_9_reg_1169;
reg   [31:0] v225_0_load_11_reg_1174;
reg   [31:0] v122_reg_1179;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1184;
reg   [31:0] v134_reg_1189;
wire   [31:0] v117_fu_734_p1;
wire   [31:0] v124_fu_738_p1;
wire   [31:0] v130_fu_742_p1;
reg   [31:0] v139_reg_1209;
reg   [31:0] v145_reg_1214;
reg   [31:0] v150_reg_1219;
reg   [13:0] v225_0_addr_13_reg_1224;
reg   [13:0] v225_0_addr_13_reg_1224_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_758_p2;
reg   [13:0] add_ln284_reg_1229;
reg   [13:0] v225_1_addr_13_reg_1234;
reg   [13:0] v225_1_addr_13_reg_1234_pp0_iter2_reg;
reg   [13:0] v225_2_addr_reg_1239;
reg   [13:0] v225_2_addr_reg_1239_pp0_iter2_reg;
reg   [13:0] v225_3_addr_reg_1244;
reg   [13:0] v225_3_addr_reg_1244_pp0_iter2_reg;
reg   [13:0] v225_3_addr_reg_1244_pp0_iter3_reg;
wire   [31:0] v136_fu_762_p1;
wire   [31:0] v141_fu_766_p1;
wire   [31:0] v147_fu_770_p1;
reg   [31:0] v156_reg_1264;
reg   [31:0] v161_reg_1269;
reg   [31:0] v167_reg_1274;
reg   [13:0] v225_0_addr_11_reg_1279;
reg   [13:0] v225_0_addr_11_reg_1279_pp0_iter2_reg;
reg   [13:0] v225_0_addr_11_reg_1279_pp0_iter3_reg;
reg   [13:0] v225_0_addr_14_reg_1284;
reg   [13:0] v225_0_addr_14_reg_1284_pp0_iter2_reg;
reg   [13:0] v225_0_addr_14_reg_1284_pp0_iter3_reg;
wire   [31:0] v152_fu_782_p1;
wire   [31:0] v158_fu_787_p1;
wire   [31:0] v163_fu_792_p1;
reg   [31:0] v172_reg_1304;
reg   [31:0] v225_1_load_reg_1309;
reg   [31:0] v178_reg_1314;
reg   [31:0] v225_1_load_12_reg_1319;
reg   [31:0] v183_reg_1324;
reg   [31:0] v225_2_load_10_reg_1329;
reg   [31:0] v225_2_load_11_reg_1334;
wire   [31:0] v169_fu_796_p1;
wire   [31:0] v174_fu_801_p1;
wire   [31:0] v180_fu_805_p1;
reg   [31:0] v189_reg_1354;
reg   [31:0] v194_reg_1359;
reg   [31:0] v200_reg_1364;
reg   [31:0] v225_0_load_14_reg_1369;
wire   [31:0] v185_fu_809_p1;
wire   [31:0] v191_fu_813_p1;
wire   [31:0] v196_fu_817_p1;
reg   [31:0] v205_reg_1389;
reg   [31:0] v211_reg_1394;
reg   [31:0] v216_reg_1399;
wire   [31:0] v202_fu_822_p1;
wire   [31:0] v207_fu_827_p1;
wire   [31:0] v213_fu_832_p1;
reg   [31:0] v206_reg_1419;
reg   [31:0] v212_reg_1424;
reg   [31:0] v217_reg_1429;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_8_fu_554_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_568_p1;
wire   [63:0] zext_ln182_8_fu_608_p1;
wire   [63:0] zext_ln179_fu_622_p1;
wire   [63:0] zext_ln225_fu_634_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln232_fu_750_p1;
wire   [63:0] zext_ln277_fu_774_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_778_p1;
reg   [7:0] v116_2_fu_102;
wire   [7:0] add_ln170_fu_724_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_856_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_861_p1;
wire   [31:0] bitcast_ln231_fu_876_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_881_p1;
wire   [31:0] bitcast_ln283_fu_915_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_919_p1;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v227_5_ce1_local;
reg    v227_5_ce0_local;
reg    v227_7_ce1_local;
reg    v227_7_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_836_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_841_p1;
wire   [31:0] bitcast_ln244_fu_886_p1;
wire   [31:0] bitcast_ln250_fu_891_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_846_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_851_p1;
wire   [31:0] bitcast_ln257_fu_896_p1;
wire   [31:0] bitcast_ln263_fu_901_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln218_fu_866_p1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln224_fu_871_p1;
wire   [31:0] bitcast_ln270_fu_906_p1;
wire   [31:0] bitcast_ln276_fu_911_p1;
reg   [31:0] grp_fu_465_p0;
reg   [31:0] grp_fu_465_p1;
reg   [31:0] grp_fu_469_p0;
reg   [31:0] grp_fu_469_p1;
reg   [31:0] grp_fu_473_p0;
reg   [31:0] grp_fu_473_p1;
reg   [31:0] grp_fu_477_p0;
reg   [31:0] grp_fu_477_p1;
reg   [31:0] grp_fu_481_p0;
reg   [31:0] grp_fu_481_p1;
reg   [31:0] grp_fu_485_p0;
reg   [31:0] grp_fu_485_p1;
wire   [12:0] zext_ln175_7_fu_544_p1;
wire   [12:0] add_ln175_fu_548_p2;
wire   [13:0] add_ln171_fu_562_p2;
wire   [6:0] tmp_s_fu_576_p4;
wire   [7:0] or_ln179_2_fu_586_p3;
wire   [12:0] zext_ln182_7_fu_598_p1;
wire   [12:0] add_ln182_fu_602_p2;
wire   [13:0] add_ln179_fu_616_p2;
wire   [13:0] add_ln225_fu_630_p2;
wire   [31:0] v121_fu_662_p2;
wire   [31:0] v121_fu_662_p4;
wire   [31:0] v121_fu_662_p6;
wire   [31:0] v121_fu_662_p8;
wire   [31:0] v121_fu_662_p9;
wire   [31:0] v127_fu_701_p2;
wire   [31:0] v127_fu_701_p4;
wire   [31:0] v127_fu_701_p6;
wire   [31:0] v127_fu_701_p8;
wire   [31:0] v127_fu_701_p9;
wire   [13:0] add_ln232_fu_746_p2;
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
wire   [2:0] v121_fu_662_p1;
wire   [2:0] v121_fu_662_p3;
wire  signed [2:0] v121_fu_662_p5;
wire  signed [2:0] v121_fu_662_p7;
wire   [2:0] v127_fu_701_p1;
wire   [2:0] v127_fu_701_p3;
wire  signed [2:0] v127_fu_701_p5;
wire  signed [2:0] v127_fu_701_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_2_fu_102 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U132(.din0(v121_fu_662_p2),.din1(v121_fu_662_p4),.din2(v121_fu_662_p6),.din3(v121_fu_662_p8),.def(v121_fu_662_p9),.sel(empty),.dout(v121_fu_662_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U133(.din0(v127_fu_701_p2),.din1(v127_fu_701_p4),.din2(v127_fu_701_p6),.din3(v127_fu_701_p8),.def(v127_fu_701_p9),.sel(empty),.dout(v127_fu_701_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_497 <= v225_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_497 <= v225_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_fu_102 <= 8'd0;
    end else if (((icmp_ln170_reg_1007 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_2_fu_102 <= add_ln170_fu_724_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_1110 <= add_ln277_fu_642_p2;
        add_ln277_reg_1110_pp0_iter1_reg <= add_ln277_reg_1110;
        add_ln284_reg_1229 <= add_ln284_fu_758_p2;
        v121_reg_1135 <= v121_fu_662_p11;
        v127_reg_1147 <= v127_fu_701_p11;
        v225_0_addr_10_reg_1105 <= zext_ln225_fu_634_p1;
        v225_0_addr_10_reg_1105_pp0_iter1_reg <= v225_0_addr_10_reg_1105;
        v225_0_addr_10_reg_1105_pp0_iter2_reg <= v225_0_addr_10_reg_1105_pp0_iter1_reg;
        v225_0_addr_13_reg_1224 <= zext_ln232_fu_750_p1;
        v225_0_addr_13_reg_1224_pp0_iter2_reg <= v225_0_addr_13_reg_1224;
        v225_1_addr_13_reg_1234 <= zext_ln232_fu_750_p1;
        v225_1_addr_13_reg_1234_pp0_iter2_reg <= v225_1_addr_13_reg_1234;
        v225_1_addr_reg_1115 <= zext_ln225_fu_634_p1;
        v225_1_addr_reg_1115_pp0_iter1_reg <= v225_1_addr_reg_1115;
        v225_1_addr_reg_1115_pp0_iter2_reg <= v225_1_addr_reg_1115_pp0_iter1_reg;
        v225_2_addr_11_reg_1120 <= zext_ln225_fu_634_p1;
        v225_2_addr_11_reg_1120_pp0_iter1_reg <= v225_2_addr_11_reg_1120;
        v225_2_addr_11_reg_1120_pp0_iter2_reg <= v225_2_addr_11_reg_1120_pp0_iter1_reg;
        v225_2_addr_reg_1239 <= zext_ln232_fu_750_p1;
        v225_2_addr_reg_1239_pp0_iter2_reg <= v225_2_addr_reg_1239;
        v225_3_addr_11_reg_1125 <= zext_ln225_fu_634_p1;
        v225_3_addr_11_reg_1125_pp0_iter1_reg <= v225_3_addr_11_reg_1125;
        v225_3_addr_11_reg_1125_pp0_iter2_reg <= v225_3_addr_11_reg_1125_pp0_iter1_reg;
        v225_3_addr_reg_1244 <= zext_ln232_fu_750_p1;
        v225_3_addr_reg_1244_pp0_iter2_reg <= v225_3_addr_reg_1244;
        v225_3_addr_reg_1244_pp0_iter3_reg <= v225_3_addr_reg_1244_pp0_iter2_reg;
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
        icmp_ln170_reg_1007 <= icmp_ln170_fu_534_p2;
        v116_reg_1002 <= ap_sig_allocacmp_v116;
        v225_0_addr_12_reg_1084 <= zext_ln179_fu_622_p1;
        v225_0_addr_12_reg_1084_pp0_iter1_reg <= v225_0_addr_12_reg_1084;
        v225_0_addr_12_reg_1084_pp0_iter2_reg <= v225_0_addr_12_reg_1084_pp0_iter1_reg;
        v225_0_addr_reg_1037 <= zext_ln171_fu_568_p1;
        v225_0_addr_reg_1037_pp0_iter1_reg <= v225_0_addr_reg_1037;
        v225_0_addr_reg_1037_pp0_iter2_reg <= v225_0_addr_reg_1037_pp0_iter1_reg;
        v225_1_addr_11_reg_1042 <= zext_ln171_fu_568_p1;
        v225_1_addr_11_reg_1042_pp0_iter1_reg <= v225_1_addr_11_reg_1042;
        v225_1_addr_11_reg_1042_pp0_iter2_reg <= v225_1_addr_11_reg_1042_pp0_iter1_reg;
        v225_1_addr_12_reg_1089 <= zext_ln179_fu_622_p1;
        v225_1_addr_12_reg_1089_pp0_iter1_reg <= v225_1_addr_12_reg_1089;
        v225_1_addr_12_reg_1089_pp0_iter2_reg <= v225_1_addr_12_reg_1089_pp0_iter1_reg;
        v225_2_addr_10_reg_1094 <= zext_ln179_fu_622_p1;
        v225_2_addr_10_reg_1094_pp0_iter1_reg <= v225_2_addr_10_reg_1094;
        v225_2_addr_10_reg_1094_pp0_iter2_reg <= v225_2_addr_10_reg_1094_pp0_iter1_reg;
        v225_2_addr_9_reg_1047 <= zext_ln171_fu_568_p1;
        v225_2_addr_9_reg_1047_pp0_iter1_reg <= v225_2_addr_9_reg_1047;
        v225_2_addr_9_reg_1047_pp0_iter2_reg <= v225_2_addr_9_reg_1047_pp0_iter1_reg;
        v225_3_addr_10_reg_1099 <= zext_ln179_fu_622_p1;
        v225_3_addr_10_reg_1099_pp0_iter1_reg <= v225_3_addr_10_reg_1099;
        v225_3_addr_10_reg_1099_pp0_iter2_reg <= v225_3_addr_10_reg_1099_pp0_iter1_reg;
        v225_3_addr_9_reg_1052 <= zext_ln171_fu_568_p1;
        v225_3_addr_9_reg_1052_pp0_iter1_reg <= v225_3_addr_9_reg_1052;
        v225_3_addr_9_reg_1052_pp0_iter2_reg <= v225_3_addr_9_reg_1052_pp0_iter1_reg;
        zext_ln175_reg_1011[7 : 0] <= zext_ln175_fu_540_p1[7 : 0];
        zext_ln182_reg_1058[7 : 1] <= zext_ln182_fu_594_p1[7 : 1];
        zext_ln182_reg_1058_pp0_iter1_reg[7 : 1] <= zext_ln182_reg_1058[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_489 <= v225_3_q1;
        reg_493 <= v225_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_502 <= grp_fu_5266_p_dout0;
        reg_506 <= grp_fu_5270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_510 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_514 <= grp_fu_5266_p_dout0;
        reg_518 <= grp_fu_5270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_522 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1179 <= grp_fu_5278_p_dout0;
        v128_reg_1184 <= grp_fu_5282_p_dout0;
        v134_reg_1189 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1209 <= grp_fu_5278_p_dout0;
        v145_reg_1214 <= grp_fu_5282_p_dout0;
        v150_reg_1219 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1264 <= grp_fu_5278_p_dout0;
        v161_reg_1269 <= grp_fu_5282_p_dout0;
        v167_reg_1274 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1304 <= grp_fu_5278_p_dout0;
        v178_reg_1314 <= grp_fu_5282_p_dout0;
        v183_reg_1324 <= grp_fu_5286_p_dout0;
        v225_1_load_12_reg_1319 <= v225_1_q0;
        v225_1_load_reg_1309 <= v225_1_q1;
        v225_2_load_10_reg_1329 <= v225_2_q1;
        v225_2_load_11_reg_1334 <= v225_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1354 <= grp_fu_5278_p_dout0;
        v194_reg_1359 <= grp_fu_5282_p_dout0;
        v200_reg_1364 <= grp_fu_5286_p_dout0;
        v225_0_load_14_reg_1369 <= v225_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1389 <= grp_fu_5278_p_dout0;
        v211_reg_1394 <= grp_fu_5282_p_dout0;
        v216_reg_1399 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1419 <= grp_fu_5266_p_dout0;
        v212_reg_1424 <= grp_fu_5270_p_dout0;
        v217_reg_1429 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_addr_11_reg_1279 <= zext_ln277_fu_774_p1;
        v225_0_addr_11_reg_1279_pp0_iter2_reg <= v225_0_addr_11_reg_1279;
        v225_0_addr_11_reg_1279_pp0_iter3_reg <= v225_0_addr_11_reg_1279_pp0_iter2_reg;
        v225_0_addr_14_reg_1284 <= zext_ln284_fu_778_p1;
        v225_0_addr_14_reg_1284_pp0_iter2_reg <= v225_0_addr_14_reg_1284;
        v225_0_addr_14_reg_1284_pp0_iter3_reg <= v225_0_addr_14_reg_1284_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_10_reg_1142 <= v225_0_q0;
        v225_0_load_reg_1130 <= v225_0_q1;
        v225_1_load_10_reg_1154 <= v225_1_q1;
        v225_1_load_11_reg_1159 <= v225_1_q0;
        v225_2_load_8_reg_1164 <= v225_2_q1;
        v225_2_load_9_reg_1169 <= v225_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_load_11_reg_1174 <= v225_0_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1007 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v116 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116 = v116_2_fu_102;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_465_p0 = v202_fu_822_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_465_p0 = v185_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_465_p0 = v169_fu_796_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_465_p0 = v152_fu_782_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_465_p0 = v136_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_465_p0 = v117_fu_734_p1;
        end else begin
            grp_fu_465_p0 = 'bx;
        end
    end else begin
        grp_fu_465_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_465_p1 = v205_reg_1389;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_465_p1 = v189_reg_1354;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_465_p1 = v172_reg_1304;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_465_p1 = v156_reg_1264;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_465_p1 = v139_reg_1209;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_465_p1 = v122_reg_1179;
        end else begin
            grp_fu_465_p1 = 'bx;
        end
    end else begin
        grp_fu_465_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_469_p0 = v207_fu_827_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_469_p0 = v191_fu_813_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_469_p0 = v174_fu_801_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_469_p0 = v158_fu_787_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_469_p0 = v141_fu_766_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_469_p0 = v124_fu_738_p1;
        end else begin
            grp_fu_469_p0 = 'bx;
        end
    end else begin
        grp_fu_469_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_469_p1 = v211_reg_1394;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_469_p1 = v194_reg_1359;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_469_p1 = v178_reg_1314;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_469_p1 = v161_reg_1269;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_469_p1 = v145_reg_1214;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_469_p1 = v128_reg_1184;
        end else begin
            grp_fu_469_p1 = 'bx;
        end
    end else begin
        grp_fu_469_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_473_p0 = v213_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_473_p0 = v196_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_473_p0 = v180_fu_805_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_473_p0 = v163_fu_792_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_473_p0 = v147_fu_770_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_473_p0 = v130_fu_742_p1;
        end else begin
            grp_fu_473_p0 = 'bx;
        end
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_473_p1 = v216_reg_1399;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_473_p1 = v200_reg_1364;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_473_p1 = v183_reg_1324;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_473_p1 = v167_reg_1274;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_473_p1 = v150_reg_1219;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_473_p1 = v134_reg_1189;
        end else begin
            grp_fu_473_p1 = 'bx;
        end
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p0 = v199_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p0 = v188_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_477_p0 = v166_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_477_p0 = v155_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p0 = v133_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p0 = v120_1;
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_477_p1 = v127_reg_1147;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_477_p1 = v121_reg_1135;
    end else begin
        grp_fu_477_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p0 = v210_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p0 = v188_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_481_p0 = v177_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_481_p0 = v155_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_481_p0 = v144_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p0 = v120_1;
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_481_p1 = v121_reg_1135;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_481_p1 = v127_reg_1147;
    end else begin
        grp_fu_481_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_485_p0 = v210_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_485_p0 = v199_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_485_p0 = v177_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_485_p0 = v166_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_485_p0 = v144_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_485_p0 = v133_1;
    end else begin
        grp_fu_485_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_485_p1 = v127_reg_1147;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_485_p1 = v121_reg_1135;
    end else begin
        grp_fu_485_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_14_reg_1284_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_13_reg_1224_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_12_reg_1084_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_778_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_622_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_11_reg_1279_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_10_reg_1105_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_reg_1037_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_774_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_568_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d0_local = bitcast_ln289_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln237_fu_881_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_861_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln283_fu_915_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln231_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln178_fu_856_p1;
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
        v225_1_address0_local = v225_1_addr_13_reg_1234_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_12_reg_1089_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_622_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_reg_1115_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_11_reg_1042_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_reg_1115;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_568_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_1_d0_local = bitcast_ln250_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln198_fu_841_p1;
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
            v225_1_d1_local = bitcast_ln244_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln192_fu_836_p1;
        end else begin
            v225_1_d1_local = 'bx;
        end
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address0_local = v225_2_addr_reg_1239_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_10_reg_1094_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_622_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_11_reg_1120_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_9_reg_1047_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_11_reg_1120;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_568_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d0_local = bitcast_ln263_fu_901_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln211_fu_851_p1;
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
            v225_2_d1_local = bitcast_ln257_fu_896_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln205_fu_846_p1;
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
        v225_3_address0_local = v225_3_addr_reg_1244_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_9_reg_1052_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_10_reg_1099;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_11_reg_1125_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_10_reg_1099_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_11_reg_1125;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_9_reg_1052;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d0_local = bitcast_ln276_fu_911_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln218_fu_866_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln270_fu_906_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln224_fu_871_p1;
        end else begin
            v225_3_d1_local = 'bx;
        end
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce0_local = 1'b1;
    end else begin
        v227_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce1_local = 1'b1;
    end else begin
        v227_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce0_local = 1'b1;
    end else begin
        v227_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce1_local = 1'b1;
    end else begin
        v227_7_ce1_local = 1'b0;
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
assign add_ln170_fu_724_p2 = (v116_reg_1002 + 8'd2);
assign add_ln171_fu_562_p2 = (mul_ln171_1 + zext_ln175_fu_540_p1);
assign add_ln175_fu_548_p2 = (mul_ln175 + zext_ln175_7_fu_544_p1);
assign add_ln179_fu_616_p2 = (mul_ln171_1 + zext_ln182_fu_594_p1);
assign add_ln182_fu_602_p2 = (mul_ln175 + zext_ln182_7_fu_598_p1);
assign add_ln225_fu_630_p2 = (mul_ln225_1 + zext_ln175_reg_1011);
assign add_ln232_fu_746_p2 = (mul_ln225_1 + zext_ln182_reg_1058_pp0_iter1_reg);
assign add_ln277_fu_642_p2 = (mul_ln277_1 + zext_ln175_reg_1011);
assign add_ln284_fu_758_p2 = (mul_ln277_1 + zext_ln182_reg_1058_pp0_iter1_reg);
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
assign bitcast_ln178_fu_856_p1 = reg_502;
assign bitcast_ln185_fu_861_p1 = reg_506;
assign bitcast_ln192_fu_836_p1 = reg_510;
assign bitcast_ln198_fu_841_p1 = reg_514;
assign bitcast_ln205_fu_846_p1 = reg_518;
assign bitcast_ln211_fu_851_p1 = reg_522;
assign bitcast_ln218_fu_866_p1 = reg_514;
assign bitcast_ln224_fu_871_p1 = reg_518;
assign bitcast_ln231_fu_876_p1 = reg_510;
assign bitcast_ln237_fu_881_p1 = reg_502;
assign bitcast_ln244_fu_886_p1 = reg_506;
assign bitcast_ln250_fu_891_p1 = reg_522;
assign bitcast_ln257_fu_896_p1 = reg_502;
assign bitcast_ln263_fu_901_p1 = reg_506;
assign bitcast_ln270_fu_906_p1 = reg_510;
assign bitcast_ln276_fu_911_p1 = v206_reg_1419;
assign bitcast_ln283_fu_915_p1 = v212_reg_1424;
assign bitcast_ln289_fu_919_p1 = v217_reg_1429;
assign grp_fu_5266_p_ce = 1'b1;
assign grp_fu_5266_p_din0 = grp_fu_465_p0;
assign grp_fu_5266_p_din1 = grp_fu_465_p1;
assign grp_fu_5266_p_opcode = 2'd0;
assign grp_fu_5270_p_ce = 1'b1;
assign grp_fu_5270_p_din0 = grp_fu_469_p0;
assign grp_fu_5270_p_din1 = grp_fu_469_p1;
assign grp_fu_5270_p_opcode = 2'd0;
assign grp_fu_5274_p_ce = 1'b1;
assign grp_fu_5274_p_din0 = grp_fu_473_p0;
assign grp_fu_5274_p_din1 = grp_fu_473_p1;
assign grp_fu_5274_p_opcode = 2'd0;
assign grp_fu_5278_p_ce = 1'b1;
assign grp_fu_5278_p_din0 = grp_fu_477_p0;
assign grp_fu_5278_p_din1 = grp_fu_477_p1;
assign grp_fu_5282_p_ce = 1'b1;
assign grp_fu_5282_p_din0 = grp_fu_481_p0;
assign grp_fu_5282_p_din1 = grp_fu_481_p1;
assign grp_fu_5286_p_ce = 1'b1;
assign grp_fu_5286_p_din0 = grp_fu_485_p0;
assign grp_fu_5286_p_din1 = grp_fu_485_p1;
assign icmp_ln170_fu_534_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_2_fu_586_p3 = {{tmp_s_fu_576_p4}, {1'd1}};
assign tmp_s_fu_576_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_734_p1 = v225_0_load_reg_1130;
assign v121_fu_662_p2 = v227_1_q1;
assign v121_fu_662_p4 = v227_3_q1;
assign v121_fu_662_p6 = v227_5_q1;
assign v121_fu_662_p8 = v227_7_q1;
assign v121_fu_662_p9 = 'bx;
assign v124_fu_738_p1 = v225_0_load_10_reg_1142;
assign v127_fu_701_p2 = v227_1_q0;
assign v127_fu_701_p4 = v227_3_q0;
assign v127_fu_701_p6 = v227_5_q0;
assign v127_fu_701_p8 = v227_7_q0;
assign v127_fu_701_p9 = 'bx;
assign v130_fu_742_p1 = v225_1_load_10_reg_1154;
assign v136_fu_762_p1 = v225_1_load_11_reg_1159;
assign v141_fu_766_p1 = v225_2_load_8_reg_1164;
assign v147_fu_770_p1 = v225_2_load_9_reg_1169;
assign v152_fu_782_p1 = reg_489;
assign v158_fu_787_p1 = reg_493;
assign v163_fu_792_p1 = v225_0_load_11_reg_1174;
assign v169_fu_796_p1 = reg_497;
assign v174_fu_801_p1 = v225_1_load_reg_1309;
assign v180_fu_805_p1 = v225_1_load_12_reg_1319;
assign v185_fu_809_p1 = v225_2_load_10_reg_1329;
assign v191_fu_813_p1 = v225_2_load_11_reg_1334;
assign v196_fu_817_p1 = reg_489;
assign v202_fu_822_p1 = reg_493;
assign v207_fu_827_p1 = reg_497;
assign v213_fu_832_p1 = v225_0_load_14_reg_1369;
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
assign v227_1_address0 = zext_ln182_8_fu_608_p1;
assign v227_1_address1 = zext_ln175_8_fu_554_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_3_address0 = zext_ln182_8_fu_608_p1;
assign v227_3_address1 = zext_ln175_8_fu_554_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign v227_5_address0 = zext_ln182_8_fu_608_p1;
assign v227_5_address1 = zext_ln175_8_fu_554_p1;
assign v227_5_ce0 = v227_5_ce0_local;
assign v227_5_ce1 = v227_5_ce1_local;
assign v227_7_address0 = zext_ln182_8_fu_608_p1;
assign v227_7_address1 = zext_ln175_8_fu_554_p1;
assign v227_7_ce0 = v227_7_ce0_local;
assign v227_7_ce1 = v227_7_ce1_local;
assign zext_ln171_fu_568_p1 = add_ln171_fu_562_p2;
assign zext_ln175_7_fu_544_p1 = ap_sig_allocacmp_v116;
assign zext_ln175_8_fu_554_p1 = add_ln175_fu_548_p2;
assign zext_ln175_fu_540_p1 = ap_sig_allocacmp_v116;
assign zext_ln179_fu_622_p1 = add_ln179_fu_616_p2;
assign zext_ln182_7_fu_598_p1 = or_ln179_2_fu_586_p3;
assign zext_ln182_8_fu_608_p1 = add_ln182_fu_602_p2;
assign zext_ln182_fu_594_p1 = or_ln179_2_fu_586_p3;
assign zext_ln225_fu_634_p1 = add_ln225_fu_630_p2;
assign zext_ln232_fu_750_p1 = add_ln232_fu_746_p2;
assign zext_ln277_fu_774_p1 = add_ln277_reg_1110_pp0_iter1_reg;
assign zext_ln284_fu_778_p1 = add_ln284_reg_1229;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1011[13:8] <= 6'b000000;
    zext_ln182_reg_1058[0] <= 1'b1;
    zext_ln182_reg_1058[13:8] <= 6'b000000;
    zext_ln182_reg_1058_pp0_iter1_reg[0] <= 1'b1;
    zext_ln182_reg_1058_pp0_iter1_reg[13:8] <= 6'b000000;
end
endmodule 
