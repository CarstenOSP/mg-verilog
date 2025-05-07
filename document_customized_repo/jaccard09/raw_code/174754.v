module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,mul_ln171,mul_ln225,mul_ln277,cmp11,empty,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_16152_p_din0,grp_fu_16152_p_din1,grp_fu_16152_p_opcode,grp_fu_16152_p_dout0,grp_fu_16152_p_ce,grp_fu_16156_p_din0,grp_fu_16156_p_din1,grp_fu_16156_p_opcode,grp_fu_16156_p_dout0,grp_fu_16156_p_ce,grp_fu_16160_p_din0,grp_fu_16160_p_din1,grp_fu_16160_p_opcode,grp_fu_16160_p_dout0,grp_fu_16160_p_ce,grp_fu_16164_p_din0,grp_fu_16164_p_din1,grp_fu_16164_p_dout0,grp_fu_16164_p_ce,grp_fu_16168_p_din0,grp_fu_16168_p_din1,grp_fu_16168_p_dout0,grp_fu_16168_p_ce,grp_fu_16172_p_din0,grp_fu_16172_p_din1,grp_fu_16172_p_dout0,grp_fu_16172_p_ce); 
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
input  [12:0] mul_ln171;
input  [13:0] mul_ln225;
input  [13:0] mul_ln277;
input  [0:0] cmp11;
input  [0:0] empty;
input  [31:0] v120;
input  [31:0] v133;
input  [31:0] v144;
input  [31:0] v155;
input  [31:0] v166;
input  [31:0] v177;
input  [31:0] v188;
input  [31:0] v199;
input  [31:0] v210;
output  [31:0] grp_fu_16152_p_din0;
output  [31:0] grp_fu_16152_p_din1;
output  [1:0] grp_fu_16152_p_opcode;
input  [31:0] grp_fu_16152_p_dout0;
output   grp_fu_16152_p_ce;
output  [31:0] grp_fu_16156_p_din0;
output  [31:0] grp_fu_16156_p_din1;
output  [1:0] grp_fu_16156_p_opcode;
input  [31:0] grp_fu_16156_p_dout0;
output   grp_fu_16156_p_ce;
output  [31:0] grp_fu_16160_p_din0;
output  [31:0] grp_fu_16160_p_din1;
output  [1:0] grp_fu_16160_p_opcode;
input  [31:0] grp_fu_16160_p_dout0;
output   grp_fu_16160_p_ce;
output  [31:0] grp_fu_16164_p_din0;
output  [31:0] grp_fu_16164_p_din1;
input  [31:0] grp_fu_16164_p_dout0;
output   grp_fu_16164_p_ce;
output  [31:0] grp_fu_16168_p_din0;
output  [31:0] grp_fu_16168_p_din1;
input  [31:0] grp_fu_16168_p_dout0;
output   grp_fu_16168_p_ce;
output  [31:0] grp_fu_16172_p_din0;
output  [31:0] grp_fu_16172_p_din1;
input  [31:0] grp_fu_16172_p_dout0;
output   grp_fu_16172_p_ce;
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
reg   [0:0] icmp_ln170_reg_1033;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_435;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_439;
reg   [31:0] reg_443;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_447;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_451;
reg   [31:0] reg_455;
reg   [7:0] v116_5_reg_1027;
wire   [0:0] icmp_ln170_fu_467_p2;
reg   [13:0] v225_0_addr_1_reg_1047;
reg   [13:0] v225_0_addr_1_reg_1047_pp0_iter1_reg;
reg   [13:0] v225_0_addr_1_reg_1047_pp0_iter2_reg;
reg   [13:0] v225_1_addr_1_reg_1052;
reg   [13:0] v225_1_addr_1_reg_1052_pp0_iter1_reg;
reg   [13:0] v225_1_addr_1_reg_1052_pp0_iter2_reg;
reg   [13:0] v225_2_addr_1_reg_1057;
reg   [13:0] v225_2_addr_1_reg_1057_pp0_iter1_reg;
reg   [13:0] v225_2_addr_1_reg_1057_pp0_iter2_reg;
reg   [13:0] v225_3_addr_1_reg_1062;
reg   [13:0] v225_3_addr_1_reg_1062_pp0_iter1_reg;
reg   [13:0] v225_3_addr_1_reg_1062_pp0_iter2_reg;
wire   [7:0] or_ln_fu_517_p3;
reg   [7:0] or_ln_reg_1068;
reg   [7:0] or_ln_reg_1068_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1083;
reg   [13:0] v225_0_addr_2_reg_1083_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1083_pp0_iter2_reg;
reg   [13:0] v225_1_addr_2_reg_1088;
reg   [13:0] v225_1_addr_2_reg_1088_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1088_pp0_iter2_reg;
reg   [13:0] v225_2_addr_2_reg_1093;
reg   [13:0] v225_2_addr_2_reg_1093_pp0_iter1_reg;
reg   [13:0] v225_2_addr_2_reg_1093_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1098;
reg   [13:0] v225_3_addr_2_reg_1098_pp0_iter1_reg;
reg   [13:0] v225_3_addr_2_reg_1098_pp0_iter2_reg;
wire   [13:0] zext_ln175_fu_559_p1;
reg   [13:0] zext_ln175_reg_1104;
reg   [13:0] v225_0_addr_3_reg_1109;
reg   [13:0] v225_0_addr_3_reg_1109_pp0_iter1_reg;
reg   [13:0] v225_0_addr_3_reg_1109_pp0_iter2_reg;
reg   [13:0] v225_1_addr_3_reg_1114;
reg   [13:0] v225_1_addr_3_reg_1114_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1114_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1119;
reg   [13:0] v225_2_addr_3_reg_1119_pp0_iter1_reg;
reg   [13:0] v225_2_addr_3_reg_1119_pp0_iter2_reg;
reg   [13:0] v225_3_addr_3_reg_1124;
reg   [13:0] v225_3_addr_3_reg_1124_pp0_iter1_reg;
reg   [13:0] v225_3_addr_3_reg_1124_pp0_iter2_reg;
reg   [31:0] v225_0_load_reg_1129;
wire   [31:0] select_ln175_fu_575_p3;
reg   [31:0] select_ln175_reg_1134;
reg   [31:0] v225_0_load_1_reg_1139;
wire   [31:0] select_ln182_fu_582_p3;
reg   [31:0] select_ln182_reg_1144;
reg   [31:0] v225_1_load_reg_1149;
reg   [31:0] v225_1_load_1_reg_1154;
reg   [31:0] v225_2_load_reg_1159;
reg   [31:0] v225_2_load_1_reg_1164;
wire   [31:0] v121_fu_589_p1;
reg   [31:0] v121_reg_1169;
wire   [31:0] v127_fu_594_p1;
reg   [31:0] v127_reg_1176;
reg   [31:0] v225_0_load_2_reg_1183;
reg   [31:0] v122_reg_1188;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1193;
reg   [31:0] v134_reg_1198;
wire   [31:0] v118_fu_611_p3;
wire   [31:0] v125_fu_622_p3;
wire   [31:0] v131_fu_633_p3;
reg   [31:0] v139_reg_1218;
reg   [31:0] v145_reg_1223;
reg   [31:0] v150_reg_1228;
wire   [13:0] add_ln277_fu_641_p2;
reg   [13:0] add_ln277_reg_1233;
reg   [13:0] v225_0_addr_4_reg_1238;
reg   [13:0] v225_0_addr_4_reg_1238_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_661_p2;
reg   [13:0] add_ln284_reg_1243;
reg   [13:0] v225_1_addr_4_reg_1248;
reg   [13:0] v225_1_addr_4_reg_1248_pp0_iter2_reg;
reg   [13:0] v225_2_addr_4_reg_1253;
reg   [13:0] v225_2_addr_4_reg_1253_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1258;
reg   [13:0] v225_3_addr_4_reg_1258_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1258_pp0_iter3_reg;
wire   [31:0] v137_fu_669_p3;
wire   [31:0] v142_fu_680_p3;
wire   [31:0] v148_fu_691_p3;
reg   [31:0] v225_3_load_reg_1278;
reg   [31:0] v156_reg_1283;
reg   [31:0] v225_3_load_1_reg_1288;
reg   [31:0] v161_reg_1293;
reg   [31:0] v167_reg_1298;
reg   [13:0] v225_0_addr_5_reg_1303;
reg   [13:0] v225_0_addr_5_reg_1303_pp0_iter2_reg;
reg   [13:0] v225_0_addr_5_reg_1303_pp0_iter3_reg;
reg   [13:0] v225_0_addr_6_reg_1308;
reg   [13:0] v225_0_addr_6_reg_1308_pp0_iter2_reg;
reg   [13:0] v225_0_addr_6_reg_1308_pp0_iter3_reg;
wire   [31:0] v153_fu_710_p3;
wire   [31:0] v159_fu_721_p3;
wire   [31:0] v164_fu_732_p3;
wire   [31:0] v170_fu_744_p3;
reg   [31:0] v170_reg_1328;
reg   [31:0] v172_reg_1333;
wire   [31:0] v175_fu_755_p3;
reg   [31:0] v175_reg_1338;
reg   [31:0] v178_reg_1343;
wire   [31:0] v181_fu_766_p3;
reg   [31:0] v181_reg_1348;
reg   [31:0] v183_reg_1353;
wire   [31:0] v186_fu_777_p3;
reg   [31:0] v186_reg_1358;
wire   [31:0] v192_fu_788_p3;
reg   [31:0] v192_reg_1363;
wire   [31:0] v197_fu_799_p3;
reg   [31:0] v197_reg_1368;
wire   [31:0] v203_fu_810_p3;
reg   [31:0] v203_reg_1373;
reg   [31:0] v189_reg_1378;
reg   [31:0] v194_reg_1383;
reg   [31:0] v200_reg_1388;
wire   [31:0] v208_fu_821_p3;
reg   [31:0] v208_reg_1393;
wire   [31:0] v214_fu_832_p3;
reg   [31:0] v214_reg_1398;
reg   [31:0] v205_reg_1403;
reg   [31:0] v211_reg_1408;
reg   [31:0] v216_reg_1413;
reg   [31:0] v206_reg_1418;
reg   [31:0] v212_reg_1423;
reg   [31:0] v217_reg_1428;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_17_fu_487_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_499_p1;
wire   [63:0] zext_ln182_17_fu_539_p1;
wire   [63:0] zext_ln179_fu_551_p1;
wire   [63:0] zext_ln225_fu_567_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln232_fu_653_p1;
wire   [63:0] zext_ln277_fu_699_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_703_p1;
reg   [7:0] v116_fu_92;
wire   [7:0] add_ln170_fu_598_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_5;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_859_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_864_p1;
wire   [31:0] bitcast_ln231_fu_879_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_884_p1;
wire   [31:0] bitcast_ln283_fu_918_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_922_p1;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_839_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_844_p1;
wire   [31:0] bitcast_ln244_fu_889_p1;
wire   [31:0] bitcast_ln250_fu_894_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_849_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_854_p1;
wire   [31:0] bitcast_ln257_fu_899_p1;
wire   [31:0] bitcast_ln263_fu_904_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln218_fu_869_p1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln224_fu_874_p1;
wire   [31:0] bitcast_ln270_fu_909_p1;
wire   [31:0] bitcast_ln276_fu_914_p1;
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
wire   [14:0] zext_ln175_16_fu_477_p1;
wire   [14:0] add_ln175_fu_481_p2;
wire   [12:0] zext_ln175_15_fu_473_p1;
wire   [12:0] add_ln171_fu_493_p2;
wire   [6:0] tmp_s_fu_507_p4;
wire   [14:0] zext_ln182_16_fu_529_p1;
wire   [14:0] add_ln182_fu_533_p2;
wire   [12:0] zext_ln182_15_fu_525_p1;
wire   [12:0] add_ln179_fu_545_p2;
wire   [13:0] add_ln225_fu_562_p2;
wire   [31:0] v117_fu_608_p1;
wire   [31:0] v124_fu_619_p1;
wire   [31:0] v130_fu_630_p1;
wire   [13:0] zext_ln182_fu_645_p1;
wire   [13:0] add_ln232_fu_648_p2;
wire   [31:0] v136_fu_666_p1;
wire   [31:0] v141_fu_677_p1;
wire   [31:0] v147_fu_688_p1;
wire   [31:0] v152_fu_707_p1;
wire   [31:0] v158_fu_718_p1;
wire   [31:0] v163_fu_729_p1;
wire   [31:0] v169_fu_740_p1;
wire   [31:0] v174_fu_751_p1;
wire   [31:0] v180_fu_762_p1;
wire   [31:0] v185_fu_773_p1;
wire   [31:0] v191_fu_784_p1;
wire   [31:0] v196_fu_795_p1;
wire   [31:0] v202_fu_806_p1;
wire   [31:0] v207_fu_817_p1;
wire   [31:0] v213_fu_828_p1;
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
#0 v116_fu_92 = 8'd0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_fu_92 <= 8'd0;
    end else if (((icmp_ln170_reg_1033 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_92 <= add_ln170_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_1233 <= add_ln277_fu_641_p2;
        add_ln284_reg_1243 <= add_ln284_fu_661_p2;
        select_ln175_reg_1134 <= select_ln175_fu_575_p3;
        select_ln182_reg_1144 <= select_ln182_fu_582_p3;
        v225_0_addr_3_reg_1109 <= zext_ln225_fu_567_p1;
        v225_0_addr_3_reg_1109_pp0_iter1_reg <= v225_0_addr_3_reg_1109;
        v225_0_addr_3_reg_1109_pp0_iter2_reg <= v225_0_addr_3_reg_1109_pp0_iter1_reg;
        v225_0_addr_4_reg_1238 <= zext_ln232_fu_653_p1;
        v225_0_addr_4_reg_1238_pp0_iter2_reg <= v225_0_addr_4_reg_1238;
        v225_1_addr_3_reg_1114 <= zext_ln225_fu_567_p1;
        v225_1_addr_3_reg_1114_pp0_iter1_reg <= v225_1_addr_3_reg_1114;
        v225_1_addr_3_reg_1114_pp0_iter2_reg <= v225_1_addr_3_reg_1114_pp0_iter1_reg;
        v225_1_addr_4_reg_1248 <= zext_ln232_fu_653_p1;
        v225_1_addr_4_reg_1248_pp0_iter2_reg <= v225_1_addr_4_reg_1248;
        v225_2_addr_3_reg_1119 <= zext_ln225_fu_567_p1;
        v225_2_addr_3_reg_1119_pp0_iter1_reg <= v225_2_addr_3_reg_1119;
        v225_2_addr_3_reg_1119_pp0_iter2_reg <= v225_2_addr_3_reg_1119_pp0_iter1_reg;
        v225_2_addr_4_reg_1253 <= zext_ln232_fu_653_p1;
        v225_2_addr_4_reg_1253_pp0_iter2_reg <= v225_2_addr_4_reg_1253;
        v225_3_addr_3_reg_1124 <= zext_ln225_fu_567_p1;
        v225_3_addr_3_reg_1124_pp0_iter1_reg <= v225_3_addr_3_reg_1124;
        v225_3_addr_3_reg_1124_pp0_iter2_reg <= v225_3_addr_3_reg_1124_pp0_iter1_reg;
        v225_3_addr_4_reg_1258 <= zext_ln232_fu_653_p1;
        v225_3_addr_4_reg_1258_pp0_iter2_reg <= v225_3_addr_4_reg_1258;
        v225_3_addr_4_reg_1258_pp0_iter3_reg <= v225_3_addr_4_reg_1258_pp0_iter2_reg;
        zext_ln175_reg_1104[7 : 0] <= zext_ln175_fu_559_p1[7 : 0];
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
        icmp_ln170_reg_1033 <= icmp_ln170_fu_467_p2;
        or_ln_reg_1068[7 : 1] <= or_ln_fu_517_p3[7 : 1];
        or_ln_reg_1068_pp0_iter1_reg[7 : 1] <= or_ln_reg_1068[7 : 1];
        v116_5_reg_1027 <= ap_sig_allocacmp_v116_5;
        v225_0_addr_1_reg_1047[12 : 0] <= zext_ln171_fu_499_p1[12 : 0];
        v225_0_addr_1_reg_1047_pp0_iter1_reg[12 : 0] <= v225_0_addr_1_reg_1047[12 : 0];
        v225_0_addr_1_reg_1047_pp0_iter2_reg[12 : 0] <= v225_0_addr_1_reg_1047_pp0_iter1_reg[12 : 0];
        v225_0_addr_2_reg_1083[12 : 0] <= zext_ln179_fu_551_p1[12 : 0];
        v225_0_addr_2_reg_1083_pp0_iter1_reg[12 : 0] <= v225_0_addr_2_reg_1083[12 : 0];
        v225_0_addr_2_reg_1083_pp0_iter2_reg[12 : 0] <= v225_0_addr_2_reg_1083_pp0_iter1_reg[12 : 0];
        v225_1_addr_1_reg_1052[12 : 0] <= zext_ln171_fu_499_p1[12 : 0];
        v225_1_addr_1_reg_1052_pp0_iter1_reg[12 : 0] <= v225_1_addr_1_reg_1052[12 : 0];
        v225_1_addr_1_reg_1052_pp0_iter2_reg[12 : 0] <= v225_1_addr_1_reg_1052_pp0_iter1_reg[12 : 0];
        v225_1_addr_2_reg_1088[12 : 0] <= zext_ln179_fu_551_p1[12 : 0];
        v225_1_addr_2_reg_1088_pp0_iter1_reg[12 : 0] <= v225_1_addr_2_reg_1088[12 : 0];
        v225_1_addr_2_reg_1088_pp0_iter2_reg[12 : 0] <= v225_1_addr_2_reg_1088_pp0_iter1_reg[12 : 0];
        v225_2_addr_1_reg_1057[12 : 0] <= zext_ln171_fu_499_p1[12 : 0];
        v225_2_addr_1_reg_1057_pp0_iter1_reg[12 : 0] <= v225_2_addr_1_reg_1057[12 : 0];
        v225_2_addr_1_reg_1057_pp0_iter2_reg[12 : 0] <= v225_2_addr_1_reg_1057_pp0_iter1_reg[12 : 0];
        v225_2_addr_2_reg_1093[12 : 0] <= zext_ln179_fu_551_p1[12 : 0];
        v225_2_addr_2_reg_1093_pp0_iter1_reg[12 : 0] <= v225_2_addr_2_reg_1093[12 : 0];
        v225_2_addr_2_reg_1093_pp0_iter2_reg[12 : 0] <= v225_2_addr_2_reg_1093_pp0_iter1_reg[12 : 0];
        v225_3_addr_1_reg_1062[12 : 0] <= zext_ln171_fu_499_p1[12 : 0];
        v225_3_addr_1_reg_1062_pp0_iter1_reg[12 : 0] <= v225_3_addr_1_reg_1062[12 : 0];
        v225_3_addr_1_reg_1062_pp0_iter2_reg[12 : 0] <= v225_3_addr_1_reg_1062_pp0_iter1_reg[12 : 0];
        v225_3_addr_2_reg_1098[12 : 0] <= zext_ln179_fu_551_p1[12 : 0];
        v225_3_addr_2_reg_1098_pp0_iter1_reg[12 : 0] <= v225_3_addr_2_reg_1098[12 : 0];
        v225_3_addr_2_reg_1098_pp0_iter2_reg[12 : 0] <= v225_3_addr_2_reg_1098_pp0_iter1_reg[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_435 <= grp_fu_16152_p_dout0;
        reg_439 <= grp_fu_16156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_443 <= grp_fu_16160_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_447 <= grp_fu_16152_p_dout0;
        reg_451 <= grp_fu_16156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_455 <= grp_fu_16160_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1169 <= v121_fu_589_p1;
        v127_reg_1176 <= v127_fu_594_p1;
        v170_reg_1328 <= v170_fu_744_p3;
        v175_reg_1338 <= v175_fu_755_p3;
        v181_reg_1348 <= v181_fu_766_p3;
        v186_reg_1358 <= v186_fu_777_p3;
        v192_reg_1363 <= v192_fu_788_p3;
        v197_reg_1368 <= v197_fu_799_p3;
        v203_reg_1373 <= v203_fu_810_p3;
        v225_0_addr_5_reg_1303 <= zext_ln277_fu_699_p1;
        v225_0_addr_5_reg_1303_pp0_iter2_reg <= v225_0_addr_5_reg_1303;
        v225_0_addr_5_reg_1303_pp0_iter3_reg <= v225_0_addr_5_reg_1303_pp0_iter2_reg;
        v225_0_addr_6_reg_1308 <= zext_ln284_fu_703_p1;
        v225_0_addr_6_reg_1308_pp0_iter2_reg <= v225_0_addr_6_reg_1308;
        v225_0_addr_6_reg_1308_pp0_iter3_reg <= v225_0_addr_6_reg_1308_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1188 <= grp_fu_16164_p_dout0;
        v128_reg_1193 <= grp_fu_16168_p_dout0;
        v134_reg_1198 <= grp_fu_16172_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1218 <= grp_fu_16164_p_dout0;
        v145_reg_1223 <= grp_fu_16168_p_dout0;
        v150_reg_1228 <= grp_fu_16172_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1283 <= grp_fu_16164_p_dout0;
        v161_reg_1293 <= grp_fu_16168_p_dout0;
        v167_reg_1298 <= grp_fu_16172_p_dout0;
        v225_3_load_1_reg_1288 <= v225_3_q0;
        v225_3_load_reg_1278 <= v225_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1333 <= grp_fu_16164_p_dout0;
        v178_reg_1343 <= grp_fu_16168_p_dout0;
        v183_reg_1353 <= grp_fu_16172_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1378 <= grp_fu_16164_p_dout0;
        v194_reg_1383 <= grp_fu_16168_p_dout0;
        v200_reg_1388 <= grp_fu_16172_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1403 <= grp_fu_16164_p_dout0;
        v211_reg_1408 <= grp_fu_16168_p_dout0;
        v216_reg_1413 <= grp_fu_16172_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1418 <= grp_fu_16152_p_dout0;
        v212_reg_1423 <= grp_fu_16156_p_dout0;
        v217_reg_1428 <= grp_fu_16160_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1393 <= v208_fu_821_p3;
        v214_reg_1398 <= v214_fu_832_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_1_reg_1139 <= v225_0_q0;
        v225_0_load_reg_1129 <= v225_0_q1;
        v225_1_load_1_reg_1154 <= v225_1_q0;
        v225_1_load_reg_1149 <= v225_1_q1;
        v225_2_load_1_reg_1164 <= v225_2_q0;
        v225_2_load_reg_1159 <= v225_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_load_2_reg_1183 <= v225_0_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1033 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116_5 = v116_fu_92;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_411_p0 = v203_reg_1373;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_411_p0 = v186_reg_1358;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_411_p0 = v170_reg_1328;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_411_p0 = v153_fu_710_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_411_p0 = v137_fu_669_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_411_p0 = v118_fu_611_p3;
        end else begin
            grp_fu_411_p0 = 'bx;
        end
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_411_p1 = v205_reg_1403;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_411_p1 = v189_reg_1378;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_411_p1 = v172_reg_1333;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_411_p1 = v156_reg_1283;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_411_p1 = v139_reg_1218;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_411_p1 = v122_reg_1188;
        end else begin
            grp_fu_411_p1 = 'bx;
        end
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_415_p0 = v208_reg_1393;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_415_p0 = v192_reg_1363;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_415_p0 = v175_reg_1338;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_415_p0 = v159_fu_721_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_415_p0 = v142_fu_680_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_415_p0 = v125_fu_622_p3;
        end else begin
            grp_fu_415_p0 = 'bx;
        end
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_415_p1 = v211_reg_1408;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_415_p1 = v194_reg_1383;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_415_p1 = v178_reg_1343;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_415_p1 = v161_reg_1293;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_415_p1 = v145_reg_1223;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_415_p1 = v128_reg_1193;
        end else begin
            grp_fu_415_p1 = 'bx;
        end
    end else begin
        grp_fu_415_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_419_p0 = v214_reg_1398;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_419_p0 = v197_reg_1368;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_419_p0 = v181_reg_1348;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_419_p0 = v164_fu_732_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_419_p0 = v148_fu_691_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_419_p0 = v131_fu_633_p3;
        end else begin
            grp_fu_419_p0 = 'bx;
        end
    end else begin
        grp_fu_419_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_419_p1 = v216_reg_1413;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_419_p1 = v200_reg_1388;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_419_p1 = v183_reg_1353;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_419_p1 = v167_reg_1298;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_419_p1 = v150_reg_1228;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_419_p1 = v134_reg_1198;
        end else begin
            grp_fu_419_p1 = 'bx;
        end
    end else begin
        grp_fu_419_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_423_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_423_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_423_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_423_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_423_p0 = v133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p0 = v120;
    end else begin
        grp_fu_423_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_423_p1 = v121_reg_1169;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_423_p1 = v127_reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p1 = v121_fu_589_p1;
    end else begin
        grp_fu_423_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_427_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_427_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_427_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_427_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_427_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_427_p0 = v120;
    end else begin
        grp_fu_427_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_427_p1 = v127_reg_1176;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_427_p1 = v121_reg_1169;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_427_p1 = v127_fu_594_p1;
    end else begin
        grp_fu_427_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_431_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_431_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_431_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_431_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p0 = v133;
    end else begin
        grp_fu_431_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_431_p1 = v121_reg_1169;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_431_p1 = v127_reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p1 = v121_fu_589_p1;
    end else begin
        grp_fu_431_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_6_reg_1308_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1238_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1083_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_703_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_551_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_5_reg_1303_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1109_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1047_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_699_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_499_p1;
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
        v225_0_d0_local = bitcast_ln289_fu_922_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln237_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_864_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln283_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln231_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln178_fu_859_p1;
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
        v225_1_address0_local = v225_1_addr_4_reg_1248_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1088_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_551_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1114_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1052_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1114;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_499_p1;
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
            v225_1_d0_local = bitcast_ln250_fu_894_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln198_fu_844_p1;
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
            v225_1_d1_local = bitcast_ln244_fu_889_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln192_fu_839_p1;
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
        v225_2_address0_local = v225_2_addr_4_reg_1253_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1093_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_551_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1119_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_1_reg_1057_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1119;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_499_p1;
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
            v225_2_d0_local = bitcast_ln263_fu_904_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln211_fu_854_p1;
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
            v225_2_d1_local = bitcast_ln257_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln205_fu_849_p1;
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
        v225_3_address0_local = v225_3_addr_4_reg_1258_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_1_reg_1062_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_653_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1098;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1124_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1098_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1124;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1062;
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
        v225_3_d0_local = bitcast_ln276_fu_914_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln218_fu_869_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln270_fu_909_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln224_fu_874_p1;
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
            if ((~((ap_idle_pp0_1to3 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln170_fu_598_p2 = (v116_5_reg_1027 + 8'd2);
assign add_ln171_fu_493_p2 = (mul_ln171 + zext_ln175_15_fu_473_p1);
assign add_ln175_fu_481_p2 = (mul_ln175 + zext_ln175_16_fu_477_p1);
assign add_ln179_fu_545_p2 = (mul_ln171 + zext_ln182_15_fu_525_p1);
assign add_ln182_fu_533_p2 = (mul_ln175 + zext_ln182_16_fu_529_p1);
assign add_ln225_fu_562_p2 = (mul_ln225 + zext_ln175_fu_559_p1);
assign add_ln232_fu_648_p2 = (mul_ln225 + zext_ln182_fu_645_p1);
assign add_ln277_fu_641_p2 = (mul_ln277 + zext_ln175_reg_1104);
assign add_ln284_fu_661_p2 = (mul_ln277 + zext_ln182_fu_645_p1);
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
assign bitcast_ln178_fu_859_p1 = reg_435;
assign bitcast_ln185_fu_864_p1 = reg_439;
assign bitcast_ln192_fu_839_p1 = reg_443;
assign bitcast_ln198_fu_844_p1 = reg_447;
assign bitcast_ln205_fu_849_p1 = reg_451;
assign bitcast_ln211_fu_854_p1 = reg_455;
assign bitcast_ln218_fu_869_p1 = reg_447;
assign bitcast_ln224_fu_874_p1 = reg_451;
assign bitcast_ln231_fu_879_p1 = reg_443;
assign bitcast_ln237_fu_884_p1 = reg_435;
assign bitcast_ln244_fu_889_p1 = reg_439;
assign bitcast_ln250_fu_894_p1 = reg_455;
assign bitcast_ln257_fu_899_p1 = reg_435;
assign bitcast_ln263_fu_904_p1 = reg_439;
assign bitcast_ln270_fu_909_p1 = reg_443;
assign bitcast_ln276_fu_914_p1 = v206_reg_1418;
assign bitcast_ln283_fu_918_p1 = v212_reg_1423;
assign bitcast_ln289_fu_922_p1 = v217_reg_1428;
assign grp_fu_16152_p_ce = 1'b1;
assign grp_fu_16152_p_din0 = grp_fu_411_p0;
assign grp_fu_16152_p_din1 = grp_fu_411_p1;
assign grp_fu_16152_p_opcode = 2'd0;
assign grp_fu_16156_p_ce = 1'b1;
assign grp_fu_16156_p_din0 = grp_fu_415_p0;
assign grp_fu_16156_p_din1 = grp_fu_415_p1;
assign grp_fu_16156_p_opcode = 2'd0;
assign grp_fu_16160_p_ce = 1'b1;
assign grp_fu_16160_p_din0 = grp_fu_419_p0;
assign grp_fu_16160_p_din1 = grp_fu_419_p1;
assign grp_fu_16160_p_opcode = 2'd0;
assign grp_fu_16164_p_ce = 1'b1;
assign grp_fu_16164_p_din0 = grp_fu_423_p0;
assign grp_fu_16164_p_din1 = grp_fu_423_p1;
assign grp_fu_16168_p_ce = 1'b1;
assign grp_fu_16168_p_din0 = grp_fu_427_p0;
assign grp_fu_16168_p_din1 = grp_fu_427_p1;
assign grp_fu_16172_p_ce = 1'b1;
assign grp_fu_16172_p_din0 = grp_fu_431_p0;
assign grp_fu_16172_p_din1 = grp_fu_431_p1;
assign icmp_ln170_fu_467_p2 = ((ap_sig_allocacmp_v116_5 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln_fu_517_p3 = {{tmp_s_fu_507_p4}, {1'd1}};
assign select_ln175_fu_575_p3 = ((empty[0:0] == 1'b1) ? v227_1_q1 : v227_0_q1);
assign select_ln182_fu_582_p3 = ((empty[0:0] == 1'b1) ? v227_1_q0 : v227_0_q0);
assign tmp_s_fu_507_p4 = {{ap_sig_allocacmp_v116_5[7:1]}};
assign v117_fu_608_p1 = v225_0_load_reg_1129;
assign v118_fu_611_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_608_p1);
assign v121_fu_589_p1 = select_ln175_reg_1134;
assign v124_fu_619_p1 = v225_0_load_1_reg_1139;
assign v125_fu_622_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_619_p1);
assign v127_fu_594_p1 = select_ln182_reg_1144;
assign v130_fu_630_p1 = v225_1_load_reg_1149;
assign v131_fu_633_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_630_p1);
assign v136_fu_666_p1 = v225_1_load_1_reg_1154;
assign v137_fu_669_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_666_p1);
assign v141_fu_677_p1 = v225_2_load_reg_1159;
assign v142_fu_680_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_677_p1);
assign v147_fu_688_p1 = v225_2_load_1_reg_1164;
assign v148_fu_691_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_688_p1);
assign v152_fu_707_p1 = v225_3_load_reg_1278;
assign v153_fu_710_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_707_p1);
assign v158_fu_718_p1 = v225_3_load_1_reg_1288;
assign v159_fu_721_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_718_p1);
assign v163_fu_729_p1 = v225_0_load_2_reg_1183;
assign v164_fu_732_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_729_p1);
assign v169_fu_740_p1 = v225_0_q0;
assign v170_fu_744_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_740_p1);
assign v174_fu_751_p1 = v225_1_q1;
assign v175_fu_755_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_751_p1);
assign v180_fu_762_p1 = v225_1_q0;
assign v181_fu_766_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_762_p1);
assign v185_fu_773_p1 = v225_2_q1;
assign v186_fu_777_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_773_p1);
assign v191_fu_784_p1 = v225_2_q0;
assign v192_fu_788_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_784_p1);
assign v196_fu_795_p1 = v225_3_q1;
assign v197_fu_799_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_795_p1);
assign v202_fu_806_p1 = v225_3_q0;
assign v203_fu_810_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_806_p1);
assign v207_fu_817_p1 = v225_0_q1;
assign v208_fu_821_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_817_p1);
assign v213_fu_828_p1 = v225_0_q0;
assign v214_fu_832_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_828_p1);
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
assign v227_0_address0 = zext_ln182_17_fu_539_p1;
assign v227_0_address1 = zext_ln175_17_fu_487_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_17_fu_539_p1;
assign v227_1_address1 = zext_ln175_17_fu_487_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign zext_ln171_fu_499_p1 = add_ln171_fu_493_p2;
assign zext_ln175_15_fu_473_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln175_16_fu_477_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln175_17_fu_487_p1 = add_ln175_fu_481_p2;
assign zext_ln175_fu_559_p1 = v116_5_reg_1027;
assign zext_ln179_fu_551_p1 = add_ln179_fu_545_p2;
assign zext_ln182_15_fu_525_p1 = or_ln_fu_517_p3;
assign zext_ln182_16_fu_529_p1 = or_ln_fu_517_p3;
assign zext_ln182_17_fu_539_p1 = add_ln182_fu_533_p2;
assign zext_ln182_fu_645_p1 = or_ln_reg_1068_pp0_iter1_reg;
assign zext_ln225_fu_567_p1 = add_ln225_fu_562_p2;
assign zext_ln232_fu_653_p1 = add_ln232_fu_648_p2;
assign zext_ln277_fu_699_p1 = add_ln277_reg_1233;
assign zext_ln284_fu_703_p1 = add_ln284_reg_1243;
always @ (posedge ap_clk) begin
    v225_0_addr_1_reg_1047[13] <= 1'b0;
    v225_0_addr_1_reg_1047_pp0_iter1_reg[13] <= 1'b0;
    v225_0_addr_1_reg_1047_pp0_iter2_reg[13] <= 1'b0;
    v225_1_addr_1_reg_1052[13] <= 1'b0;
    v225_1_addr_1_reg_1052_pp0_iter1_reg[13] <= 1'b0;
    v225_1_addr_1_reg_1052_pp0_iter2_reg[13] <= 1'b0;
    v225_2_addr_1_reg_1057[13] <= 1'b0;
    v225_2_addr_1_reg_1057_pp0_iter1_reg[13] <= 1'b0;
    v225_2_addr_1_reg_1057_pp0_iter2_reg[13] <= 1'b0;
    v225_3_addr_1_reg_1062[13] <= 1'b0;
    v225_3_addr_1_reg_1062_pp0_iter1_reg[13] <= 1'b0;
    v225_3_addr_1_reg_1062_pp0_iter2_reg[13] <= 1'b0;
    or_ln_reg_1068[0] <= 1'b1;
    or_ln_reg_1068_pp0_iter1_reg[0] <= 1'b1;
    v225_0_addr_2_reg_1083[13] <= 1'b0;
    v225_0_addr_2_reg_1083_pp0_iter1_reg[13] <= 1'b0;
    v225_0_addr_2_reg_1083_pp0_iter2_reg[13] <= 1'b0;
    v225_1_addr_2_reg_1088[13] <= 1'b0;
    v225_1_addr_2_reg_1088_pp0_iter1_reg[13] <= 1'b0;
    v225_1_addr_2_reg_1088_pp0_iter2_reg[13] <= 1'b0;
    v225_2_addr_2_reg_1093[13] <= 1'b0;
    v225_2_addr_2_reg_1093_pp0_iter1_reg[13] <= 1'b0;
    v225_2_addr_2_reg_1093_pp0_iter2_reg[13] <= 1'b0;
    v225_3_addr_2_reg_1098[13] <= 1'b0;
    v225_3_addr_2_reg_1098_pp0_iter1_reg[13] <= 1'b0;
    v225_3_addr_2_reg_1098_pp0_iter2_reg[13] <= 1'b0;
    zext_ln175_reg_1104[13:8] <= 6'b000000;
end
endmodule 