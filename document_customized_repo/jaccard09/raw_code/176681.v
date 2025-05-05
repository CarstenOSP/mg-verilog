module kernel_2mm_kernel_2mm_node1_Pipeline_label_53 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,mul_ln264,mul_ln277,cmp11_0,v120_8,v133_8,v144_8,v155_8,v166_8,v177_8,v188_8,v199_8,v210_8,grp_fu_28731_p_din0,grp_fu_28731_p_din1,grp_fu_28731_p_opcode,grp_fu_28731_p_dout0,grp_fu_28731_p_ce,grp_fu_28735_p_din0,grp_fu_28735_p_din1,grp_fu_28735_p_opcode,grp_fu_28735_p_dout0,grp_fu_28735_p_ce,grp_fu_28739_p_din0,grp_fu_28739_p_din1,grp_fu_28739_p_opcode,grp_fu_28739_p_dout0,grp_fu_28739_p_ce,grp_fu_28743_p_din0,grp_fu_28743_p_din1,grp_fu_28743_p_opcode,grp_fu_28743_p_dout0,grp_fu_28743_p_ce,grp_fu_28747_p_din0,grp_fu_28747_p_din1,grp_fu_28747_p_opcode,grp_fu_28747_p_dout0,grp_fu_28747_p_ce,grp_fu_28751_p_din0,grp_fu_28751_p_din1,grp_fu_28751_p_dout0,grp_fu_28751_p_ce,grp_fu_28755_p_din0,grp_fu_28755_p_din1,grp_fu_28755_p_dout0,grp_fu_28755_p_ce,grp_fu_28759_p_din0,grp_fu_28759_p_din1,grp_fu_28759_p_dout0,grp_fu_28759_p_ce,grp_fu_28763_p_din0,grp_fu_28763_p_din1,grp_fu_28763_p_dout0,grp_fu_28763_p_ce,grp_fu_28767_p_din0,grp_fu_28767_p_din1,grp_fu_28767_p_dout0,grp_fu_28767_p_ce); 
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
input  [12:0] mul_ln175;
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
input  [12:0] mul_ln264;
input  [12:0] mul_ln277;
input  [0:0] cmp11_0;
input  [31:0] v120_8;
input  [31:0] v133_8;
input  [31:0] v144_8;
input  [31:0] v155_8;
input  [31:0] v166_8;
input  [31:0] v177_8;
input  [31:0] v188_8;
input  [31:0] v199_8;
input  [31:0] v210_8;
output  [31:0] grp_fu_28731_p_din0;
output  [31:0] grp_fu_28731_p_din1;
output  [1:0] grp_fu_28731_p_opcode;
input  [31:0] grp_fu_28731_p_dout0;
output   grp_fu_28731_p_ce;
output  [31:0] grp_fu_28735_p_din0;
output  [31:0] grp_fu_28735_p_din1;
output  [1:0] grp_fu_28735_p_opcode;
input  [31:0] grp_fu_28735_p_dout0;
output   grp_fu_28735_p_ce;
output  [31:0] grp_fu_28739_p_din0;
output  [31:0] grp_fu_28739_p_din1;
output  [1:0] grp_fu_28739_p_opcode;
input  [31:0] grp_fu_28739_p_dout0;
output   grp_fu_28739_p_ce;
output  [31:0] grp_fu_28743_p_din0;
output  [31:0] grp_fu_28743_p_din1;
output  [1:0] grp_fu_28743_p_opcode;
input  [31:0] grp_fu_28743_p_dout0;
output   grp_fu_28743_p_ce;
output  [31:0] grp_fu_28747_p_din0;
output  [31:0] grp_fu_28747_p_din1;
output  [1:0] grp_fu_28747_p_opcode;
input  [31:0] grp_fu_28747_p_dout0;
output   grp_fu_28747_p_ce;
output  [31:0] grp_fu_28751_p_din0;
output  [31:0] grp_fu_28751_p_din1;
input  [31:0] grp_fu_28751_p_dout0;
output   grp_fu_28751_p_ce;
output  [31:0] grp_fu_28755_p_din0;
output  [31:0] grp_fu_28755_p_din1;
input  [31:0] grp_fu_28755_p_dout0;
output   grp_fu_28755_p_ce;
output  [31:0] grp_fu_28759_p_din0;
output  [31:0] grp_fu_28759_p_din1;
input  [31:0] grp_fu_28759_p_dout0;
output   grp_fu_28759_p_ce;
output  [31:0] grp_fu_28763_p_din0;
output  [31:0] grp_fu_28763_p_din1;
input  [31:0] grp_fu_28763_p_dout0;
output   grp_fu_28763_p_ce;
output  [31:0] grp_fu_28767_p_din0;
output  [31:0] grp_fu_28767_p_din1;
input  [31:0] grp_fu_28767_p_dout0;
output   grp_fu_28767_p_ce;
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
reg   [0:0] icmp_ln170_reg_992;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_451;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_455;
reg   [31:0] reg_459;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_463;
reg   [31:0] reg_467;
reg   [31:0] reg_471;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_reg_987;
wire   [0:0] icmp_ln170_fu_483_p2;
wire   [12:0] zext_ln175_fu_489_p1;
reg   [12:0] zext_ln175_reg_996;
wire   [12:0] zext_ln182_fu_522_p1;
reg   [12:0] zext_ln182_reg_1007;
reg   [31:0] v227_0_load_2_reg_1018;
reg   [31:0] v227_0_load_3_reg_1023;
wire   [31:0] v121_fu_537_p1;
reg   [31:0] v121_reg_1028;
wire   [31:0] v127_fu_543_p1;
reg   [31:0] v127_reg_1037;
reg   [12:0] v225_0_addr_5_reg_1046;
reg   [12:0] v225_0_addr_5_reg_1046_pp0_iter2_reg;
reg   [12:0] v225_0_addr_5_reg_1046_pp0_iter3_reg;
reg   [12:0] v225_1_addr_3_reg_1051;
reg   [12:0] v225_1_addr_3_reg_1051_pp0_iter2_reg;
reg   [12:0] v225_1_addr_3_reg_1051_pp0_iter3_reg;
reg   [12:0] v225_1_addr_5_reg_1056;
reg   [12:0] v225_1_addr_5_reg_1056_pp0_iter2_reg;
reg   [12:0] v225_1_addr_5_reg_1056_pp0_iter3_reg;
reg   [12:0] v225_1_addr_5_reg_1056_pp0_iter4_reg;
reg   [12:0] v225_2_addr_3_reg_1061;
reg   [12:0] v225_2_addr_3_reg_1061_pp0_iter2_reg;
reg   [12:0] v225_2_addr_3_reg_1061_pp0_iter3_reg;
reg   [12:0] v225_3_addr_3_reg_1066;
reg   [12:0] v225_3_addr_3_reg_1066_pp0_iter2_reg;
reg   [12:0] v225_3_addr_3_reg_1066_pp0_iter3_reg;
reg   [12:0] v225_4_addr_3_reg_1072;
reg   [12:0] v225_4_addr_3_reg_1072_pp0_iter2_reg;
reg   [12:0] v225_4_addr_3_reg_1072_pp0_iter3_reg;
reg   [12:0] v225_5_addr_3_reg_1077;
reg   [12:0] v225_5_addr_3_reg_1077_pp0_iter2_reg;
reg   [12:0] v225_5_addr_3_reg_1077_pp0_iter3_reg;
reg   [12:0] v225_6_addr_3_reg_1082;
reg   [12:0] v225_6_addr_3_reg_1082_pp0_iter2_reg;
reg   [12:0] v225_6_addr_3_reg_1082_pp0_iter3_reg;
reg   [12:0] v225_7_addr_3_reg_1087;
reg   [12:0] v225_7_addr_3_reg_1087_pp0_iter2_reg;
reg   [12:0] v225_7_addr_3_reg_1087_pp0_iter3_reg;
reg   [12:0] v225_0_addr_6_reg_1092;
reg   [12:0] v225_0_addr_6_reg_1092_pp0_iter2_reg;
reg   [12:0] v225_0_addr_6_reg_1092_pp0_iter3_reg;
reg   [12:0] v225_0_addr_6_reg_1092_pp0_iter4_reg;
reg   [12:0] v225_1_addr_4_reg_1097;
reg   [12:0] v225_1_addr_4_reg_1097_pp0_iter2_reg;
reg   [12:0] v225_1_addr_4_reg_1097_pp0_iter3_reg;
reg   [12:0] v225_1_addr_6_reg_1102;
reg   [12:0] v225_1_addr_6_reg_1102_pp0_iter2_reg;
reg   [12:0] v225_1_addr_6_reg_1102_pp0_iter3_reg;
reg   [12:0] v225_1_addr_6_reg_1102_pp0_iter4_reg;
reg   [12:0] v225_2_addr_4_reg_1107;
reg   [12:0] v225_2_addr_4_reg_1107_pp0_iter2_reg;
reg   [12:0] v225_2_addr_4_reg_1107_pp0_iter3_reg;
reg   [12:0] v225_3_addr_4_reg_1112;
reg   [12:0] v225_3_addr_4_reg_1112_pp0_iter2_reg;
reg   [12:0] v225_3_addr_4_reg_1112_pp0_iter3_reg;
reg   [12:0] v225_4_addr_4_reg_1118;
reg   [12:0] v225_4_addr_4_reg_1118_pp0_iter2_reg;
reg   [12:0] v225_4_addr_4_reg_1118_pp0_iter3_reg;
reg   [12:0] v225_5_addr_4_reg_1123;
reg   [12:0] v225_5_addr_4_reg_1123_pp0_iter2_reg;
reg   [12:0] v225_5_addr_4_reg_1123_pp0_iter3_reg;
reg   [12:0] v225_6_addr_4_reg_1128;
reg   [12:0] v225_6_addr_4_reg_1128_pp0_iter2_reg;
reg   [12:0] v225_6_addr_4_reg_1128_pp0_iter3_reg;
reg   [12:0] v225_7_addr_4_reg_1133;
reg   [12:0] v225_7_addr_4_reg_1133_pp0_iter2_reg;
reg   [12:0] v225_7_addr_4_reg_1133_pp0_iter3_reg;
reg   [31:0] v225_1_load_2_reg_1138;
reg   [31:0] v122_reg_1143;
reg   [31:0] v225_1_load_3_reg_1148;
reg   [31:0] v128_reg_1153;
reg   [31:0] v225_2_load_2_reg_1158;
reg   [31:0] v134_reg_1163;
reg   [31:0] v225_2_load_3_reg_1168;
reg   [31:0] v139_reg_1173;
reg   [31:0] v225_3_load_2_reg_1178;
reg   [31:0] v145_reg_1183;
reg   [31:0] v225_3_load_3_reg_1188;
wire   [31:0] v153_fu_612_p3;
reg   [31:0] v153_reg_1193;
wire   [31:0] v159_fu_623_p3;
reg   [31:0] v159_reg_1198;
wire   [31:0] v164_fu_634_p3;
reg   [31:0] v164_reg_1203;
wire   [31:0] v170_fu_645_p3;
reg   [31:0] v170_reg_1208;
wire   [31:0] v175_fu_656_p3;
reg   [31:0] v175_reg_1213;
wire   [31:0] v181_fu_667_p3;
reg   [31:0] v181_reg_1218;
wire   [31:0] v186_fu_678_p3;
reg   [31:0] v186_reg_1223;
wire   [31:0] v192_fu_689_p3;
reg   [31:0] v192_reg_1228;
wire   [31:0] v197_fu_700_p3;
reg   [31:0] v197_reg_1233;
wire   [31:0] v203_fu_711_p3;
reg   [31:0] v203_reg_1238;
wire   [31:0] v118_fu_721_p3;
wire   [31:0] v125_fu_732_p3;
wire   [31:0] v131_fu_743_p3;
wire   [31:0] v137_fu_754_p3;
wire   [31:0] v142_fu_765_p3;
wire   [31:0] v148_fu_776_p3;
reg   [31:0] v148_reg_1268;
reg   [31:0] v150_reg_1273;
reg   [31:0] v156_reg_1278;
reg   [31:0] v161_reg_1283;
reg   [31:0] v167_reg_1288;
reg   [31:0] v172_reg_1293;
wire   [31:0] v208_fu_787_p3;
reg   [31:0] v208_reg_1298;
wire   [31:0] v214_fu_798_p3;
reg   [31:0] v214_reg_1303;
reg   [31:0] v178_reg_1308;
reg   [31:0] v183_reg_1313;
reg   [31:0] v189_reg_1318;
reg   [31:0] v194_reg_1323;
reg   [31:0] v200_reg_1328;
reg   [31:0] v205_reg_1333;
reg   [31:0] v211_reg_1338;
reg   [31:0] v216_reg_1343;
reg   [31:0] v157_reg_1348;
reg   [31:0] v212_reg_1353;
reg   [31:0] v217_reg_1358;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_47_fu_499_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_47_fu_532_p1;
wire   [63:0] zext_ln264_fu_562_p1;
wire   [63:0] zext_ln171_fu_572_p1;
wire   [63:0] zext_ln271_fu_587_p1;
wire   [63:0] zext_ln179_fu_597_p1;
reg   [7:0] v116_1_fu_90;
wire   [7:0] add_ln170_fu_548_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
wire    ap_block_pp0_stage1;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln178_fu_820_p1;
wire    ap_block_pp0_stage2;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln185_fu_825_p1;
wire   [31:0] bitcast_ln283_fu_884_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_888_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln192_fu_805_p1;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln198_fu_810_p1;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
reg    v225_3_we0_local;
wire   [31:0] bitcast_ln205_fu_815_p1;
reg    v225_3_we1_local;
wire   [31:0] bitcast_ln211_fu_830_p1;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
reg    v225_4_we1_local;
wire   [31:0] bitcast_ln218_fu_835_p1;
reg    v225_4_we0_local;
wire   [31:0] bitcast_ln224_fu_839_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln231_fu_844_p1;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln237_fu_849_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln244_fu_854_p1;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln250_fu_859_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln257_fu_864_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln263_fu_869_p1;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
wire   [31:0] bitcast_ln270_fu_874_p1;
reg    v225_0_we0_local;
wire   [31:0] bitcast_ln276_fu_879_p1;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_411_p1;
reg   [31:0] grp_fu_415_p0;
reg   [31:0] grp_fu_415_p1;
reg   [31:0] grp_fu_419_p0;
reg   [31:0] grp_fu_419_p1;
reg   [31:0] grp_fu_423_p0;
reg   [31:0] grp_fu_423_p1;
reg   [31:0] grp_fu_427_p0;
reg   [31:0] grp_fu_427_p1;
reg   [31:0] grp_fu_431_p0;
reg   [31:0] grp_fu_431_p1;
reg   [31:0] grp_fu_435_p0;
reg   [31:0] grp_fu_435_p1;
reg   [31:0] grp_fu_439_p0;
reg   [31:0] grp_fu_439_p1;
reg   [31:0] grp_fu_443_p0;
reg   [31:0] grp_fu_443_p1;
reg   [31:0] grp_fu_447_p0;
reg   [31:0] grp_fu_447_p1;
wire   [12:0] add_ln175_fu_493_p2;
wire   [6:0] tmp_s_fu_504_p4;
wire   [7:0] or_ln179_1_fu_514_p3;
wire   [12:0] add_ln182_fu_526_p2;
wire   [12:0] add_ln264_fu_558_p2;
wire   [12:0] add_ln171_fu_568_p2;
wire   [12:0] add_ln271_fu_583_p2;
wire   [12:0] add_ln179_fu_593_p2;
wire   [31:0] v152_fu_608_p1;
wire   [31:0] v158_fu_619_p1;
wire   [31:0] v163_fu_630_p1;
wire   [31:0] v169_fu_641_p1;
wire   [31:0] v174_fu_652_p1;
wire   [31:0] v180_fu_663_p1;
wire   [31:0] v185_fu_674_p1;
wire   [31:0] v191_fu_685_p1;
wire   [31:0] v196_fu_696_p1;
wire   [31:0] v202_fu_707_p1;
wire   [31:0] v117_fu_718_p1;
wire   [31:0] v124_fu_729_p1;
wire   [31:0] v130_fu_740_p1;
wire   [31:0] v136_fu_751_p1;
wire   [31:0] v141_fu_762_p1;
wire   [31:0] v147_fu_773_p1;
wire   [31:0] v207_fu_783_p1;
wire   [31:0] v213_fu_794_p1;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_1_fu_90 = 8'd0;
#0 ap_done_reg = 1'b0;
end
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
        v116_1_fu_90 <= 8'd0;
    end else if (((icmp_ln170_reg_992 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_fu_90 <= add_ln170_fu_548_p2;
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
        icmp_ln170_reg_992 <= icmp_ln170_fu_483_p2;
        v116_reg_987 <= ap_sig_allocacmp_v116;
        v225_0_addr_5_reg_1046 <= zext_ln264_fu_562_p1;
        v225_0_addr_5_reg_1046_pp0_iter2_reg <= v225_0_addr_5_reg_1046;
        v225_0_addr_5_reg_1046_pp0_iter3_reg <= v225_0_addr_5_reg_1046_pp0_iter2_reg;
        v225_0_addr_6_reg_1092 <= zext_ln271_fu_587_p1;
        v225_0_addr_6_reg_1092_pp0_iter2_reg <= v225_0_addr_6_reg_1092;
        v225_0_addr_6_reg_1092_pp0_iter3_reg <= v225_0_addr_6_reg_1092_pp0_iter2_reg;
        v225_0_addr_6_reg_1092_pp0_iter4_reg <= v225_0_addr_6_reg_1092_pp0_iter3_reg;
        v225_1_addr_3_reg_1051 <= zext_ln171_fu_572_p1;
        v225_1_addr_3_reg_1051_pp0_iter2_reg <= v225_1_addr_3_reg_1051;
        v225_1_addr_3_reg_1051_pp0_iter3_reg <= v225_1_addr_3_reg_1051_pp0_iter2_reg;
        v225_1_addr_4_reg_1097 <= zext_ln179_fu_597_p1;
        v225_1_addr_4_reg_1097_pp0_iter2_reg <= v225_1_addr_4_reg_1097;
        v225_1_addr_4_reg_1097_pp0_iter3_reg <= v225_1_addr_4_reg_1097_pp0_iter2_reg;
        v225_1_addr_5_reg_1056 <= zext_ln264_fu_562_p1;
        v225_1_addr_5_reg_1056_pp0_iter2_reg <= v225_1_addr_5_reg_1056;
        v225_1_addr_5_reg_1056_pp0_iter3_reg <= v225_1_addr_5_reg_1056_pp0_iter2_reg;
        v225_1_addr_5_reg_1056_pp0_iter4_reg <= v225_1_addr_5_reg_1056_pp0_iter3_reg;
        v225_1_addr_6_reg_1102 <= zext_ln271_fu_587_p1;
        v225_1_addr_6_reg_1102_pp0_iter2_reg <= v225_1_addr_6_reg_1102;
        v225_1_addr_6_reg_1102_pp0_iter3_reg <= v225_1_addr_6_reg_1102_pp0_iter2_reg;
        v225_1_addr_6_reg_1102_pp0_iter4_reg <= v225_1_addr_6_reg_1102_pp0_iter3_reg;
        v225_2_addr_3_reg_1061 <= zext_ln171_fu_572_p1;
        v225_2_addr_3_reg_1061_pp0_iter2_reg <= v225_2_addr_3_reg_1061;
        v225_2_addr_3_reg_1061_pp0_iter3_reg <= v225_2_addr_3_reg_1061_pp0_iter2_reg;
        v225_2_addr_4_reg_1107 <= zext_ln179_fu_597_p1;
        v225_2_addr_4_reg_1107_pp0_iter2_reg <= v225_2_addr_4_reg_1107;
        v225_2_addr_4_reg_1107_pp0_iter3_reg <= v225_2_addr_4_reg_1107_pp0_iter2_reg;
        v225_3_addr_3_reg_1066 <= zext_ln171_fu_572_p1;
        v225_3_addr_3_reg_1066_pp0_iter2_reg <= v225_3_addr_3_reg_1066;
        v225_3_addr_3_reg_1066_pp0_iter3_reg <= v225_3_addr_3_reg_1066_pp0_iter2_reg;
        v225_3_addr_4_reg_1112 <= zext_ln179_fu_597_p1;
        v225_3_addr_4_reg_1112_pp0_iter2_reg <= v225_3_addr_4_reg_1112;
        v225_3_addr_4_reg_1112_pp0_iter3_reg <= v225_3_addr_4_reg_1112_pp0_iter2_reg;
        v225_4_addr_3_reg_1072 <= zext_ln171_fu_572_p1;
        v225_4_addr_3_reg_1072_pp0_iter2_reg <= v225_4_addr_3_reg_1072;
        v225_4_addr_3_reg_1072_pp0_iter3_reg <= v225_4_addr_3_reg_1072_pp0_iter2_reg;
        v225_4_addr_4_reg_1118 <= zext_ln179_fu_597_p1;
        v225_4_addr_4_reg_1118_pp0_iter2_reg <= v225_4_addr_4_reg_1118;
        v225_4_addr_4_reg_1118_pp0_iter3_reg <= v225_4_addr_4_reg_1118_pp0_iter2_reg;
        v225_5_addr_3_reg_1077 <= zext_ln171_fu_572_p1;
        v225_5_addr_3_reg_1077_pp0_iter2_reg <= v225_5_addr_3_reg_1077;
        v225_5_addr_3_reg_1077_pp0_iter3_reg <= v225_5_addr_3_reg_1077_pp0_iter2_reg;
        v225_5_addr_4_reg_1123 <= zext_ln179_fu_597_p1;
        v225_5_addr_4_reg_1123_pp0_iter2_reg <= v225_5_addr_4_reg_1123;
        v225_5_addr_4_reg_1123_pp0_iter3_reg <= v225_5_addr_4_reg_1123_pp0_iter2_reg;
        v225_6_addr_3_reg_1082 <= zext_ln171_fu_572_p1;
        v225_6_addr_3_reg_1082_pp0_iter2_reg <= v225_6_addr_3_reg_1082;
        v225_6_addr_3_reg_1082_pp0_iter3_reg <= v225_6_addr_3_reg_1082_pp0_iter2_reg;
        v225_6_addr_4_reg_1128 <= zext_ln179_fu_597_p1;
        v225_6_addr_4_reg_1128_pp0_iter2_reg <= v225_6_addr_4_reg_1128;
        v225_6_addr_4_reg_1128_pp0_iter3_reg <= v225_6_addr_4_reg_1128_pp0_iter2_reg;
        v225_7_addr_3_reg_1087 <= zext_ln171_fu_572_p1;
        v225_7_addr_3_reg_1087_pp0_iter2_reg <= v225_7_addr_3_reg_1087;
        v225_7_addr_3_reg_1087_pp0_iter3_reg <= v225_7_addr_3_reg_1087_pp0_iter2_reg;
        v225_7_addr_4_reg_1133 <= zext_ln179_fu_597_p1;
        v225_7_addr_4_reg_1133_pp0_iter2_reg <= v225_7_addr_4_reg_1133;
        v225_7_addr_4_reg_1133_pp0_iter3_reg <= v225_7_addr_4_reg_1133_pp0_iter2_reg;
        zext_ln175_reg_996[7 : 0] <= zext_ln175_fu_489_p1[7 : 0];
        zext_ln182_reg_1007[7 : 1] <= zext_ln182_fu_522_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_451 <= grp_fu_28731_p_dout0;
        reg_455 <= grp_fu_28735_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_459 <= grp_fu_28739_p_dout0;
        reg_463 <= grp_fu_28743_p_dout0;
        reg_467 <= grp_fu_28747_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_471 <= grp_fu_28731_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1028 <= v121_fu_537_p1;
        v127_reg_1037 <= v127_fu_543_p1;
        v148_reg_1268 <= v148_fu_776_p3;
        v208_reg_1298 <= v208_fu_787_p3;
        v214_reg_1303 <= v214_fu_798_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_1143 <= grp_fu_28751_p_dout0;
        v128_reg_1153 <= grp_fu_28755_p_dout0;
        v134_reg_1163 <= grp_fu_28759_p_dout0;
        v139_reg_1173 <= grp_fu_28763_p_dout0;
        v145_reg_1183 <= grp_fu_28767_p_dout0;
        v225_1_load_2_reg_1138 <= v225_1_q1;
        v225_1_load_3_reg_1148 <= v225_1_q0;
        v225_2_load_2_reg_1158 <= v225_2_q1;
        v225_2_load_3_reg_1168 <= v225_2_q0;
        v225_3_load_2_reg_1178 <= v225_3_q1;
        v225_3_load_3_reg_1188 <= v225_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1273 <= grp_fu_28751_p_dout0;
        v156_reg_1278 <= grp_fu_28755_p_dout0;
        v161_reg_1283 <= grp_fu_28759_p_dout0;
        v167_reg_1288 <= grp_fu_28763_p_dout0;
        v172_reg_1293 <= grp_fu_28767_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v153_reg_1193 <= v153_fu_612_p3;
        v159_reg_1198 <= v159_fu_623_p3;
        v164_reg_1203 <= v164_fu_634_p3;
        v170_reg_1208 <= v170_fu_645_p3;
        v175_reg_1213 <= v175_fu_656_p3;
        v181_reg_1218 <= v181_fu_667_p3;
        v186_reg_1223 <= v186_fu_678_p3;
        v192_reg_1228 <= v192_fu_689_p3;
        v197_reg_1233 <= v197_fu_700_p3;
        v203_reg_1238 <= v203_fu_711_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1348 <= grp_fu_28735_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1308 <= grp_fu_28751_p_dout0;
        v183_reg_1313 <= grp_fu_28755_p_dout0;
        v189_reg_1318 <= grp_fu_28759_p_dout0;
        v194_reg_1323 <= grp_fu_28763_p_dout0;
        v200_reg_1328 <= grp_fu_28767_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1333 <= grp_fu_28751_p_dout0;
        v211_reg_1338 <= grp_fu_28755_p_dout0;
        v216_reg_1343 <= grp_fu_28759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1353 <= grp_fu_28735_p_dout0;
        v217_reg_1358 <= grp_fu_28739_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_0_load_2_reg_1018 <= v227_0_q1;
        v227_0_load_3_reg_1023 <= v227_0_q0;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_992 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v116 = v116_1_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p0 = v203_reg_1238;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v175_reg_1213;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v148_reg_1268;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v118_fu_721_p3;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p1 = v205_reg_1333;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p1 = v178_reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p1 = v150_reg_1273;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p1 = v122_reg_1143;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_415_p0 = v208_reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p0 = v181_reg_1218;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_415_p0 = v153_reg_1193;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p0 = v125_fu_732_p3;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_415_p1 = v211_reg_1338;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p1 = v183_reg_1313;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_415_p1 = v156_reg_1278;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p1 = v128_reg_1153;
    end else begin
        grp_fu_415_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_419_p0 = v214_reg_1303;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_419_p0 = v186_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_419_p0 = v159_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p0 = v131_fu_743_p3;
    end else begin
        grp_fu_419_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_419_p1 = v216_reg_1343;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_419_p1 = v189_reg_1318;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_419_p1 = v161_reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p1 = v134_reg_1163;
    end else begin
        grp_fu_419_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_423_p0 = v192_reg_1228;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_423_p0 = v164_reg_1203;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p0 = v137_fu_754_p3;
    end else begin
        grp_fu_423_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_423_p1 = v194_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_423_p1 = v167_reg_1288;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p1 = v139_reg_1173;
    end else begin
        grp_fu_423_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_427_p0 = v197_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_427_p0 = v170_reg_1208;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_427_p0 = v142_fu_765_p3;
    end else begin
        grp_fu_427_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_427_p1 = v200_reg_1328;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_427_p1 = v172_reg_1293;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_427_p1 = v145_reg_1183;
    end else begin
        grp_fu_427_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_431_p0 = v199_8;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p0 = v177_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_431_p0 = v144_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p0 = v120_8;
    end else begin
        grp_fu_431_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p1 = v121_reg_1028;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_431_p1 = v127_reg_1037;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p1 = v121_fu_537_p1;
    end else begin
        grp_fu_431_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_435_p0 = v210_8;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_435_p0 = v177_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_435_p0 = v155_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_435_p0 = v120_8;
    end else begin
        grp_fu_435_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_435_p1 = v127_reg_1037;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_435_p1 = v121_reg_1028;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_435_p1 = v127_fu_543_p1;
    end else begin
        grp_fu_435_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_439_p0 = v210_8;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_439_p0 = v188_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_439_p0 = v155_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_439_p0 = v133_8;
    end else begin
        grp_fu_439_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_439_p1 = v121_reg_1028;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_439_p1 = v127_reg_1037;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_439_p1 = v121_fu_537_p1;
    end else begin
        grp_fu_439_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_443_p0 = v188_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_443_p0 = v166_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_443_p0 = v133_8;
    end else begin
        grp_fu_443_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_443_p1 = v127_reg_1037;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_443_p1 = v121_reg_1028;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_443_p1 = v127_fu_543_p1;
    end else begin
        grp_fu_443_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_447_p0 = v199_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_447_p0 = v166_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_447_p0 = v144_8;
    end else begin
        grp_fu_447_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_447_p1 = v121_reg_1028;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_447_p1 = v127_reg_1037;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_447_p1 = v121_fu_537_p1;
    end else begin
        grp_fu_447_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = v225_0_addr_6_reg_1092_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln271_fu_587_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_5_reg_1046_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln264_fu_562_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_6_reg_1102_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_4_reg_1097_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = v225_1_addr_6_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_597_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_5_reg_1056_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1051_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_5_reg_1056;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d0_local = bitcast_ln289_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_d0_local = bitcast_ln185_fu_825_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d1_local = bitcast_ln283_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_d1_local = bitcast_ln178_fu_820_p1;
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_4_reg_1107_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_597_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1061_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_3_reg_1066_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_597_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_4_reg_1112_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_we1_local = 1'b1;
    end else begin
        v225_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address0_local = v225_4_addr_4_reg_1118_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_597_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address1_local = v225_4_addr_3_reg_1072_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_4_ce0_local = 1'b1;
    end else begin
        v225_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_4_ce1_local = 1'b1;
    end else begin
        v225_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_we0_local = 1'b1;
    end else begin
        v225_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_we1_local = 1'b1;
    end else begin
        v225_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_5_address0_local = v225_5_addr_4_reg_1123_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_597_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_5_address1_local = v225_5_addr_3_reg_1077_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_address0_local = v225_6_addr_4_reg_1128_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_597_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_address1_local = v225_6_addr_3_reg_1082_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_6_ce0_local = 1'b1;
    end else begin
        v225_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_6_ce1_local = 1'b1;
    end else begin
        v225_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_we0_local = 1'b1;
    end else begin
        v225_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_we1_local = 1'b1;
    end else begin
        v225_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_7_address0_local = v225_7_addr_4_reg_1133_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_597_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_7_address1_local = v225_7_addr_3_reg_1087_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_7_ce0_local = 1'b1;
    end else begin
        v225_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_7_ce1_local = 1'b1;
    end else begin
        v225_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_7_we0_local = 1'b1;
    end else begin
        v225_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
assign add_ln170_fu_548_p2 = (v116_reg_987 + 8'd2);
assign add_ln171_fu_568_p2 = (mul_ln277 + zext_ln175_reg_996);
assign add_ln175_fu_493_p2 = (mul_ln175 + zext_ln175_fu_489_p1);
assign add_ln179_fu_593_p2 = (mul_ln277 + zext_ln182_reg_1007);
assign add_ln182_fu_526_p2 = (mul_ln175 + zext_ln182_fu_522_p1);
assign add_ln264_fu_558_p2 = (mul_ln264 + zext_ln175_reg_996);
assign add_ln271_fu_583_p2 = (mul_ln264 + zext_ln182_reg_1007);
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
assign bitcast_ln178_fu_820_p1 = reg_451;
assign bitcast_ln185_fu_825_p1 = reg_455;
assign bitcast_ln192_fu_805_p1 = reg_459;
assign bitcast_ln198_fu_810_p1 = reg_463;
assign bitcast_ln205_fu_815_p1 = reg_467;
assign bitcast_ln211_fu_830_p1 = reg_471;
assign bitcast_ln218_fu_835_p1 = v157_reg_1348;
assign bitcast_ln224_fu_839_p1 = reg_459;
assign bitcast_ln231_fu_844_p1 = reg_463;
assign bitcast_ln237_fu_849_p1 = reg_467;
assign bitcast_ln244_fu_854_p1 = reg_451;
assign bitcast_ln250_fu_859_p1 = reg_455;
assign bitcast_ln257_fu_864_p1 = reg_459;
assign bitcast_ln263_fu_869_p1 = reg_463;
assign bitcast_ln270_fu_874_p1 = reg_467;
assign bitcast_ln276_fu_879_p1 = reg_471;
assign bitcast_ln283_fu_884_p1 = v212_reg_1353;
assign bitcast_ln289_fu_888_p1 = v217_reg_1358;
assign grp_fu_28731_p_ce = 1'b1;
assign grp_fu_28731_p_din0 = grp_fu_411_p0;
assign grp_fu_28731_p_din1 = grp_fu_411_p1;
assign grp_fu_28731_p_opcode = 2'd0;
assign grp_fu_28735_p_ce = 1'b1;
assign grp_fu_28735_p_din0 = grp_fu_415_p0;
assign grp_fu_28735_p_din1 = grp_fu_415_p1;
assign grp_fu_28735_p_opcode = 2'd0;
assign grp_fu_28739_p_ce = 1'b1;
assign grp_fu_28739_p_din0 = grp_fu_419_p0;
assign grp_fu_28739_p_din1 = grp_fu_419_p1;
assign grp_fu_28739_p_opcode = 2'd0;
assign grp_fu_28743_p_ce = 1'b1;
assign grp_fu_28743_p_din0 = grp_fu_423_p0;
assign grp_fu_28743_p_din1 = grp_fu_423_p1;
assign grp_fu_28743_p_opcode = 2'd0;
assign grp_fu_28747_p_ce = 1'b1;
assign grp_fu_28747_p_din0 = grp_fu_427_p0;
assign grp_fu_28747_p_din1 = grp_fu_427_p1;
assign grp_fu_28747_p_opcode = 2'd0;
assign grp_fu_28751_p_ce = 1'b1;
assign grp_fu_28751_p_din0 = grp_fu_431_p0;
assign grp_fu_28751_p_din1 = grp_fu_431_p1;
assign grp_fu_28755_p_ce = 1'b1;
assign grp_fu_28755_p_din0 = grp_fu_435_p0;
assign grp_fu_28755_p_din1 = grp_fu_435_p1;
assign grp_fu_28759_p_ce = 1'b1;
assign grp_fu_28759_p_din0 = grp_fu_439_p0;
assign grp_fu_28759_p_din1 = grp_fu_439_p1;
assign grp_fu_28763_p_ce = 1'b1;
assign grp_fu_28763_p_din0 = grp_fu_443_p0;
assign grp_fu_28763_p_din1 = grp_fu_443_p1;
assign grp_fu_28767_p_ce = 1'b1;
assign grp_fu_28767_p_din0 = grp_fu_447_p0;
assign grp_fu_28767_p_din1 = grp_fu_447_p1;
assign icmp_ln170_fu_483_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_1_fu_514_p3 = {{tmp_s_fu_504_p4}, {1'd1}};
assign tmp_s_fu_504_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_718_p1 = v225_1_load_2_reg_1138;
assign v118_fu_721_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v117_fu_718_p1);
assign v121_fu_537_p1 = v227_0_load_2_reg_1018;
assign v124_fu_729_p1 = v225_1_load_3_reg_1148;
assign v125_fu_732_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v124_fu_729_p1);
assign v127_fu_543_p1 = v227_0_load_3_reg_1023;
assign v130_fu_740_p1 = v225_2_load_2_reg_1158;
assign v131_fu_743_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v130_fu_740_p1);
assign v136_fu_751_p1 = v225_2_load_3_reg_1168;
assign v137_fu_754_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v136_fu_751_p1);
assign v141_fu_762_p1 = v225_3_load_2_reg_1178;
assign v142_fu_765_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v141_fu_762_p1);
assign v147_fu_773_p1 = v225_3_load_3_reg_1188;
assign v148_fu_776_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v147_fu_773_p1);
assign v152_fu_608_p1 = v225_4_q1;
assign v153_fu_612_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v152_fu_608_p1);
assign v158_fu_619_p1 = v225_4_q0;
assign v159_fu_623_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v158_fu_619_p1);
assign v163_fu_630_p1 = v225_5_q1;
assign v164_fu_634_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v163_fu_630_p1);
assign v169_fu_641_p1 = v225_5_q0;
assign v170_fu_645_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v169_fu_641_p1);
assign v174_fu_652_p1 = v225_6_q1;
assign v175_fu_656_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v174_fu_652_p1);
assign v180_fu_663_p1 = v225_6_q0;
assign v181_fu_667_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v180_fu_663_p1);
assign v185_fu_674_p1 = v225_7_q1;
assign v186_fu_678_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v185_fu_674_p1);
assign v191_fu_685_p1 = v225_7_q0;
assign v192_fu_689_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v191_fu_685_p1);
assign v196_fu_696_p1 = v225_0_q1;
assign v197_fu_700_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v196_fu_696_p1);
assign v202_fu_707_p1 = v225_0_q0;
assign v203_fu_711_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v202_fu_707_p1);
assign v207_fu_783_p1 = v225_1_q1;
assign v208_fu_787_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v207_fu_783_p1);
assign v213_fu_794_p1 = v225_1_q0;
assign v214_fu_798_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v213_fu_794_p1);
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = bitcast_ln276_fu_879_p1;
assign v225_0_d1 = bitcast_ln270_fu_874_p1;
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
assign v225_2_d0 = bitcast_ln198_fu_810_p1;
assign v225_2_d1 = bitcast_ln192_fu_805_p1;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = bitcast_ln205_fu_815_p1;
assign v225_3_d1 = bitcast_ln211_fu_830_p1;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v225_4_address0 = v225_4_address0_local;
assign v225_4_address1 = v225_4_address1_local;
assign v225_4_ce0 = v225_4_ce0_local;
assign v225_4_ce1 = v225_4_ce1_local;
assign v225_4_d0 = bitcast_ln224_fu_839_p1;
assign v225_4_d1 = bitcast_ln218_fu_835_p1;
assign v225_4_we0 = v225_4_we0_local;
assign v225_4_we1 = v225_4_we1_local;
assign v225_5_address0 = v225_5_address0_local;
assign v225_5_address1 = v225_5_address1_local;
assign v225_5_ce0 = v225_5_ce0_local;
assign v225_5_ce1 = v225_5_ce1_local;
assign v225_5_d0 = bitcast_ln237_fu_849_p1;
assign v225_5_d1 = bitcast_ln231_fu_844_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln250_fu_859_p1;
assign v225_6_d1 = bitcast_ln244_fu_854_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln263_fu_869_p1;
assign v225_7_d1 = bitcast_ln257_fu_864_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_0_address0 = zext_ln182_47_fu_532_p1;
assign v227_0_address1 = zext_ln175_47_fu_499_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign zext_ln171_fu_572_p1 = add_ln171_fu_568_p2;
assign zext_ln175_47_fu_499_p1 = add_ln175_fu_493_p2;
assign zext_ln175_fu_489_p1 = ap_sig_allocacmp_v116;
assign zext_ln179_fu_597_p1 = add_ln179_fu_593_p2;
assign zext_ln182_47_fu_532_p1 = add_ln182_fu_526_p2;
assign zext_ln182_fu_522_p1 = or_ln179_1_fu_514_p3;
assign zext_ln264_fu_562_p1 = add_ln264_fu_558_p2;
assign zext_ln271_fu_587_p1 = add_ln271_fu_583_p2;
always @ (posedge ap_clk) begin
    zext_ln175_reg_996[12:8] <= 5'b00000;
    zext_ln182_reg_1007[0] <= 1'b1;
    zext_ln182_reg_1007[12:8] <= 5'b00000;
end
endmodule 