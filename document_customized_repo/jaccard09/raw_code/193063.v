module kernel_2mm_kernel_2mm_node1_Pipeline_label_56 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,mul_ln225,mul_ln238,cmp11,empty,v120_4,v133_4,v144_4,v155_4,v166_4,v177_4,v188_4,v199_4,v210_4,grp_fu_16008_p_din0,grp_fu_16008_p_din1,grp_fu_16008_p_opcode,grp_fu_16008_p_dout0,grp_fu_16008_p_ce,grp_fu_16012_p_din0,grp_fu_16012_p_din1,grp_fu_16012_p_opcode,grp_fu_16012_p_dout0,grp_fu_16012_p_ce,grp_fu_16016_p_din0,grp_fu_16016_p_din1,grp_fu_16016_p_opcode,grp_fu_16016_p_dout0,grp_fu_16016_p_ce,grp_fu_16020_p_din0,grp_fu_16020_p_din1,grp_fu_16020_p_opcode,grp_fu_16020_p_dout0,grp_fu_16020_p_ce,grp_fu_16024_p_din0,grp_fu_16024_p_din1,grp_fu_16024_p_opcode,grp_fu_16024_p_dout0,grp_fu_16024_p_ce,grp_fu_16028_p_din0,grp_fu_16028_p_din1,grp_fu_16028_p_dout0,grp_fu_16028_p_ce,grp_fu_16032_p_din0,grp_fu_16032_p_din1,grp_fu_16032_p_dout0,grp_fu_16032_p_ce,grp_fu_16036_p_din0,grp_fu_16036_p_din1,grp_fu_16036_p_dout0,grp_fu_16036_p_ce,grp_fu_16040_p_din0,grp_fu_16040_p_din1,grp_fu_16040_p_dout0,grp_fu_16040_p_ce,grp_fu_16044_p_din0,grp_fu_16044_p_din1,grp_fu_16044_p_dout0,grp_fu_16044_p_ce); 
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
input  [14:0] mul_ln175;
output  [14:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [14:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [14:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [14:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
input  [12:0] mul_ln225;
input  [12:0] mul_ln238;
input  [0:0] cmp11;
input  [0:0] empty;
input  [31:0] v120_4;
input  [31:0] v133_4;
input  [31:0] v144_4;
input  [31:0] v155_4;
input  [31:0] v166_4;
input  [31:0] v177_4;
input  [31:0] v188_4;
input  [31:0] v199_4;
input  [31:0] v210_4;
output  [31:0] grp_fu_16008_p_din0;
output  [31:0] grp_fu_16008_p_din1;
output  [1:0] grp_fu_16008_p_opcode;
input  [31:0] grp_fu_16008_p_dout0;
output   grp_fu_16008_p_ce;
output  [31:0] grp_fu_16012_p_din0;
output  [31:0] grp_fu_16012_p_din1;
output  [1:0] grp_fu_16012_p_opcode;
input  [31:0] grp_fu_16012_p_dout0;
output   grp_fu_16012_p_ce;
output  [31:0] grp_fu_16016_p_din0;
output  [31:0] grp_fu_16016_p_din1;
output  [1:0] grp_fu_16016_p_opcode;
input  [31:0] grp_fu_16016_p_dout0;
output   grp_fu_16016_p_ce;
output  [31:0] grp_fu_16020_p_din0;
output  [31:0] grp_fu_16020_p_din1;
output  [1:0] grp_fu_16020_p_opcode;
input  [31:0] grp_fu_16020_p_dout0;
output   grp_fu_16020_p_ce;
output  [31:0] grp_fu_16024_p_din0;
output  [31:0] grp_fu_16024_p_din1;
output  [1:0] grp_fu_16024_p_opcode;
input  [31:0] grp_fu_16024_p_dout0;
output   grp_fu_16024_p_ce;
output  [31:0] grp_fu_16028_p_din0;
output  [31:0] grp_fu_16028_p_din1;
input  [31:0] grp_fu_16028_p_dout0;
output   grp_fu_16028_p_ce;
output  [31:0] grp_fu_16032_p_din0;
output  [31:0] grp_fu_16032_p_din1;
input  [31:0] grp_fu_16032_p_dout0;
output   grp_fu_16032_p_ce;
output  [31:0] grp_fu_16036_p_din0;
output  [31:0] grp_fu_16036_p_din1;
input  [31:0] grp_fu_16036_p_dout0;
output   grp_fu_16036_p_ce;
output  [31:0] grp_fu_16040_p_din0;
output  [31:0] grp_fu_16040_p_din1;
input  [31:0] grp_fu_16040_p_dout0;
output   grp_fu_16040_p_ce;
output  [31:0] grp_fu_16044_p_din0;
output  [31:0] grp_fu_16044_p_din1;
input  [31:0] grp_fu_16044_p_dout0;
output   grp_fu_16044_p_ce;
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
reg   [0:0] icmp_ln170_reg_1063;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_488;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_492;
reg   [31:0] reg_496;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_500;
reg   [31:0] reg_504;
reg   [31:0] reg_508;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_4_reg_1057;
wire   [0:0] icmp_ln170_fu_520_p2;
wire   [7:0] or_ln179_4_fu_552_p3;
reg   [7:0] or_ln179_4_reg_1077;
wire   [31:0] select_ln175_fu_576_p3;
reg   [31:0] select_ln175_reg_1092;
wire   [31:0] select_ln182_fu_583_p3;
reg   [31:0] select_ln182_reg_1097;
wire   [31:0] v121_fu_590_p1;
reg   [31:0] v121_reg_1102;
wire   [31:0] v127_fu_596_p1;
reg   [31:0] v127_reg_1111;
reg   [12:0] v225_0_addr_reg_1120;
reg   [12:0] v225_0_addr_reg_1120_pp0_iter2_reg;
reg   [12:0] v225_0_addr_reg_1120_pp0_iter3_reg;
reg   [12:0] v225_1_addr_reg_1125;
reg   [12:0] v225_1_addr_reg_1125_pp0_iter2_reg;
reg   [12:0] v225_1_addr_reg_1125_pp0_iter3_reg;
reg   [12:0] v225_2_addr_reg_1130;
reg   [12:0] v225_2_addr_reg_1130_pp0_iter2_reg;
reg   [12:0] v225_2_addr_reg_1130_pp0_iter3_reg;
reg   [12:0] v225_3_addr_reg_1135;
reg   [12:0] v225_3_addr_reg_1135_pp0_iter2_reg;
reg   [12:0] v225_3_addr_reg_1135_pp0_iter3_reg;
reg   [12:0] v225_4_addr_reg_1140;
reg   [12:0] v225_4_addr_reg_1140_pp0_iter2_reg;
reg   [12:0] v225_4_addr_reg_1140_pp0_iter3_reg;
reg   [12:0] v225_4_addr_4_reg_1145;
reg   [12:0] v225_4_addr_4_reg_1145_pp0_iter2_reg;
reg   [12:0] v225_4_addr_4_reg_1145_pp0_iter3_reg;
reg   [12:0] v225_4_addr_4_reg_1145_pp0_iter4_reg;
reg   [12:0] v225_5_addr_reg_1150;
reg   [12:0] v225_5_addr_reg_1150_pp0_iter2_reg;
reg   [12:0] v225_5_addr_reg_1150_pp0_iter3_reg;
reg   [12:0] v225_6_addr_reg_1155;
reg   [12:0] v225_6_addr_reg_1155_pp0_iter2_reg;
reg   [12:0] v225_6_addr_reg_1155_pp0_iter3_reg;
reg   [12:0] v225_7_addr_reg_1161;
reg   [12:0] v225_7_addr_reg_1161_pp0_iter2_reg;
reg   [12:0] v225_7_addr_reg_1161_pp0_iter3_reg;
reg   [12:0] v225_0_addr_4_reg_1166;
reg   [12:0] v225_0_addr_4_reg_1166_pp0_iter2_reg;
reg   [12:0] v225_0_addr_4_reg_1166_pp0_iter3_reg;
reg   [12:0] v225_1_addr_4_reg_1171;
reg   [12:0] v225_1_addr_4_reg_1171_pp0_iter2_reg;
reg   [12:0] v225_1_addr_4_reg_1171_pp0_iter3_reg;
reg   [12:0] v225_2_addr_4_reg_1176;
reg   [12:0] v225_2_addr_4_reg_1176_pp0_iter2_reg;
reg   [12:0] v225_2_addr_4_reg_1176_pp0_iter3_reg;
reg   [12:0] v225_3_addr_4_reg_1181;
reg   [12:0] v225_3_addr_4_reg_1181_pp0_iter2_reg;
reg   [12:0] v225_3_addr_4_reg_1181_pp0_iter3_reg;
reg   [12:0] v225_3_addr_4_reg_1181_pp0_iter4_reg;
reg   [12:0] v225_4_addr_5_reg_1186;
reg   [12:0] v225_4_addr_5_reg_1186_pp0_iter2_reg;
reg   [12:0] v225_4_addr_5_reg_1186_pp0_iter3_reg;
reg   [12:0] v225_4_addr_6_reg_1191;
reg   [12:0] v225_4_addr_6_reg_1191_pp0_iter2_reg;
reg   [12:0] v225_4_addr_6_reg_1191_pp0_iter3_reg;
reg   [12:0] v225_4_addr_6_reg_1191_pp0_iter4_reg;
reg   [12:0] v225_5_addr_6_reg_1196;
reg   [12:0] v225_5_addr_6_reg_1196_pp0_iter2_reg;
reg   [12:0] v225_5_addr_6_reg_1196_pp0_iter3_reg;
reg   [12:0] v225_6_addr_6_reg_1201;
reg   [12:0] v225_6_addr_6_reg_1201_pp0_iter2_reg;
reg   [12:0] v225_6_addr_6_reg_1201_pp0_iter3_reg;
reg   [12:0] v225_7_addr_6_reg_1207;
reg   [12:0] v225_7_addr_6_reg_1207_pp0_iter2_reg;
reg   [12:0] v225_7_addr_6_reg_1207_pp0_iter3_reg;
reg   [31:0] v225_4_load_reg_1212;
reg   [31:0] v122_reg_1217;
reg   [31:0] v225_4_load_4_reg_1222;
reg   [31:0] v128_reg_1227;
reg   [31:0] v225_5_load_reg_1232;
reg   [31:0] v134_reg_1237;
reg   [31:0] v225_5_load_6_reg_1242;
reg   [31:0] v139_reg_1247;
reg   [31:0] v225_6_load_reg_1252;
reg   [31:0] v145_reg_1257;
wire   [31:0] v148_fu_675_p3;
reg   [31:0] v148_reg_1262;
wire   [31:0] v153_fu_686_p3;
reg   [31:0] v153_reg_1267;
wire   [31:0] v159_fu_697_p3;
reg   [31:0] v159_reg_1272;
wire   [31:0] v164_fu_708_p3;
reg   [31:0] v164_reg_1277;
wire   [31:0] v170_fu_719_p3;
reg   [31:0] v170_reg_1282;
wire   [31:0] v175_fu_730_p3;
reg   [31:0] v175_reg_1287;
wire   [31:0] v181_fu_741_p3;
reg   [31:0] v181_reg_1292;
wire   [31:0] v186_fu_752_p3;
reg   [31:0] v186_reg_1297;
wire   [31:0] v192_fu_763_p3;
reg   [31:0] v192_reg_1302;
wire   [31:0] v197_fu_774_p3;
reg   [31:0] v197_reg_1307;
wire   [31:0] v203_fu_785_p3;
reg   [31:0] v203_reg_1312;
wire   [31:0] v118_fu_795_p3;
wire   [31:0] v125_fu_806_p3;
wire   [31:0] v131_fu_817_p3;
wire   [31:0] v137_fu_828_p3;
wire   [31:0] v142_fu_839_p3;
reg   [31:0] v150_reg_1342;
reg   [31:0] v156_reg_1347;
reg   [31:0] v161_reg_1352;
reg   [31:0] v167_reg_1357;
reg   [31:0] v172_reg_1362;
wire   [31:0] v208_fu_851_p3;
reg   [31:0] v208_reg_1367;
wire   [31:0] v214_fu_862_p3;
reg   [31:0] v214_reg_1372;
reg   [31:0] v178_reg_1377;
reg   [31:0] v183_reg_1382;
reg   [31:0] v189_reg_1387;
reg   [31:0] v194_reg_1392;
reg   [31:0] v200_reg_1397;
reg   [31:0] v205_reg_1402;
reg   [31:0] v211_reg_1407;
reg   [31:0] v216_reg_1412;
reg   [31:0] v157_reg_1417;
reg   [31:0] v212_reg_1422;
reg   [31:0] v217_reg_1427;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_8_fu_536_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_8_fu_570_p1;
wire   [63:0] zext_ln225_fu_619_p1;
wire   [63:0] zext_ln171_fu_633_p1;
wire   [63:0] zext_ln232_fu_649_p1;
wire   [63:0] zext_ln179_fu_663_p1;
reg   [7:0] v116_fu_96;
wire   [7:0] add_ln170_fu_601_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_4;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
wire    ap_block_pp0_stage1;
reg    v225_4_we1_local;
reg   [31:0] v225_4_d1_local;
wire   [31:0] bitcast_ln178_fu_884_p1;
wire    ap_block_pp0_stage2;
reg    v225_4_we0_local;
reg   [31:0] v225_4_d0_local;
wire   [31:0] bitcast_ln185_fu_889_p1;
wire   [31:0] bitcast_ln283_fu_948_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_952_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln192_fu_869_p1;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln198_fu_874_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln205_fu_879_p1;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln211_fu_894_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln218_fu_899_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln224_fu_903_p1;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
wire   [31:0] bitcast_ln231_fu_908_p1;
reg    v225_0_we0_local;
wire   [31:0] bitcast_ln237_fu_913_p1;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
reg    v225_1_we1_local;
wire   [31:0] bitcast_ln244_fu_918_p1;
reg    v225_1_we0_local;
wire   [31:0] bitcast_ln250_fu_923_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln257_fu_928_p1;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln263_fu_933_p1;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
reg    v225_3_we1_local;
wire   [31:0] bitcast_ln270_fu_938_p1;
reg    v225_3_we0_local;
wire   [31:0] bitcast_ln276_fu_943_p1;
reg   [31:0] grp_fu_448_p0;
reg   [31:0] grp_fu_448_p1;
reg   [31:0] grp_fu_452_p0;
reg   [31:0] grp_fu_452_p1;
reg   [31:0] grp_fu_456_p0;
reg   [31:0] grp_fu_456_p1;
reg   [31:0] grp_fu_460_p0;
reg   [31:0] grp_fu_460_p1;
reg   [31:0] grp_fu_464_p0;
reg   [31:0] grp_fu_464_p1;
reg   [31:0] grp_fu_468_p0;
reg   [31:0] grp_fu_468_p1;
reg   [31:0] grp_fu_472_p0;
reg   [31:0] grp_fu_472_p1;
reg   [31:0] grp_fu_476_p0;
reg   [31:0] grp_fu_476_p1;
reg   [31:0] grp_fu_480_p0;
reg   [31:0] grp_fu_480_p1;
reg   [31:0] grp_fu_484_p0;
reg   [31:0] grp_fu_484_p1;
wire   [14:0] zext_ln175_7_fu_526_p1;
wire   [14:0] add_ln175_fu_530_p2;
wire   [6:0] tmp_s_fu_542_p4;
wire   [14:0] zext_ln182_7_fu_560_p1;
wire   [14:0] add_ln182_fu_564_p2;
wire   [12:0] zext_ln175_fu_611_p1;
wire   [12:0] add_ln225_fu_614_p2;
wire   [12:0] add_ln171_fu_628_p2;
wire   [12:0] zext_ln182_fu_641_p1;
wire   [12:0] add_ln232_fu_644_p2;
wire   [12:0] add_ln179_fu_658_p2;
wire   [31:0] v147_fu_671_p1;
wire   [31:0] v152_fu_682_p1;
wire   [31:0] v158_fu_693_p1;
wire   [31:0] v163_fu_704_p1;
wire   [31:0] v169_fu_715_p1;
wire   [31:0] v174_fu_726_p1;
wire   [31:0] v180_fu_737_p1;
wire   [31:0] v185_fu_748_p1;
wire   [31:0] v191_fu_759_p1;
wire   [31:0] v196_fu_770_p1;
wire   [31:0] v202_fu_781_p1;
wire   [31:0] v117_fu_792_p1;
wire   [31:0] v124_fu_803_p1;
wire   [31:0] v130_fu_814_p1;
wire   [31:0] v136_fu_825_p1;
wire   [31:0] v141_fu_836_p1;
wire   [31:0] v207_fu_847_p1;
wire   [31:0] v213_fu_858_p1;
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
#0 v116_fu_96 = 8'd0;
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
        v116_fu_96 <= 8'd0;
    end else if (((icmp_ln170_reg_1063 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_fu_96 <= add_ln170_fu_601_p2;
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
        icmp_ln170_reg_1063 <= icmp_ln170_fu_520_p2;
        or_ln179_4_reg_1077[7 : 1] <= or_ln179_4_fu_552_p3[7 : 1];
        v116_4_reg_1057 <= ap_sig_allocacmp_v116_4;
        v225_0_addr_4_reg_1166 <= zext_ln232_fu_649_p1;
        v225_0_addr_4_reg_1166_pp0_iter2_reg <= v225_0_addr_4_reg_1166;
        v225_0_addr_4_reg_1166_pp0_iter3_reg <= v225_0_addr_4_reg_1166_pp0_iter2_reg;
        v225_0_addr_reg_1120 <= zext_ln225_fu_619_p1;
        v225_0_addr_reg_1120_pp0_iter2_reg <= v225_0_addr_reg_1120;
        v225_0_addr_reg_1120_pp0_iter3_reg <= v225_0_addr_reg_1120_pp0_iter2_reg;
        v225_1_addr_4_reg_1171 <= zext_ln232_fu_649_p1;
        v225_1_addr_4_reg_1171_pp0_iter2_reg <= v225_1_addr_4_reg_1171;
        v225_1_addr_4_reg_1171_pp0_iter3_reg <= v225_1_addr_4_reg_1171_pp0_iter2_reg;
        v225_1_addr_reg_1125 <= zext_ln225_fu_619_p1;
        v225_1_addr_reg_1125_pp0_iter2_reg <= v225_1_addr_reg_1125;
        v225_1_addr_reg_1125_pp0_iter3_reg <= v225_1_addr_reg_1125_pp0_iter2_reg;
        v225_2_addr_4_reg_1176 <= zext_ln232_fu_649_p1;
        v225_2_addr_4_reg_1176_pp0_iter2_reg <= v225_2_addr_4_reg_1176;
        v225_2_addr_4_reg_1176_pp0_iter3_reg <= v225_2_addr_4_reg_1176_pp0_iter2_reg;
        v225_2_addr_reg_1130 <= zext_ln225_fu_619_p1;
        v225_2_addr_reg_1130_pp0_iter2_reg <= v225_2_addr_reg_1130;
        v225_2_addr_reg_1130_pp0_iter3_reg <= v225_2_addr_reg_1130_pp0_iter2_reg;
        v225_3_addr_4_reg_1181 <= zext_ln232_fu_649_p1;
        v225_3_addr_4_reg_1181_pp0_iter2_reg <= v225_3_addr_4_reg_1181;
        v225_3_addr_4_reg_1181_pp0_iter3_reg <= v225_3_addr_4_reg_1181_pp0_iter2_reg;
        v225_3_addr_4_reg_1181_pp0_iter4_reg <= v225_3_addr_4_reg_1181_pp0_iter3_reg;
        v225_3_addr_reg_1135 <= zext_ln225_fu_619_p1;
        v225_3_addr_reg_1135_pp0_iter2_reg <= v225_3_addr_reg_1135;
        v225_3_addr_reg_1135_pp0_iter3_reg <= v225_3_addr_reg_1135_pp0_iter2_reg;
        v225_4_addr_4_reg_1145 <= zext_ln225_fu_619_p1;
        v225_4_addr_4_reg_1145_pp0_iter2_reg <= v225_4_addr_4_reg_1145;
        v225_4_addr_4_reg_1145_pp0_iter3_reg <= v225_4_addr_4_reg_1145_pp0_iter2_reg;
        v225_4_addr_4_reg_1145_pp0_iter4_reg <= v225_4_addr_4_reg_1145_pp0_iter3_reg;
        v225_4_addr_5_reg_1186 <= zext_ln179_fu_663_p1;
        v225_4_addr_5_reg_1186_pp0_iter2_reg <= v225_4_addr_5_reg_1186;
        v225_4_addr_5_reg_1186_pp0_iter3_reg <= v225_4_addr_5_reg_1186_pp0_iter2_reg;
        v225_4_addr_6_reg_1191 <= zext_ln232_fu_649_p1;
        v225_4_addr_6_reg_1191_pp0_iter2_reg <= v225_4_addr_6_reg_1191;
        v225_4_addr_6_reg_1191_pp0_iter3_reg <= v225_4_addr_6_reg_1191_pp0_iter2_reg;
        v225_4_addr_6_reg_1191_pp0_iter4_reg <= v225_4_addr_6_reg_1191_pp0_iter3_reg;
        v225_4_addr_reg_1140 <= zext_ln171_fu_633_p1;
        v225_4_addr_reg_1140_pp0_iter2_reg <= v225_4_addr_reg_1140;
        v225_4_addr_reg_1140_pp0_iter3_reg <= v225_4_addr_reg_1140_pp0_iter2_reg;
        v225_5_addr_6_reg_1196 <= zext_ln179_fu_663_p1;
        v225_5_addr_6_reg_1196_pp0_iter2_reg <= v225_5_addr_6_reg_1196;
        v225_5_addr_6_reg_1196_pp0_iter3_reg <= v225_5_addr_6_reg_1196_pp0_iter2_reg;
        v225_5_addr_reg_1150 <= zext_ln171_fu_633_p1;
        v225_5_addr_reg_1150_pp0_iter2_reg <= v225_5_addr_reg_1150;
        v225_5_addr_reg_1150_pp0_iter3_reg <= v225_5_addr_reg_1150_pp0_iter2_reg;
        v225_6_addr_6_reg_1201 <= zext_ln179_fu_663_p1;
        v225_6_addr_6_reg_1201_pp0_iter2_reg <= v225_6_addr_6_reg_1201;
        v225_6_addr_6_reg_1201_pp0_iter3_reg <= v225_6_addr_6_reg_1201_pp0_iter2_reg;
        v225_6_addr_reg_1155 <= zext_ln171_fu_633_p1;
        v225_6_addr_reg_1155_pp0_iter2_reg <= v225_6_addr_reg_1155;
        v225_6_addr_reg_1155_pp0_iter3_reg <= v225_6_addr_reg_1155_pp0_iter2_reg;
        v225_7_addr_6_reg_1207 <= zext_ln179_fu_663_p1;
        v225_7_addr_6_reg_1207_pp0_iter2_reg <= v225_7_addr_6_reg_1207;
        v225_7_addr_6_reg_1207_pp0_iter3_reg <= v225_7_addr_6_reg_1207_pp0_iter2_reg;
        v225_7_addr_reg_1161 <= zext_ln171_fu_633_p1;
        v225_7_addr_reg_1161_pp0_iter2_reg <= v225_7_addr_reg_1161;
        v225_7_addr_reg_1161_pp0_iter3_reg <= v225_7_addr_reg_1161_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_488 <= grp_fu_16008_p_dout0;
        reg_492 <= grp_fu_16012_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_496 <= grp_fu_16016_p_dout0;
        reg_500 <= grp_fu_16020_p_dout0;
        reg_504 <= grp_fu_16024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_508 <= grp_fu_16008_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln175_reg_1092 <= select_ln175_fu_576_p3;
        select_ln182_reg_1097 <= select_ln182_fu_583_p3;
        v148_reg_1262 <= v148_fu_675_p3;
        v153_reg_1267 <= v153_fu_686_p3;
        v159_reg_1272 <= v159_fu_697_p3;
        v164_reg_1277 <= v164_fu_708_p3;
        v170_reg_1282 <= v170_fu_719_p3;
        v175_reg_1287 <= v175_fu_730_p3;
        v181_reg_1292 <= v181_fu_741_p3;
        v186_reg_1297 <= v186_fu_752_p3;
        v192_reg_1302 <= v192_fu_763_p3;
        v197_reg_1307 <= v197_fu_774_p3;
        v203_reg_1312 <= v203_fu_785_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1102 <= v121_fu_590_p1;
        v127_reg_1111 <= v127_fu_596_p1;
        v208_reg_1367 <= v208_fu_851_p3;
        v214_reg_1372 <= v214_fu_862_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_1217 <= grp_fu_16028_p_dout0;
        v128_reg_1227 <= grp_fu_16032_p_dout0;
        v134_reg_1237 <= grp_fu_16036_p_dout0;
        v139_reg_1247 <= grp_fu_16040_p_dout0;
        v145_reg_1257 <= grp_fu_16044_p_dout0;
        v225_4_load_4_reg_1222 <= v225_4_q0;
        v225_4_load_reg_1212 <= v225_4_q1;
        v225_5_load_6_reg_1242 <= v225_5_q0;
        v225_5_load_reg_1232 <= v225_5_q1;
        v225_6_load_reg_1252 <= v225_6_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1342 <= grp_fu_16028_p_dout0;
        v156_reg_1347 <= grp_fu_16032_p_dout0;
        v161_reg_1352 <= grp_fu_16036_p_dout0;
        v167_reg_1357 <= grp_fu_16040_p_dout0;
        v172_reg_1362 <= grp_fu_16044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1417 <= grp_fu_16012_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1377 <= grp_fu_16028_p_dout0;
        v183_reg_1382 <= grp_fu_16032_p_dout0;
        v189_reg_1387 <= grp_fu_16036_p_dout0;
        v194_reg_1392 <= grp_fu_16040_p_dout0;
        v200_reg_1397 <= grp_fu_16044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1402 <= grp_fu_16028_p_dout0;
        v211_reg_1407 <= grp_fu_16032_p_dout0;
        v216_reg_1412 <= grp_fu_16036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1422 <= grp_fu_16012_p_dout0;
        v217_reg_1427 <= grp_fu_16016_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1063 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v116_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_4 = v116_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p0 = v203_reg_1312;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p0 = v175_reg_1287;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_448_p0 = v148_reg_1262;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_448_p0 = v118_fu_795_p3;
    end else begin
        grp_fu_448_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p1 = v205_reg_1402;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p1 = v178_reg_1377;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_448_p1 = v150_reg_1342;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_448_p1 = v122_reg_1217;
    end else begin
        grp_fu_448_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p0 = v208_reg_1367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p0 = v181_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_452_p0 = v153_reg_1267;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_452_p0 = v125_fu_806_p3;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p1 = v211_reg_1407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p1 = v183_reg_1382;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_452_p1 = v156_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_452_p1 = v128_reg_1227;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p0 = v214_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p0 = v186_reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_456_p0 = v159_reg_1272;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p0 = v131_fu_817_p3;
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p1 = v216_reg_1412;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p1 = v189_reg_1387;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_456_p1 = v161_reg_1352;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p1 = v134_reg_1237;
    end else begin
        grp_fu_456_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p0 = v192_reg_1302;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_460_p0 = v164_reg_1277;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_460_p0 = v137_fu_828_p3;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p1 = v194_reg_1392;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_460_p1 = v167_reg_1357;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_460_p1 = v139_reg_1247;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p0 = v197_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_464_p0 = v170_reg_1282;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_464_p0 = v142_fu_839_p3;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p1 = v200_reg_1397;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_464_p1 = v172_reg_1362;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_464_p1 = v145_reg_1257;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = v199_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p0 = v177_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_468_p0 = v144_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_468_p0 = v120_4;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p1 = v121_reg_1102;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_468_p1 = v127_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_468_p1 = v121_fu_590_p1;
    end else begin
        grp_fu_468_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p0 = v210_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p0 = v177_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_472_p0 = v155_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_472_p0 = v120_4;
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p1 = v127_reg_1111;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_472_p1 = v121_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_472_p1 = v127_fu_596_p1;
    end else begin
        grp_fu_472_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p0 = v210_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p0 = v188_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_476_p0 = v155_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_476_p0 = v133_4;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p1 = v121_reg_1102;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_476_p1 = v127_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_476_p1 = v121_fu_590_p1;
    end else begin
        grp_fu_476_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_p0 = v188_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_480_p0 = v166_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_480_p0 = v133_4;
    end else begin
        grp_fu_480_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_p1 = v127_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_480_p1 = v121_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_480_p1 = v127_fu_596_p1;
    end else begin
        grp_fu_480_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p0 = v199_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_484_p0 = v166_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p0 = v144_4;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p1 = v121_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_484_p1 = v127_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p1 = v121_fu_590_p1;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1166_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln232_fu_649_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_reg_1120_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln225_fu_619_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_4_reg_1171_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln232_fu_649_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_reg_1125_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln225_fu_619_p1;
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address0_local = v225_2_addr_4_reg_1176_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln232_fu_649_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_reg_1130_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln225_fu_619_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_4_reg_1181_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln232_fu_649_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_reg_1135_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln225_fu_619_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_we1_local = 1'b1;
    end else begin
        v225_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_address0_local = v225_4_addr_6_reg_1191_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address0_local = v225_4_addr_5_reg_1186_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_address0_local = v225_4_addr_6_reg_1191;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_663_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_address1_local = v225_4_addr_4_reg_1145_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address1_local = v225_4_addr_reg_1140_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_address1_local = v225_4_addr_4_reg_1145;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address1_local = zext_ln171_fu_633_p1;
    end else begin
        v225_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_4_ce0_local = 1'b1;
    end else begin
        v225_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_4_ce1_local = 1'b1;
    end else begin
        v225_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_d0_local = bitcast_ln289_fu_952_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_d0_local = bitcast_ln185_fu_889_p1;
    end else begin
        v225_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_d1_local = bitcast_ln283_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_d1_local = bitcast_ln178_fu_884_p1;
    end else begin
        v225_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_4_we0_local = 1'b1;
    end else begin
        v225_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_4_we1_local = 1'b1;
    end else begin
        v225_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_5_address0_local = v225_5_addr_6_reg_1196_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_663_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_5_address1_local = v225_5_addr_reg_1150_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_633_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_5_we1_local = 1'b1;
    end else begin
        v225_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_6_address0_local = v225_6_addr_reg_1155_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_663_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_6_address1_local = v225_6_addr_6_reg_1201_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address1_local = zext_ln171_fu_633_p1;
    end else begin
        v225_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        v225_7_address0_local = v225_7_addr_6_reg_1207_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_663_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_7_address1_local = v225_7_addr_reg_1161_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_633_p1;
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
assign add_ln170_fu_601_p2 = (v116_4_reg_1057 + 8'd2);
assign add_ln171_fu_628_p2 = (mul_ln238 + zext_ln175_fu_611_p1);
assign add_ln175_fu_530_p2 = (mul_ln175 + zext_ln175_7_fu_526_p1);
assign add_ln179_fu_658_p2 = (mul_ln238 + zext_ln182_fu_641_p1);
assign add_ln182_fu_564_p2 = (mul_ln175 + zext_ln182_7_fu_560_p1);
assign add_ln225_fu_614_p2 = (mul_ln225 + zext_ln175_fu_611_p1);
assign add_ln232_fu_644_p2 = (mul_ln225 + zext_ln182_fu_641_p1);
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
assign bitcast_ln178_fu_884_p1 = reg_488;
assign bitcast_ln185_fu_889_p1 = reg_492;
assign bitcast_ln192_fu_869_p1 = reg_496;
assign bitcast_ln198_fu_874_p1 = reg_500;
assign bitcast_ln205_fu_879_p1 = reg_504;
assign bitcast_ln211_fu_894_p1 = reg_508;
assign bitcast_ln218_fu_899_p1 = v157_reg_1417;
assign bitcast_ln224_fu_903_p1 = reg_496;
assign bitcast_ln231_fu_908_p1 = reg_500;
assign bitcast_ln237_fu_913_p1 = reg_504;
assign bitcast_ln244_fu_918_p1 = reg_488;
assign bitcast_ln250_fu_923_p1 = reg_492;
assign bitcast_ln257_fu_928_p1 = reg_496;
assign bitcast_ln263_fu_933_p1 = reg_500;
assign bitcast_ln270_fu_938_p1 = reg_504;
assign bitcast_ln276_fu_943_p1 = reg_508;
assign bitcast_ln283_fu_948_p1 = v212_reg_1422;
assign bitcast_ln289_fu_952_p1 = v217_reg_1427;
assign grp_fu_16008_p_ce = 1'b1;
assign grp_fu_16008_p_din0 = grp_fu_448_p0;
assign grp_fu_16008_p_din1 = grp_fu_448_p1;
assign grp_fu_16008_p_opcode = 2'd0;
assign grp_fu_16012_p_ce = 1'b1;
assign grp_fu_16012_p_din0 = grp_fu_452_p0;
assign grp_fu_16012_p_din1 = grp_fu_452_p1;
assign grp_fu_16012_p_opcode = 2'd0;
assign grp_fu_16016_p_ce = 1'b1;
assign grp_fu_16016_p_din0 = grp_fu_456_p0;
assign grp_fu_16016_p_din1 = grp_fu_456_p1;
assign grp_fu_16016_p_opcode = 2'd0;
assign grp_fu_16020_p_ce = 1'b1;
assign grp_fu_16020_p_din0 = grp_fu_460_p0;
assign grp_fu_16020_p_din1 = grp_fu_460_p1;
assign grp_fu_16020_p_opcode = 2'd0;
assign grp_fu_16024_p_ce = 1'b1;
assign grp_fu_16024_p_din0 = grp_fu_464_p0;
assign grp_fu_16024_p_din1 = grp_fu_464_p1;
assign grp_fu_16024_p_opcode = 2'd0;
assign grp_fu_16028_p_ce = 1'b1;
assign grp_fu_16028_p_din0 = grp_fu_468_p0;
assign grp_fu_16028_p_din1 = grp_fu_468_p1;
assign grp_fu_16032_p_ce = 1'b1;
assign grp_fu_16032_p_din0 = grp_fu_472_p0;
assign grp_fu_16032_p_din1 = grp_fu_472_p1;
assign grp_fu_16036_p_ce = 1'b1;
assign grp_fu_16036_p_din0 = grp_fu_476_p0;
assign grp_fu_16036_p_din1 = grp_fu_476_p1;
assign grp_fu_16040_p_ce = 1'b1;
assign grp_fu_16040_p_din0 = grp_fu_480_p0;
assign grp_fu_16040_p_din1 = grp_fu_480_p1;
assign grp_fu_16044_p_ce = 1'b1;
assign grp_fu_16044_p_din0 = grp_fu_484_p0;
assign grp_fu_16044_p_din1 = grp_fu_484_p1;
assign icmp_ln170_fu_520_p2 = ((ap_sig_allocacmp_v116_4 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_4_fu_552_p3 = {{tmp_s_fu_542_p4}, {1'd1}};
assign select_ln175_fu_576_p3 = ((empty[0:0] == 1'b1) ? v227_1_q1 : v227_0_q1);
assign select_ln182_fu_583_p3 = ((empty[0:0] == 1'b1) ? v227_1_q0 : v227_0_q0);
assign tmp_s_fu_542_p4 = {{ap_sig_allocacmp_v116_4[7:1]}};
assign v117_fu_792_p1 = v225_4_load_reg_1212;
assign v118_fu_795_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_792_p1);
assign v121_fu_590_p1 = select_ln175_reg_1092;
assign v124_fu_803_p1 = v225_4_load_4_reg_1222;
assign v125_fu_806_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_803_p1);
assign v127_fu_596_p1 = select_ln182_reg_1097;
assign v130_fu_814_p1 = v225_5_load_reg_1232;
assign v131_fu_817_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_814_p1);
assign v136_fu_825_p1 = v225_5_load_6_reg_1242;
assign v137_fu_828_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_825_p1);
assign v141_fu_836_p1 = v225_6_load_reg_1252;
assign v142_fu_839_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_836_p1);
assign v147_fu_671_p1 = v225_6_q0;
assign v148_fu_675_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_671_p1);
assign v152_fu_682_p1 = v225_7_q1;
assign v153_fu_686_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_682_p1);
assign v158_fu_693_p1 = v225_7_q0;
assign v159_fu_697_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_693_p1);
assign v163_fu_704_p1 = v225_0_q1;
assign v164_fu_708_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_704_p1);
assign v169_fu_715_p1 = v225_0_q0;
assign v170_fu_719_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_715_p1);
assign v174_fu_726_p1 = v225_1_q1;
assign v175_fu_730_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_726_p1);
assign v180_fu_737_p1 = v225_1_q0;
assign v181_fu_741_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_737_p1);
assign v185_fu_748_p1 = v225_2_q1;
assign v186_fu_752_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_748_p1);
assign v191_fu_759_p1 = v225_2_q0;
assign v192_fu_763_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_759_p1);
assign v196_fu_770_p1 = v225_3_q1;
assign v197_fu_774_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_770_p1);
assign v202_fu_781_p1 = v225_3_q0;
assign v203_fu_785_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_781_p1);
assign v207_fu_847_p1 = v225_4_q1;
assign v208_fu_851_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_847_p1);
assign v213_fu_858_p1 = v225_4_q0;
assign v214_fu_862_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_858_p1);
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = bitcast_ln237_fu_913_p1;
assign v225_0_d1 = bitcast_ln231_fu_908_p1;
assign v225_0_we0 = v225_0_we0_local;
assign v225_0_we1 = v225_0_we1_local;
assign v225_1_address0 = v225_1_address0_local;
assign v225_1_address1 = v225_1_address1_local;
assign v225_1_ce0 = v225_1_ce0_local;
assign v225_1_ce1 = v225_1_ce1_local;
assign v225_1_d0 = bitcast_ln250_fu_923_p1;
assign v225_1_d1 = bitcast_ln244_fu_918_p1;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = bitcast_ln263_fu_933_p1;
assign v225_2_d1 = bitcast_ln257_fu_928_p1;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = bitcast_ln276_fu_943_p1;
assign v225_3_d1 = bitcast_ln270_fu_938_p1;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v225_4_address0 = v225_4_address0_local;
assign v225_4_address1 = v225_4_address1_local;
assign v225_4_ce0 = v225_4_ce0_local;
assign v225_4_ce1 = v225_4_ce1_local;
assign v225_4_d0 = v225_4_d0_local;
assign v225_4_d1 = v225_4_d1_local;
assign v225_4_we0 = v225_4_we0_local;
assign v225_4_we1 = v225_4_we1_local;
assign v225_5_address0 = v225_5_address0_local;
assign v225_5_address1 = v225_5_address1_local;
assign v225_5_ce0 = v225_5_ce0_local;
assign v225_5_ce1 = v225_5_ce1_local;
assign v225_5_d0 = bitcast_ln198_fu_874_p1;
assign v225_5_d1 = bitcast_ln192_fu_869_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln205_fu_879_p1;
assign v225_6_d1 = bitcast_ln211_fu_894_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln224_fu_903_p1;
assign v225_7_d1 = bitcast_ln218_fu_899_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_0_address0 = zext_ln182_8_fu_570_p1;
assign v227_0_address1 = zext_ln175_8_fu_536_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_8_fu_570_p1;
assign v227_1_address1 = zext_ln175_8_fu_536_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign zext_ln171_fu_633_p1 = add_ln171_fu_628_p2;
assign zext_ln175_7_fu_526_p1 = ap_sig_allocacmp_v116_4;
assign zext_ln175_8_fu_536_p1 = add_ln175_fu_530_p2;
assign zext_ln175_fu_611_p1 = v116_4_reg_1057;
assign zext_ln179_fu_663_p1 = add_ln179_fu_658_p2;
assign zext_ln182_7_fu_560_p1 = or_ln179_4_fu_552_p3;
assign zext_ln182_8_fu_570_p1 = add_ln182_fu_564_p2;
assign zext_ln182_fu_641_p1 = or_ln179_4_reg_1077;
assign zext_ln225_fu_619_p1 = add_ln225_fu_614_p2;
assign zext_ln232_fu_649_p1 = add_ln232_fu_644_p2;
always @ (posedge ap_clk) begin
    or_ln179_4_reg_1077[0] <= 1'b1;
end
endmodule 