module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,mul_ln171,mul_ln277,cmp11_0,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_28760_p_din0,grp_fu_28760_p_din1,grp_fu_28760_p_opcode,grp_fu_28760_p_dout0,grp_fu_28760_p_ce,grp_fu_28764_p_din0,grp_fu_28764_p_din1,grp_fu_28764_p_opcode,grp_fu_28764_p_dout0,grp_fu_28764_p_ce,grp_fu_28768_p_din0,grp_fu_28768_p_din1,grp_fu_28768_p_opcode,grp_fu_28768_p_dout0,grp_fu_28768_p_ce,grp_fu_28772_p_din0,grp_fu_28772_p_din1,grp_fu_28772_p_opcode,grp_fu_28772_p_dout0,grp_fu_28772_p_ce,grp_fu_28776_p_din0,grp_fu_28776_p_din1,grp_fu_28776_p_opcode,grp_fu_28776_p_dout0,grp_fu_28776_p_ce,grp_fu_28780_p_din0,grp_fu_28780_p_din1,grp_fu_28780_p_dout0,grp_fu_28780_p_ce,grp_fu_28784_p_din0,grp_fu_28784_p_din1,grp_fu_28784_p_dout0,grp_fu_28784_p_ce,grp_fu_28788_p_din0,grp_fu_28788_p_din1,grp_fu_28788_p_dout0,grp_fu_28788_p_ce,grp_fu_28792_p_din0,grp_fu_28792_p_din1,grp_fu_28792_p_dout0,grp_fu_28792_p_ce,grp_fu_28796_p_din0,grp_fu_28796_p_din1,grp_fu_28796_p_dout0,grp_fu_28796_p_ce); 
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
input  [11:0] mul_ln171;
input  [12:0] mul_ln277;
input  [0:0] cmp11_0;
input  [31:0] v120;
input  [31:0] v133;
input  [31:0] v144;
input  [31:0] v155;
input  [31:0] v166;
input  [31:0] v177;
input  [31:0] v188;
input  [31:0] v199;
input  [31:0] v210;
output  [31:0] grp_fu_28760_p_din0;
output  [31:0] grp_fu_28760_p_din1;
output  [1:0] grp_fu_28760_p_opcode;
input  [31:0] grp_fu_28760_p_dout0;
output   grp_fu_28760_p_ce;
output  [31:0] grp_fu_28764_p_din0;
output  [31:0] grp_fu_28764_p_din1;
output  [1:0] grp_fu_28764_p_opcode;
input  [31:0] grp_fu_28764_p_dout0;
output   grp_fu_28764_p_ce;
output  [31:0] grp_fu_28768_p_din0;
output  [31:0] grp_fu_28768_p_din1;
output  [1:0] grp_fu_28768_p_opcode;
input  [31:0] grp_fu_28768_p_dout0;
output   grp_fu_28768_p_ce;
output  [31:0] grp_fu_28772_p_din0;
output  [31:0] grp_fu_28772_p_din1;
output  [1:0] grp_fu_28772_p_opcode;
input  [31:0] grp_fu_28772_p_dout0;
output   grp_fu_28772_p_ce;
output  [31:0] grp_fu_28776_p_din0;
output  [31:0] grp_fu_28776_p_din1;
output  [1:0] grp_fu_28776_p_opcode;
input  [31:0] grp_fu_28776_p_dout0;
output   grp_fu_28776_p_ce;
output  [31:0] grp_fu_28780_p_din0;
output  [31:0] grp_fu_28780_p_din1;
input  [31:0] grp_fu_28780_p_dout0;
output   grp_fu_28780_p_ce;
output  [31:0] grp_fu_28784_p_din0;
output  [31:0] grp_fu_28784_p_din1;
input  [31:0] grp_fu_28784_p_dout0;
output   grp_fu_28784_p_ce;
output  [31:0] grp_fu_28788_p_din0;
output  [31:0] grp_fu_28788_p_din1;
input  [31:0] grp_fu_28788_p_dout0;
output   grp_fu_28788_p_ce;
output  [31:0] grp_fu_28792_p_din0;
output  [31:0] grp_fu_28792_p_din1;
input  [31:0] grp_fu_28792_p_dout0;
output   grp_fu_28792_p_ce;
output  [31:0] grp_fu_28796_p_din0;
output  [31:0] grp_fu_28796_p_din1;
input  [31:0] grp_fu_28796_p_dout0;
output   grp_fu_28796_p_ce;
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
reg   [0:0] icmp_ln170_reg_1013;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_457;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_461;
reg   [31:0] reg_465;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_469;
reg   [31:0] reg_473;
reg   [31:0] reg_477;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_35_reg_1006;
reg   [7:0] v116_35_reg_1006_pp0_iter1_reg;
wire   [0:0] icmp_ln170_fu_489_p2;
wire   [7:0] or_ln_fu_520_p3;
reg   [7:0] or_ln_reg_1022;
reg   [7:0] or_ln_reg_1022_pp0_iter1_reg;
reg   [31:0] v227_0_load_reg_1033;
reg   [31:0] v227_0_load_1_reg_1038;
wire   [31:0] v121_fu_543_p1;
reg   [31:0] v121_reg_1043;
wire   [31:0] v127_fu_549_p1;
reg   [31:0] v127_reg_1052;
reg   [12:0] v225_0_addr_1_reg_1061;
reg   [12:0] v225_0_addr_1_reg_1061_pp0_iter2_reg;
reg   [12:0] v225_0_addr_1_reg_1061_pp0_iter3_reg;
reg   [12:0] v225_1_addr_1_reg_1066;
reg   [12:0] v225_1_addr_1_reg_1066_pp0_iter2_reg;
reg   [12:0] v225_1_addr_1_reg_1066_pp0_iter3_reg;
reg   [12:0] v225_2_addr_1_reg_1071;
reg   [12:0] v225_2_addr_1_reg_1071_pp0_iter2_reg;
reg   [12:0] v225_2_addr_1_reg_1071_pp0_iter3_reg;
reg   [12:0] v225_3_addr_1_reg_1077;
reg   [12:0] v225_3_addr_1_reg_1077_pp0_iter2_reg;
reg   [12:0] v225_3_addr_1_reg_1077_pp0_iter3_reg;
reg   [12:0] v225_4_addr_1_reg_1082;
reg   [12:0] v225_4_addr_1_reg_1082_pp0_iter2_reg;
reg   [12:0] v225_4_addr_1_reg_1082_pp0_iter3_reg;
reg   [12:0] v225_5_addr_1_reg_1087;
reg   [12:0] v225_5_addr_1_reg_1087_pp0_iter2_reg;
reg   [12:0] v225_5_addr_1_reg_1087_pp0_iter3_reg;
reg   [12:0] v225_6_addr_1_reg_1092;
reg   [12:0] v225_6_addr_1_reg_1092_pp0_iter2_reg;
reg   [12:0] v225_6_addr_1_reg_1092_pp0_iter3_reg;
reg   [12:0] v225_7_addr_1_reg_1097;
reg   [12:0] v225_7_addr_1_reg_1097_pp0_iter2_reg;
reg   [12:0] v225_7_addr_1_reg_1097_pp0_iter3_reg;
reg   [12:0] v225_0_addr_2_reg_1102;
reg   [12:0] v225_0_addr_2_reg_1102_pp0_iter2_reg;
reg   [12:0] v225_0_addr_2_reg_1102_pp0_iter3_reg;
reg   [12:0] v225_1_addr_2_reg_1107;
reg   [12:0] v225_1_addr_2_reg_1107_pp0_iter2_reg;
reg   [12:0] v225_1_addr_2_reg_1107_pp0_iter3_reg;
reg   [12:0] v225_2_addr_2_reg_1112;
reg   [12:0] v225_2_addr_2_reg_1112_pp0_iter2_reg;
reg   [12:0] v225_2_addr_2_reg_1112_pp0_iter3_reg;
reg   [12:0] v225_3_addr_2_reg_1118;
reg   [12:0] v225_3_addr_2_reg_1118_pp0_iter2_reg;
reg   [12:0] v225_3_addr_2_reg_1118_pp0_iter3_reg;
reg   [12:0] v225_4_addr_2_reg_1123;
reg   [12:0] v225_4_addr_2_reg_1123_pp0_iter2_reg;
reg   [12:0] v225_4_addr_2_reg_1123_pp0_iter3_reg;
reg   [12:0] v225_5_addr_2_reg_1128;
reg   [12:0] v225_5_addr_2_reg_1128_pp0_iter2_reg;
reg   [12:0] v225_5_addr_2_reg_1128_pp0_iter3_reg;
reg   [12:0] v225_6_addr_2_reg_1133;
reg   [12:0] v225_6_addr_2_reg_1133_pp0_iter2_reg;
reg   [12:0] v225_6_addr_2_reg_1133_pp0_iter3_reg;
reg   [12:0] v225_7_addr_2_reg_1138;
reg   [12:0] v225_7_addr_2_reg_1138_pp0_iter2_reg;
reg   [12:0] v225_7_addr_2_reg_1138_pp0_iter3_reg;
reg   [12:0] v225_7_addr_2_reg_1138_pp0_iter4_reg;
reg   [12:0] v225_0_addr_3_reg_1143;
reg   [12:0] v225_0_addr_3_reg_1143_pp0_iter2_reg;
reg   [12:0] v225_0_addr_3_reg_1143_pp0_iter3_reg;
reg   [12:0] v225_0_addr_3_reg_1143_pp0_iter4_reg;
reg   [31:0] v225_0_load_reg_1148;
reg   [31:0] v122_reg_1153;
reg   [12:0] v225_0_addr_4_reg_1158;
reg   [12:0] v225_0_addr_4_reg_1158_pp0_iter2_reg;
reg   [12:0] v225_0_addr_4_reg_1158_pp0_iter3_reg;
reg   [12:0] v225_0_addr_4_reg_1158_pp0_iter4_reg;
reg   [31:0] v225_0_load_1_reg_1163;
reg   [31:0] v128_reg_1168;
reg   [31:0] v225_1_load_reg_1173;
reg   [31:0] v134_reg_1178;
reg   [31:0] v225_1_load_1_reg_1183;
reg   [31:0] v139_reg_1188;
reg   [31:0] v225_2_load_reg_1193;
reg   [31:0] v145_reg_1198;
reg   [31:0] v225_2_load_1_reg_1203;
reg   [31:0] v225_3_load_reg_1208;
reg   [31:0] v225_3_load_1_reg_1213;
reg   [31:0] v225_4_load_reg_1218;
wire   [31:0] v170_fu_634_p3;
reg   [31:0] v170_reg_1223;
wire   [31:0] v175_fu_645_p3;
reg   [31:0] v175_reg_1228;
wire   [31:0] v181_fu_656_p3;
reg   [31:0] v181_reg_1233;
wire   [31:0] v186_fu_667_p3;
reg   [31:0] v186_reg_1238;
wire   [31:0] v192_fu_678_p3;
reg   [31:0] v192_reg_1243;
wire   [31:0] v197_fu_689_p3;
reg   [31:0] v197_reg_1248;
wire   [31:0] v203_fu_700_p3;
reg   [31:0] v203_reg_1253;
wire   [31:0] v118_fu_710_p3;
wire   [31:0] v125_fu_721_p3;
wire   [31:0] v131_fu_732_p3;
wire   [31:0] v137_fu_743_p3;
wire   [31:0] v142_fu_754_p3;
wire   [31:0] v148_fu_765_p3;
reg   [31:0] v148_reg_1283;
reg   [31:0] v150_reg_1288;
wire   [31:0] v153_fu_775_p3;
reg   [31:0] v153_reg_1293;
reg   [31:0] v156_reg_1298;
wire   [31:0] v159_fu_785_p3;
reg   [31:0] v159_reg_1303;
reg   [31:0] v161_reg_1308;
wire   [31:0] v164_fu_795_p3;
reg   [31:0] v164_reg_1313;
reg   [31:0] v167_reg_1318;
reg   [31:0] v172_reg_1323;
wire   [31:0] v208_fu_806_p3;
reg   [31:0] v208_reg_1328;
wire   [31:0] v214_fu_817_p3;
reg   [31:0] v214_reg_1333;
reg   [31:0] v178_reg_1338;
reg   [31:0] v183_reg_1343;
reg   [31:0] v189_reg_1348;
reg   [31:0] v194_reg_1353;
reg   [31:0] v200_reg_1358;
reg   [31:0] v205_reg_1363;
reg   [31:0] v211_reg_1368;
reg   [31:0] v216_reg_1373;
reg   [31:0] v157_reg_1378;
reg   [31:0] v212_reg_1383;
reg   [31:0] v217_reg_1388;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_136_fu_505_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_136_fu_538_p1;
wire   [63:0] zext_ln171_fu_572_p1;
wire   [63:0] zext_ln179_fu_592_p1;
wire   [63:0] zext_ln277_fu_612_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln284_fu_625_p1;
reg   [7:0] v116_fu_94;
wire   [7:0] add_ln170_fu_554_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_35;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_839_p1;
wire    ap_block_pp0_stage2;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_844_p1;
wire   [31:0] bitcast_ln283_fu_903_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_907_p1;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
reg    v225_1_we1_local;
wire   [31:0] bitcast_ln192_fu_824_p1;
reg    v225_1_we0_local;
wire   [31:0] bitcast_ln198_fu_829_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln205_fu_834_p1;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln211_fu_849_p1;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
reg    v225_3_we1_local;
wire   [31:0] bitcast_ln218_fu_854_p1;
reg    v225_3_we0_local;
wire   [31:0] bitcast_ln224_fu_858_p1;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
reg    v225_4_we1_local;
wire   [31:0] bitcast_ln231_fu_863_p1;
reg    v225_4_we0_local;
wire   [31:0] bitcast_ln237_fu_868_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln244_fu_873_p1;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln250_fu_878_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln257_fu_883_p1;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln263_fu_888_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln270_fu_893_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln276_fu_898_p1;
reg   [31:0] grp_fu_417_p0;
reg   [31:0] grp_fu_417_p1;
reg   [31:0] grp_fu_421_p0;
reg   [31:0] grp_fu_421_p1;
reg   [31:0] grp_fu_425_p0;
reg   [31:0] grp_fu_425_p1;
reg   [31:0] grp_fu_429_p0;
reg   [31:0] grp_fu_429_p1;
reg   [31:0] grp_fu_433_p0;
reg   [31:0] grp_fu_433_p1;
reg   [31:0] grp_fu_437_p0;
reg   [31:0] grp_fu_437_p1;
reg   [31:0] grp_fu_441_p0;
reg   [31:0] grp_fu_441_p1;
reg   [31:0] grp_fu_445_p0;
reg   [31:0] grp_fu_445_p1;
reg   [31:0] grp_fu_449_p0;
reg   [31:0] grp_fu_449_p1;
reg   [31:0] grp_fu_453_p0;
reg   [31:0] grp_fu_453_p1;
wire   [13:0] zext_ln175_135_fu_495_p1;
wire   [13:0] add_ln175_fu_499_p2;
wire   [6:0] tmp_s_fu_510_p4;
wire   [13:0] zext_ln182_135_fu_528_p1;
wire   [13:0] add_ln182_fu_532_p2;
wire   [11:0] zext_ln175_134_fu_564_p1;
wire   [11:0] add_ln171_fu_567_p2;
wire   [11:0] zext_ln182_134_fu_584_p1;
wire   [11:0] add_ln179_fu_587_p2;
wire   [12:0] zext_ln175_fu_604_p1;
wire   [12:0] add_ln277_fu_607_p2;
wire   [12:0] zext_ln182_fu_617_p1;
wire   [12:0] add_ln284_fu_620_p2;
wire   [31:0] v169_fu_630_p1;
wire   [31:0] v174_fu_641_p1;
wire   [31:0] v180_fu_652_p1;
wire   [31:0] v185_fu_663_p1;
wire   [31:0] v191_fu_674_p1;
wire   [31:0] v196_fu_685_p1;
wire   [31:0] v202_fu_696_p1;
wire   [31:0] v117_fu_707_p1;
wire   [31:0] v124_fu_718_p1;
wire   [31:0] v130_fu_729_p1;
wire   [31:0] v136_fu_740_p1;
wire   [31:0] v141_fu_751_p1;
wire   [31:0] v147_fu_762_p1;
wire   [31:0] v152_fu_772_p1;
wire   [31:0] v158_fu_782_p1;
wire   [31:0] v163_fu_792_p1;
wire   [31:0] v207_fu_802_p1;
wire   [31:0] v213_fu_813_p1;
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
#0 v116_fu_94 = 8'd0;
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
        v116_fu_94 <= 8'd0;
    end else if (((icmp_ln170_reg_1013 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_fu_94 <= add_ln170_fu_554_p2;
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
        icmp_ln170_reg_1013 <= icmp_ln170_fu_489_p2;
        or_ln_reg_1022[7 : 1] <= or_ln_fu_520_p3[7 : 1];
        or_ln_reg_1022_pp0_iter1_reg[7 : 1] <= or_ln_reg_1022[7 : 1];
        v116_35_reg_1006 <= ap_sig_allocacmp_v116_35;
        v116_35_reg_1006_pp0_iter1_reg <= v116_35_reg_1006;
        v225_0_addr_1_reg_1061[11 : 0] <= zext_ln171_fu_572_p1[11 : 0];
        v225_0_addr_1_reg_1061_pp0_iter2_reg[11 : 0] <= v225_0_addr_1_reg_1061[11 : 0];
        v225_0_addr_1_reg_1061_pp0_iter3_reg[11 : 0] <= v225_0_addr_1_reg_1061_pp0_iter2_reg[11 : 0];
        v225_0_addr_2_reg_1102[11 : 0] <= zext_ln179_fu_592_p1[11 : 0];
        v225_0_addr_2_reg_1102_pp0_iter2_reg[11 : 0] <= v225_0_addr_2_reg_1102[11 : 0];
        v225_0_addr_2_reg_1102_pp0_iter3_reg[11 : 0] <= v225_0_addr_2_reg_1102_pp0_iter2_reg[11 : 0];
        v225_1_addr_1_reg_1066[11 : 0] <= zext_ln171_fu_572_p1[11 : 0];
        v225_1_addr_1_reg_1066_pp0_iter2_reg[11 : 0] <= v225_1_addr_1_reg_1066[11 : 0];
        v225_1_addr_1_reg_1066_pp0_iter3_reg[11 : 0] <= v225_1_addr_1_reg_1066_pp0_iter2_reg[11 : 0];
        v225_1_addr_2_reg_1107[11 : 0] <= zext_ln179_fu_592_p1[11 : 0];
        v225_1_addr_2_reg_1107_pp0_iter2_reg[11 : 0] <= v225_1_addr_2_reg_1107[11 : 0];
        v225_1_addr_2_reg_1107_pp0_iter3_reg[11 : 0] <= v225_1_addr_2_reg_1107_pp0_iter2_reg[11 : 0];
        v225_2_addr_1_reg_1071[11 : 0] <= zext_ln171_fu_572_p1[11 : 0];
        v225_2_addr_1_reg_1071_pp0_iter2_reg[11 : 0] <= v225_2_addr_1_reg_1071[11 : 0];
        v225_2_addr_1_reg_1071_pp0_iter3_reg[11 : 0] <= v225_2_addr_1_reg_1071_pp0_iter2_reg[11 : 0];
        v225_2_addr_2_reg_1112[11 : 0] <= zext_ln179_fu_592_p1[11 : 0];
        v225_2_addr_2_reg_1112_pp0_iter2_reg[11 : 0] <= v225_2_addr_2_reg_1112[11 : 0];
        v225_2_addr_2_reg_1112_pp0_iter3_reg[11 : 0] <= v225_2_addr_2_reg_1112_pp0_iter2_reg[11 : 0];
        v225_3_addr_1_reg_1077[11 : 0] <= zext_ln171_fu_572_p1[11 : 0];
        v225_3_addr_1_reg_1077_pp0_iter2_reg[11 : 0] <= v225_3_addr_1_reg_1077[11 : 0];
        v225_3_addr_1_reg_1077_pp0_iter3_reg[11 : 0] <= v225_3_addr_1_reg_1077_pp0_iter2_reg[11 : 0];
        v225_3_addr_2_reg_1118[11 : 0] <= zext_ln179_fu_592_p1[11 : 0];
        v225_3_addr_2_reg_1118_pp0_iter2_reg[11 : 0] <= v225_3_addr_2_reg_1118[11 : 0];
        v225_3_addr_2_reg_1118_pp0_iter3_reg[11 : 0] <= v225_3_addr_2_reg_1118_pp0_iter2_reg[11 : 0];
        v225_4_addr_1_reg_1082[11 : 0] <= zext_ln171_fu_572_p1[11 : 0];
        v225_4_addr_1_reg_1082_pp0_iter2_reg[11 : 0] <= v225_4_addr_1_reg_1082[11 : 0];
        v225_4_addr_1_reg_1082_pp0_iter3_reg[11 : 0] <= v225_4_addr_1_reg_1082_pp0_iter2_reg[11 : 0];
        v225_4_addr_2_reg_1123[11 : 0] <= zext_ln179_fu_592_p1[11 : 0];
        v225_4_addr_2_reg_1123_pp0_iter2_reg[11 : 0] <= v225_4_addr_2_reg_1123[11 : 0];
        v225_4_addr_2_reg_1123_pp0_iter3_reg[11 : 0] <= v225_4_addr_2_reg_1123_pp0_iter2_reg[11 : 0];
        v225_5_addr_1_reg_1087[11 : 0] <= zext_ln171_fu_572_p1[11 : 0];
        v225_5_addr_1_reg_1087_pp0_iter2_reg[11 : 0] <= v225_5_addr_1_reg_1087[11 : 0];
        v225_5_addr_1_reg_1087_pp0_iter3_reg[11 : 0] <= v225_5_addr_1_reg_1087_pp0_iter2_reg[11 : 0];
        v225_5_addr_2_reg_1128[11 : 0] <= zext_ln179_fu_592_p1[11 : 0];
        v225_5_addr_2_reg_1128_pp0_iter2_reg[11 : 0] <= v225_5_addr_2_reg_1128[11 : 0];
        v225_5_addr_2_reg_1128_pp0_iter3_reg[11 : 0] <= v225_5_addr_2_reg_1128_pp0_iter2_reg[11 : 0];
        v225_6_addr_1_reg_1092[11 : 0] <= zext_ln171_fu_572_p1[11 : 0];
        v225_6_addr_1_reg_1092_pp0_iter2_reg[11 : 0] <= v225_6_addr_1_reg_1092[11 : 0];
        v225_6_addr_1_reg_1092_pp0_iter3_reg[11 : 0] <= v225_6_addr_1_reg_1092_pp0_iter2_reg[11 : 0];
        v225_6_addr_2_reg_1133[11 : 0] <= zext_ln179_fu_592_p1[11 : 0];
        v225_6_addr_2_reg_1133_pp0_iter2_reg[11 : 0] <= v225_6_addr_2_reg_1133[11 : 0];
        v225_6_addr_2_reg_1133_pp0_iter3_reg[11 : 0] <= v225_6_addr_2_reg_1133_pp0_iter2_reg[11 : 0];
        v225_7_addr_1_reg_1097[11 : 0] <= zext_ln171_fu_572_p1[11 : 0];
        v225_7_addr_1_reg_1097_pp0_iter2_reg[11 : 0] <= v225_7_addr_1_reg_1097[11 : 0];
        v225_7_addr_1_reg_1097_pp0_iter3_reg[11 : 0] <= v225_7_addr_1_reg_1097_pp0_iter2_reg[11 : 0];
        v225_7_addr_2_reg_1138[11 : 0] <= zext_ln179_fu_592_p1[11 : 0];
        v225_7_addr_2_reg_1138_pp0_iter2_reg[11 : 0] <= v225_7_addr_2_reg_1138[11 : 0];
        v225_7_addr_2_reg_1138_pp0_iter3_reg[11 : 0] <= v225_7_addr_2_reg_1138_pp0_iter2_reg[11 : 0];
        v225_7_addr_2_reg_1138_pp0_iter4_reg[11 : 0] <= v225_7_addr_2_reg_1138_pp0_iter3_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_457 <= grp_fu_28760_p_dout0;
        reg_461 <= grp_fu_28764_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_465 <= grp_fu_28768_p_dout0;
        reg_469 <= grp_fu_28772_p_dout0;
        reg_473 <= grp_fu_28776_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_477 <= grp_fu_28760_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1043 <= v121_fu_543_p1;
        v127_reg_1052 <= v127_fu_549_p1;
        v148_reg_1283 <= v148_fu_765_p3;
        v153_reg_1293 <= v153_fu_775_p3;
        v159_reg_1303 <= v159_fu_785_p3;
        v164_reg_1313 <= v164_fu_795_p3;
        v208_reg_1328 <= v208_fu_806_p3;
        v214_reg_1333 <= v214_fu_817_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_1153 <= grp_fu_28780_p_dout0;
        v128_reg_1168 <= grp_fu_28784_p_dout0;
        v134_reg_1178 <= grp_fu_28788_p_dout0;
        v139_reg_1188 <= grp_fu_28792_p_dout0;
        v145_reg_1198 <= grp_fu_28796_p_dout0;
        v225_0_load_1_reg_1163 <= v225_0_q0;
        v225_0_load_reg_1148 <= v225_0_q1;
        v225_1_load_1_reg_1183 <= v225_1_q0;
        v225_1_load_reg_1173 <= v225_1_q1;
        v225_2_load_1_reg_1203 <= v225_2_q0;
        v225_2_load_reg_1193 <= v225_2_q1;
        v225_3_load_1_reg_1213 <= v225_3_q0;
        v225_3_load_reg_1208 <= v225_3_q1;
        v225_4_load_reg_1218 <= v225_4_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1288 <= grp_fu_28780_p_dout0;
        v156_reg_1298 <= grp_fu_28784_p_dout0;
        v161_reg_1308 <= grp_fu_28788_p_dout0;
        v167_reg_1318 <= grp_fu_28792_p_dout0;
        v172_reg_1323 <= grp_fu_28796_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1378 <= grp_fu_28764_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v170_reg_1223 <= v170_fu_634_p3;
        v175_reg_1228 <= v175_fu_645_p3;
        v181_reg_1233 <= v181_fu_656_p3;
        v186_reg_1238 <= v186_fu_667_p3;
        v192_reg_1243 <= v192_fu_678_p3;
        v197_reg_1248 <= v197_fu_689_p3;
        v203_reg_1253 <= v203_fu_700_p3;
        v225_0_addr_3_reg_1143 <= zext_ln277_fu_612_p1;
        v225_0_addr_3_reg_1143_pp0_iter2_reg <= v225_0_addr_3_reg_1143;
        v225_0_addr_3_reg_1143_pp0_iter3_reg <= v225_0_addr_3_reg_1143_pp0_iter2_reg;
        v225_0_addr_3_reg_1143_pp0_iter4_reg <= v225_0_addr_3_reg_1143_pp0_iter3_reg;
        v225_0_addr_4_reg_1158 <= zext_ln284_fu_625_p1;
        v225_0_addr_4_reg_1158_pp0_iter2_reg <= v225_0_addr_4_reg_1158;
        v225_0_addr_4_reg_1158_pp0_iter3_reg <= v225_0_addr_4_reg_1158_pp0_iter2_reg;
        v225_0_addr_4_reg_1158_pp0_iter4_reg <= v225_0_addr_4_reg_1158_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1338 <= grp_fu_28780_p_dout0;
        v183_reg_1343 <= grp_fu_28784_p_dout0;
        v189_reg_1348 <= grp_fu_28788_p_dout0;
        v194_reg_1353 <= grp_fu_28792_p_dout0;
        v200_reg_1358 <= grp_fu_28796_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1363 <= grp_fu_28780_p_dout0;
        v211_reg_1368 <= grp_fu_28784_p_dout0;
        v216_reg_1373 <= grp_fu_28788_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1383 <= grp_fu_28764_p_dout0;
        v217_reg_1388 <= grp_fu_28768_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_0_load_1_reg_1038 <= v227_0_q0;
        v227_0_load_reg_1033 <= v227_0_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1013 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v116_35 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_35 = v116_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_417_p0 = v203_reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p0 = v175_reg_1228;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p0 = v148_reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p0 = v118_fu_710_p3;
    end else begin
        grp_fu_417_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_417_p1 = v205_reg_1363;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p1 = v178_reg_1338;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p1 = v150_reg_1288;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p1 = v122_reg_1153;
    end else begin
        grp_fu_417_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_421_p0 = v208_reg_1328;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p0 = v181_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p0 = v153_reg_1293;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p0 = v125_fu_721_p3;
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_421_p1 = v211_reg_1368;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p1 = v183_reg_1343;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p1 = v156_reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p1 = v128_reg_1168;
    end else begin
        grp_fu_421_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_425_p0 = v214_reg_1333;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p0 = v186_reg_1238;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_425_p0 = v159_reg_1303;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p0 = v131_fu_732_p3;
    end else begin
        grp_fu_425_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_425_p1 = v216_reg_1373;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p1 = v189_reg_1348;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_425_p1 = v161_reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p1 = v134_reg_1178;
    end else begin
        grp_fu_425_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p0 = v192_reg_1243;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_429_p0 = v164_reg_1313;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p0 = v137_fu_743_p3;
    end else begin
        grp_fu_429_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p1 = v194_reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_429_p1 = v167_reg_1318;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p1 = v139_reg_1188;
    end else begin
        grp_fu_429_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p0 = v197_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p0 = v170_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p0 = v142_fu_754_p3;
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p1 = v200_reg_1358;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p1 = v172_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p1 = v145_reg_1198;
    end else begin
        grp_fu_433_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_437_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p0 = v120;
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p1 = v121_reg_1043;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_437_p1 = v127_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p1 = v121_fu_543_p1;
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_441_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p0 = v120;
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p1 = v127_reg_1052;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_441_p1 = v121_reg_1043;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p1 = v127_fu_549_p1;
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_445_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_445_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_445_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_445_p0 = v133;
    end else begin
        grp_fu_445_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_445_p1 = v121_reg_1043;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_445_p1 = v127_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_445_p1 = v121_fu_543_p1;
    end else begin
        grp_fu_445_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_449_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_449_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_449_p0 = v133;
    end else begin
        grp_fu_449_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_449_p1 = v127_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_449_p1 = v121_reg_1043;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_449_p1 = v127_fu_549_p1;
    end else begin
        grp_fu_449_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_453_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_453_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_453_p0 = v144;
    end else begin
        grp_fu_453_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_453_p1 = v121_reg_1043;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_453_p1 = v127_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_453_p1 = v121_fu_543_p1;
    end else begin
        grp_fu_453_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1158_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1102_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln284_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_592_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1143_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1061_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln277_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln289_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d0_local = bitcast_ln185_fu_844_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln283_fu_903_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d1_local = bitcast_ln178_fu_839_p1;
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1107_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_592_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1066_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_1_reg_1071_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_592_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_2_reg_1112_pp0_iter3_reg;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1118_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_592_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1077_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        v225_4_address0_local = v225_4_addr_2_reg_1123_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_592_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address1_local = v225_4_addr_1_reg_1082_pp0_iter3_reg;
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_address0_local = v225_5_addr_2_reg_1128_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_592_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_address1_local = v225_5_addr_1_reg_1087_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_5_ce0_local = 1'b1;
    end else begin
        v225_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_5_ce1_local = 1'b1;
    end else begin
        v225_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_we0_local = 1'b1;
    end else begin
        v225_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_we1_local = 1'b1;
    end else begin
        v225_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_address0_local = v225_6_addr_2_reg_1133_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_592_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_address1_local = v225_6_addr_1_reg_1092_pp0_iter3_reg;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_7_address0_local = v225_7_addr_2_reg_1138_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_592_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_7_address1_local = v225_7_addr_1_reg_1097_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_572_p1;
    end else begin
        v225_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign add_ln170_fu_554_p2 = (v116_35_reg_1006 + 8'd2);
assign add_ln171_fu_567_p2 = (mul_ln171 + zext_ln175_134_fu_564_p1);
assign add_ln175_fu_499_p2 = (mul_ln175 + zext_ln175_135_fu_495_p1);
assign add_ln179_fu_587_p2 = (mul_ln171 + zext_ln182_134_fu_584_p1);
assign add_ln182_fu_532_p2 = (mul_ln175 + zext_ln182_135_fu_528_p1);
assign add_ln277_fu_607_p2 = (mul_ln277 + zext_ln175_fu_604_p1);
assign add_ln284_fu_620_p2 = (mul_ln277 + zext_ln182_fu_617_p1);
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
assign bitcast_ln178_fu_839_p1 = reg_457;
assign bitcast_ln185_fu_844_p1 = reg_461;
assign bitcast_ln192_fu_824_p1 = reg_465;
assign bitcast_ln198_fu_829_p1 = reg_469;
assign bitcast_ln205_fu_834_p1 = reg_473;
assign bitcast_ln211_fu_849_p1 = reg_477;
assign bitcast_ln218_fu_854_p1 = v157_reg_1378;
assign bitcast_ln224_fu_858_p1 = reg_465;
assign bitcast_ln231_fu_863_p1 = reg_469;
assign bitcast_ln237_fu_868_p1 = reg_473;
assign bitcast_ln244_fu_873_p1 = reg_457;
assign bitcast_ln250_fu_878_p1 = reg_461;
assign bitcast_ln257_fu_883_p1 = reg_465;
assign bitcast_ln263_fu_888_p1 = reg_469;
assign bitcast_ln270_fu_893_p1 = reg_473;
assign bitcast_ln276_fu_898_p1 = reg_477;
assign bitcast_ln283_fu_903_p1 = v212_reg_1383;
assign bitcast_ln289_fu_907_p1 = v217_reg_1388;
assign grp_fu_28760_p_ce = 1'b1;
assign grp_fu_28760_p_din0 = grp_fu_417_p0;
assign grp_fu_28760_p_din1 = grp_fu_417_p1;
assign grp_fu_28760_p_opcode = 2'd0;
assign grp_fu_28764_p_ce = 1'b1;
assign grp_fu_28764_p_din0 = grp_fu_421_p0;
assign grp_fu_28764_p_din1 = grp_fu_421_p1;
assign grp_fu_28764_p_opcode = 2'd0;
assign grp_fu_28768_p_ce = 1'b1;
assign grp_fu_28768_p_din0 = grp_fu_425_p0;
assign grp_fu_28768_p_din1 = grp_fu_425_p1;
assign grp_fu_28768_p_opcode = 2'd0;
assign grp_fu_28772_p_ce = 1'b1;
assign grp_fu_28772_p_din0 = grp_fu_429_p0;
assign grp_fu_28772_p_din1 = grp_fu_429_p1;
assign grp_fu_28772_p_opcode = 2'd0;
assign grp_fu_28776_p_ce = 1'b1;
assign grp_fu_28776_p_din0 = grp_fu_433_p0;
assign grp_fu_28776_p_din1 = grp_fu_433_p1;
assign grp_fu_28776_p_opcode = 2'd0;
assign grp_fu_28780_p_ce = 1'b1;
assign grp_fu_28780_p_din0 = grp_fu_437_p0;
assign grp_fu_28780_p_din1 = grp_fu_437_p1;
assign grp_fu_28784_p_ce = 1'b1;
assign grp_fu_28784_p_din0 = grp_fu_441_p0;
assign grp_fu_28784_p_din1 = grp_fu_441_p1;
assign grp_fu_28788_p_ce = 1'b1;
assign grp_fu_28788_p_din0 = grp_fu_445_p0;
assign grp_fu_28788_p_din1 = grp_fu_445_p1;
assign grp_fu_28792_p_ce = 1'b1;
assign grp_fu_28792_p_din0 = grp_fu_449_p0;
assign grp_fu_28792_p_din1 = grp_fu_449_p1;
assign grp_fu_28796_p_ce = 1'b1;
assign grp_fu_28796_p_din0 = grp_fu_453_p0;
assign grp_fu_28796_p_din1 = grp_fu_453_p1;
assign icmp_ln170_fu_489_p2 = ((ap_sig_allocacmp_v116_35 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln_fu_520_p3 = {{tmp_s_fu_510_p4}, {1'd1}};
assign tmp_s_fu_510_p4 = {{ap_sig_allocacmp_v116_35[7:1]}};
assign v117_fu_707_p1 = v225_0_load_reg_1148;
assign v118_fu_710_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v117_fu_707_p1);
assign v121_fu_543_p1 = v227_0_load_reg_1033;
assign v124_fu_718_p1 = v225_0_load_1_reg_1163;
assign v125_fu_721_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v124_fu_718_p1);
assign v127_fu_549_p1 = v227_0_load_1_reg_1038;
assign v130_fu_729_p1 = v225_1_load_reg_1173;
assign v131_fu_732_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v130_fu_729_p1);
assign v136_fu_740_p1 = v225_1_load_1_reg_1183;
assign v137_fu_743_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v136_fu_740_p1);
assign v141_fu_751_p1 = v225_2_load_reg_1193;
assign v142_fu_754_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v141_fu_751_p1);
assign v147_fu_762_p1 = v225_2_load_1_reg_1203;
assign v148_fu_765_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v147_fu_762_p1);
assign v152_fu_772_p1 = v225_3_load_reg_1208;
assign v153_fu_775_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v152_fu_772_p1);
assign v158_fu_782_p1 = v225_3_load_1_reg_1213;
assign v159_fu_785_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v158_fu_782_p1);
assign v163_fu_792_p1 = v225_4_load_reg_1218;
assign v164_fu_795_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v163_fu_792_p1);
assign v169_fu_630_p1 = v225_4_q0;
assign v170_fu_634_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v169_fu_630_p1);
assign v174_fu_641_p1 = v225_5_q1;
assign v175_fu_645_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v174_fu_641_p1);
assign v180_fu_652_p1 = v225_5_q0;
assign v181_fu_656_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v180_fu_652_p1);
assign v185_fu_663_p1 = v225_6_q1;
assign v186_fu_667_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v185_fu_663_p1);
assign v191_fu_674_p1 = v225_6_q0;
assign v192_fu_678_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v191_fu_674_p1);
assign v196_fu_685_p1 = v225_7_q1;
assign v197_fu_689_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v196_fu_685_p1);
assign v202_fu_696_p1 = v225_7_q0;
assign v203_fu_700_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v202_fu_696_p1);
assign v207_fu_802_p1 = v225_0_q1;
assign v208_fu_806_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v207_fu_802_p1);
assign v213_fu_813_p1 = v225_0_q0;
assign v214_fu_817_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v213_fu_813_p1);
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
assign v225_1_d0 = bitcast_ln198_fu_829_p1;
assign v225_1_d1 = bitcast_ln192_fu_824_p1;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = bitcast_ln205_fu_834_p1;
assign v225_2_d1 = bitcast_ln211_fu_849_p1;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = bitcast_ln224_fu_858_p1;
assign v225_3_d1 = bitcast_ln218_fu_854_p1;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v225_4_address0 = v225_4_address0_local;
assign v225_4_address1 = v225_4_address1_local;
assign v225_4_ce0 = v225_4_ce0_local;
assign v225_4_ce1 = v225_4_ce1_local;
assign v225_4_d0 = bitcast_ln237_fu_868_p1;
assign v225_4_d1 = bitcast_ln231_fu_863_p1;
assign v225_4_we0 = v225_4_we0_local;
assign v225_4_we1 = v225_4_we1_local;
assign v225_5_address0 = v225_5_address0_local;
assign v225_5_address1 = v225_5_address1_local;
assign v225_5_ce0 = v225_5_ce0_local;
assign v225_5_ce1 = v225_5_ce1_local;
assign v225_5_d0 = bitcast_ln250_fu_878_p1;
assign v225_5_d1 = bitcast_ln244_fu_873_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln263_fu_888_p1;
assign v225_6_d1 = bitcast_ln257_fu_883_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln276_fu_898_p1;
assign v225_7_d1 = bitcast_ln270_fu_893_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_0_address0 = zext_ln182_136_fu_538_p1;
assign v227_0_address1 = zext_ln175_136_fu_505_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign zext_ln171_fu_572_p1 = add_ln171_fu_567_p2;
assign zext_ln175_134_fu_564_p1 = v116_35_reg_1006;
assign zext_ln175_135_fu_495_p1 = ap_sig_allocacmp_v116_35;
assign zext_ln175_136_fu_505_p1 = add_ln175_fu_499_p2;
assign zext_ln175_fu_604_p1 = v116_35_reg_1006_pp0_iter1_reg;
assign zext_ln179_fu_592_p1 = add_ln179_fu_587_p2;
assign zext_ln182_134_fu_584_p1 = or_ln_reg_1022;
assign zext_ln182_135_fu_528_p1 = or_ln_fu_520_p3;
assign zext_ln182_136_fu_538_p1 = add_ln182_fu_532_p2;
assign zext_ln182_fu_617_p1 = or_ln_reg_1022_pp0_iter1_reg;
assign zext_ln277_fu_612_p1 = add_ln277_fu_607_p2;
assign zext_ln284_fu_625_p1 = add_ln284_fu_620_p2;
always @ (posedge ap_clk) begin
    or_ln_reg_1022[0] <= 1'b1;
    or_ln_reg_1022_pp0_iter1_reg[0] <= 1'b1;
    v225_0_addr_1_reg_1061[12] <= 1'b0;
    v225_0_addr_1_reg_1061_pp0_iter2_reg[12] <= 1'b0;
    v225_0_addr_1_reg_1061_pp0_iter3_reg[12] <= 1'b0;
    v225_1_addr_1_reg_1066[12] <= 1'b0;
    v225_1_addr_1_reg_1066_pp0_iter2_reg[12] <= 1'b0;
    v225_1_addr_1_reg_1066_pp0_iter3_reg[12] <= 1'b0;
    v225_2_addr_1_reg_1071[12] <= 1'b0;
    v225_2_addr_1_reg_1071_pp0_iter2_reg[12] <= 1'b0;
    v225_2_addr_1_reg_1071_pp0_iter3_reg[12] <= 1'b0;
    v225_3_addr_1_reg_1077[12] <= 1'b0;
    v225_3_addr_1_reg_1077_pp0_iter2_reg[12] <= 1'b0;
    v225_3_addr_1_reg_1077_pp0_iter3_reg[12] <= 1'b0;
    v225_4_addr_1_reg_1082[12] <= 1'b0;
    v225_4_addr_1_reg_1082_pp0_iter2_reg[12] <= 1'b0;
    v225_4_addr_1_reg_1082_pp0_iter3_reg[12] <= 1'b0;
    v225_5_addr_1_reg_1087[12] <= 1'b0;
    v225_5_addr_1_reg_1087_pp0_iter2_reg[12] <= 1'b0;
    v225_5_addr_1_reg_1087_pp0_iter3_reg[12] <= 1'b0;
    v225_6_addr_1_reg_1092[12] <= 1'b0;
    v225_6_addr_1_reg_1092_pp0_iter2_reg[12] <= 1'b0;
    v225_6_addr_1_reg_1092_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_1_reg_1097[12] <= 1'b0;
    v225_7_addr_1_reg_1097_pp0_iter2_reg[12] <= 1'b0;
    v225_7_addr_1_reg_1097_pp0_iter3_reg[12] <= 1'b0;
    v225_0_addr_2_reg_1102[12] <= 1'b0;
    v225_0_addr_2_reg_1102_pp0_iter2_reg[12] <= 1'b0;
    v225_0_addr_2_reg_1102_pp0_iter3_reg[12] <= 1'b0;
    v225_1_addr_2_reg_1107[12] <= 1'b0;
    v225_1_addr_2_reg_1107_pp0_iter2_reg[12] <= 1'b0;
    v225_1_addr_2_reg_1107_pp0_iter3_reg[12] <= 1'b0;
    v225_2_addr_2_reg_1112[12] <= 1'b0;
    v225_2_addr_2_reg_1112_pp0_iter2_reg[12] <= 1'b0;
    v225_2_addr_2_reg_1112_pp0_iter3_reg[12] <= 1'b0;
    v225_3_addr_2_reg_1118[12] <= 1'b0;
    v225_3_addr_2_reg_1118_pp0_iter2_reg[12] <= 1'b0;
    v225_3_addr_2_reg_1118_pp0_iter3_reg[12] <= 1'b0;
    v225_4_addr_2_reg_1123[12] <= 1'b0;
    v225_4_addr_2_reg_1123_pp0_iter2_reg[12] <= 1'b0;
    v225_4_addr_2_reg_1123_pp0_iter3_reg[12] <= 1'b0;
    v225_5_addr_2_reg_1128[12] <= 1'b0;
    v225_5_addr_2_reg_1128_pp0_iter2_reg[12] <= 1'b0;
    v225_5_addr_2_reg_1128_pp0_iter3_reg[12] <= 1'b0;
    v225_6_addr_2_reg_1133[12] <= 1'b0;
    v225_6_addr_2_reg_1133_pp0_iter2_reg[12] <= 1'b0;
    v225_6_addr_2_reg_1133_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_2_reg_1138[12] <= 1'b0;
    v225_7_addr_2_reg_1138_pp0_iter2_reg[12] <= 1'b0;
    v225_7_addr_2_reg_1138_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_2_reg_1138_pp0_iter4_reg[12] <= 1'b0;
end
endmodule 