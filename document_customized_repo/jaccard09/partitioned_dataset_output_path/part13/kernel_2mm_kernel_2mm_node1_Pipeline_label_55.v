
module kernel_2mm_kernel_2mm_node1_Pipeline_label_55 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,mul_ln186,mul_ln238,mul_ln251,cmp11,empty,v120_3,v133_3,v144_3,v155_3,v166_3,v177_3,v188_3,v199_3,v210_3,grp_fu_8284_p_din0,grp_fu_8284_p_din1,grp_fu_8284_p_opcode,grp_fu_8284_p_dout0,grp_fu_8284_p_ce,grp_fu_8288_p_din0,grp_fu_8288_p_din1,grp_fu_8288_p_opcode,grp_fu_8288_p_dout0,grp_fu_8288_p_ce,grp_fu_8292_p_din0,grp_fu_8292_p_din1,grp_fu_8292_p_opcode,grp_fu_8292_p_dout0,grp_fu_8292_p_ce,grp_fu_8296_p_din0,grp_fu_8296_p_din1,grp_fu_8296_p_dout0,grp_fu_8296_p_ce,grp_fu_8300_p_din0,grp_fu_8300_p_din1,grp_fu_8300_p_dout0,grp_fu_8300_p_ce,grp_fu_8304_p_din0,grp_fu_8304_p_din1,grp_fu_8304_p_dout0,grp_fu_8304_p_ce);  
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
input  [13:0] mul_ln186;
input  [13:0] mul_ln238;
input  [13:0] mul_ln251;
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
output  [31:0] grp_fu_8284_p_din0;
output  [31:0] grp_fu_8284_p_din1;
output  [1:0] grp_fu_8284_p_opcode;
input  [31:0] grp_fu_8284_p_dout0;
output   grp_fu_8284_p_ce;
output  [31:0] grp_fu_8288_p_din0;
output  [31:0] grp_fu_8288_p_din1;
output  [1:0] grp_fu_8288_p_opcode;
input  [31:0] grp_fu_8288_p_dout0;
output   grp_fu_8288_p_ce;
output  [31:0] grp_fu_8292_p_din0;
output  [31:0] grp_fu_8292_p_din1;
output  [1:0] grp_fu_8292_p_opcode;
input  [31:0] grp_fu_8292_p_dout0;
output   grp_fu_8292_p_ce;
output  [31:0] grp_fu_8296_p_din0;
output  [31:0] grp_fu_8296_p_din1;
input  [31:0] grp_fu_8296_p_dout0;
output   grp_fu_8296_p_ce;
output  [31:0] grp_fu_8300_p_din0;
output  [31:0] grp_fu_8300_p_din1;
input  [31:0] grp_fu_8300_p_dout0;
output   grp_fu_8300_p_ce;
output  [31:0] grp_fu_8304_p_din0;
output  [31:0] grp_fu_8304_p_din1;
input  [31:0] grp_fu_8304_p_dout0;
output   grp_fu_8304_p_ce;
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
reg   [0:0] icmp_ln170_reg_1133;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_498;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_502;
reg   [31:0] reg_506;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_510;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_514;
reg   [31:0] reg_518;
reg   [7:0] v116_1_reg_1128;
wire   [0:0] icmp_ln170_fu_530_p2;
reg   [13:0] v225_0_addr_reg_1157;
reg   [13:0] v225_0_addr_reg_1157_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_1157_pp0_iter2_reg;
wire   [13:0] add_ln238_fu_568_p2;
reg   [13:0] add_ln238_reg_1162;
reg   [13:0] add_ln238_reg_1162_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1167;
reg   [13:0] v225_1_addr_reg_1167_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1167_pp0_iter2_reg;
reg   [13:0] v225_2_addr_reg_1172;
reg   [13:0] v225_2_addr_reg_1172_pp0_iter1_reg;
reg   [13:0] v225_2_addr_reg_1172_pp0_iter2_reg;
reg   [13:0] v225_3_addr_reg_1178;
reg   [13:0] v225_3_addr_reg_1178_pp0_iter1_reg;
reg   [13:0] v225_3_addr_reg_1178_pp0_iter2_reg;
reg   [13:0] v225_3_addr_1_reg_1183;
reg   [13:0] v225_3_addr_1_reg_1183_pp0_iter1_reg;
reg   [13:0] v225_3_addr_1_reg_1183_pp0_iter2_reg;
reg   [13:0] v225_0_addr_2_reg_1208;
reg   [13:0] v225_0_addr_2_reg_1208_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1208_pp0_iter2_reg;
wire   [13:0] add_ln245_fu_635_p2;
reg   [13:0] add_ln245_reg_1213;
reg   [13:0] add_ln245_reg_1213_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1218;
reg   [13:0] v225_1_addr_2_reg_1218_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1218_pp0_iter2_reg;
reg   [13:0] v225_2_addr_2_reg_1223;
reg   [13:0] v225_2_addr_2_reg_1223_pp0_iter1_reg;
reg   [13:0] v225_2_addr_2_reg_1223_pp0_iter2_reg;
reg   [13:0] v225_3_addr_3_reg_1229;
reg   [13:0] v225_3_addr_3_reg_1229_pp0_iter1_reg;
reg   [13:0] v225_3_addr_3_reg_1229_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1234;
reg   [13:0] v225_3_addr_4_reg_1234_pp0_iter1_reg;
reg   [13:0] v225_3_addr_4_reg_1234_pp0_iter2_reg;
reg   [31:0] v225_3_load_reg_1239;
wire   [31:0] v121_fu_668_p11;
reg   [31:0] v121_reg_1244;
wire   [31:0] v125_fu_695_p3;
reg   [31:0] v125_reg_1251;
wire   [31:0] v127_fu_718_p11;
reg   [31:0] v127_reg_1256;
wire   [31:0] v131_fu_745_p3;
reg   [31:0] v131_reg_1263;
wire   [31:0] v137_fu_756_p3;
reg   [31:0] v137_reg_1268;
wire   [31:0] v142_fu_767_p3;
reg   [31:0] v142_reg_1273;
wire   [31:0] v148_fu_778_p3;
reg   [31:0] v148_reg_1278;
wire   [31:0] v164_fu_789_p3;
reg   [31:0] v164_reg_1283;
reg   [31:0] v122_reg_1288;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1293;
reg   [31:0] v134_reg_1298;
wire   [31:0] v118_fu_809_p3;
reg   [31:0] v139_reg_1308;
reg   [31:0] v145_reg_1313;
reg   [31:0] v150_reg_1318;
reg   [13:0] v225_0_addr_1_reg_1323;
reg   [13:0] v225_0_addr_1_reg_1323_pp0_iter2_reg;
reg   [13:0] v225_1_addr_1_reg_1328;
reg   [13:0] v225_1_addr_1_reg_1328_pp0_iter2_reg;
reg   [13:0] v225_2_addr_1_reg_1333;
reg   [13:0] v225_2_addr_1_reg_1333_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1338;
reg   [13:0] v225_3_addr_2_reg_1338_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1338_pp0_iter3_reg;
reg   [13:0] v225_0_addr_3_reg_1343;
reg   [13:0] v225_0_addr_3_reg_1343_pp0_iter2_reg;
reg   [13:0] v225_1_addr_3_reg_1348;
reg   [13:0] v225_1_addr_3_reg_1348_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1353;
reg   [13:0] v225_2_addr_3_reg_1353_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1353_pp0_iter3_reg;
reg   [13:0] v225_3_addr_5_reg_1358;
reg   [13:0] v225_3_addr_5_reg_1358_pp0_iter2_reg;
reg   [13:0] v225_3_addr_5_reg_1358_pp0_iter3_reg;
wire   [31:0] v153_fu_835_p3;
reg   [31:0] v153_reg_1363;
reg   [31:0] v156_reg_1368;
wire   [31:0] v159_fu_846_p3;
reg   [31:0] v159_reg_1373;
reg   [31:0] v161_reg_1378;
reg   [31:0] v167_reg_1383;
wire   [31:0] v170_fu_857_p3;
reg   [31:0] v170_reg_1388;
reg   [31:0] v172_reg_1393;
wire   [31:0] v175_fu_868_p3;
reg   [31:0] v175_reg_1398;
reg   [31:0] v178_reg_1403;
wire   [31:0] v181_fu_879_p3;
reg   [31:0] v181_reg_1408;
reg   [31:0] v183_reg_1413;
wire   [31:0] v186_fu_890_p3;
reg   [31:0] v186_reg_1418;
wire   [31:0] v192_fu_901_p3;
reg   [31:0] v192_reg_1423;
wire   [31:0] v197_fu_912_p3;
reg   [31:0] v197_reg_1428;
wire   [31:0] v203_fu_923_p3;
reg   [31:0] v203_reg_1433;
reg   [31:0] v189_reg_1438;
reg   [31:0] v194_reg_1443;
reg   [31:0] v200_reg_1448;
wire   [31:0] v208_fu_934_p3;
reg   [31:0] v208_reg_1453;
wire   [31:0] v214_fu_945_p3;
reg   [31:0] v214_reg_1458;
reg   [31:0] v205_reg_1463;
reg   [31:0] v211_reg_1468;
reg   [31:0] v216_reg_1473;
reg   [31:0] v206_reg_1478;
reg   [31:0] v212_reg_1483;
reg   [31:0] v217_reg_1488;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_1_fu_546_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln186_fu_560_p1;
wire   [63:0] zext_ln171_fu_580_p1;
wire   [63:0] zext_ln182_1_fu_613_p1;
wire   [63:0] zext_ln193_fu_627_p1;
wire   [63:0] zext_ln179_fu_647_p1;
wire   [63:0] zext_ln238_fu_817_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln245_fu_824_p1;
reg   [7:0] v116_fu_106;
wire   [7:0] add_ln170_fu_796_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln178_fu_972_p1;
wire    ap_block_pp0_stage3;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln185_fu_977_p1;
wire   [31:0] bitcast_ln231_fu_992_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_997_p1;
wire   [31:0] bitcast_ln283_fu_1031_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_1035_p1;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln192_fu_952_p1;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln198_fu_957_p1;
wire   [31:0] bitcast_ln244_fu_1002_p1;
wire   [31:0] bitcast_ln250_fu_1007_p1;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln205_fu_962_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln211_fu_967_p1;
wire   [31:0] bitcast_ln257_fu_1012_p1;
wire   [31:0] bitcast_ln263_fu_1017_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln218_fu_982_p1;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln224_fu_987_p1;
wire   [31:0] bitcast_ln270_fu_1022_p1;
wire   [31:0] bitcast_ln276_fu_1027_p1;
reg   [31:0] grp_fu_474_p0;
reg   [31:0] grp_fu_474_p1;
reg   [31:0] grp_fu_478_p0;
reg   [31:0] grp_fu_478_p1;
reg   [31:0] grp_fu_482_p0;
reg   [31:0] grp_fu_482_p1;
reg   [31:0] grp_fu_486_p0;
reg   [31:0] grp_fu_486_p1;
reg   [31:0] grp_fu_490_p0;
reg   [31:0] grp_fu_490_p1;
reg   [31:0] grp_fu_494_p0;
reg   [31:0] grp_fu_494_p1;
wire   [13:0] zext_ln175_fu_536_p1;
wire   [13:0] add_ln175_fu_540_p2;
wire   [13:0] add_ln186_fu_554_p2;
wire   [13:0] add_ln171_fu_574_p2;
wire   [6:0] tmp_s_fu_585_p4;
wire   [7:0] or_ln179_3_fu_595_p3;
wire   [13:0] zext_ln182_fu_603_p1;
wire   [13:0] add_ln182_fu_607_p2;
wire   [13:0] add_ln193_fu_621_p2;
wire   [13:0] add_ln179_fu_641_p2;
wire   [31:0] v121_fu_668_p2;
wire   [31:0] v121_fu_668_p4;
wire   [31:0] v121_fu_668_p6;
wire   [31:0] v121_fu_668_p8;
wire   [31:0] v121_fu_668_p9;
wire   [31:0] v124_fu_691_p1;
wire   [31:0] v127_fu_718_p2;
wire   [31:0] v127_fu_718_p4;
wire   [31:0] v127_fu_718_p6;
wire   [31:0] v127_fu_718_p8;
wire   [31:0] v127_fu_718_p9;
wire   [31:0] v130_fu_741_p1;
wire   [31:0] v136_fu_752_p1;
wire   [31:0] v141_fu_763_p1;
wire   [31:0] v147_fu_774_p1;
wire   [31:0] v163_fu_785_p1;
wire   [31:0] v117_fu_806_p1;
wire   [31:0] v152_fu_831_p1;
wire   [31:0] v158_fu_842_p1;
wire   [31:0] v169_fu_853_p1;
wire   [31:0] v174_fu_864_p1;
wire   [31:0] v180_fu_875_p1;
wire   [31:0] v185_fu_886_p1;
wire   [31:0] v191_fu_897_p1;
wire   [31:0] v196_fu_908_p1;
wire   [31:0] v202_fu_919_p1;
wire   [31:0] v207_fu_930_p1;
wire   [31:0] v213_fu_941_p1;
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
wire   [1:0] v121_fu_668_p1;
wire   [1:0] v121_fu_668_p3;
wire  signed [1:0] v121_fu_668_p5;
wire  signed [1:0] v121_fu_668_p7;
wire   [1:0] v127_fu_718_p1;
wire   [1:0] v127_fu_718_p3;
wire  signed [1:0] v127_fu_718_p5;
wire  signed [1:0] v127_fu_718_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_fu_106 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U101(.din0(v121_fu_668_p2),.din1(v121_fu_668_p4),.din2(v121_fu_668_p6),.din3(v121_fu_668_p8),.def(v121_fu_668_p9),.sel(empty),.dout(v121_fu_668_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U102(.din0(v127_fu_718_p2),.din1(v127_fu_718_p4),.din2(v127_fu_718_p6),.din3(v127_fu_718_p8),.def(v127_fu_718_p9),.sel(empty),.dout(v127_fu_718_p11));
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
        v116_fu_106 <= 8'd0;
    end else if (((icmp_ln170_reg_1133 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_106 <= add_ln170_fu_796_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln238_reg_1162 <= add_ln238_fu_568_p2;
        add_ln238_reg_1162_pp0_iter1_reg <= add_ln238_reg_1162;
        add_ln245_reg_1213 <= add_ln245_fu_635_p2;
        add_ln245_reg_1213_pp0_iter1_reg <= add_ln245_reg_1213;
        icmp_ln170_reg_1133 <= icmp_ln170_fu_530_p2;
        v116_1_reg_1128 <= ap_sig_allocacmp_v116_1;
        v225_0_addr_2_reg_1208 <= zext_ln193_fu_627_p1;
        v225_0_addr_2_reg_1208_pp0_iter1_reg <= v225_0_addr_2_reg_1208;
        v225_0_addr_2_reg_1208_pp0_iter2_reg <= v225_0_addr_2_reg_1208_pp0_iter1_reg;
        v225_0_addr_reg_1157 <= zext_ln186_fu_560_p1;
        v225_0_addr_reg_1157_pp0_iter1_reg <= v225_0_addr_reg_1157;
        v225_0_addr_reg_1157_pp0_iter2_reg <= v225_0_addr_reg_1157_pp0_iter1_reg;
        v225_1_addr_2_reg_1218 <= zext_ln193_fu_627_p1;
        v225_1_addr_2_reg_1218_pp0_iter1_reg <= v225_1_addr_2_reg_1218;
        v225_1_addr_2_reg_1218_pp0_iter2_reg <= v225_1_addr_2_reg_1218_pp0_iter1_reg;
        v225_1_addr_reg_1167 <= zext_ln186_fu_560_p1;
        v225_1_addr_reg_1167_pp0_iter1_reg <= v225_1_addr_reg_1167;
        v225_1_addr_reg_1167_pp0_iter2_reg <= v225_1_addr_reg_1167_pp0_iter1_reg;
        v225_2_addr_2_reg_1223 <= zext_ln193_fu_627_p1;
        v225_2_addr_2_reg_1223_pp0_iter1_reg <= v225_2_addr_2_reg_1223;
        v225_2_addr_2_reg_1223_pp0_iter2_reg <= v225_2_addr_2_reg_1223_pp0_iter1_reg;
        v225_2_addr_reg_1172 <= zext_ln186_fu_560_p1;
        v225_2_addr_reg_1172_pp0_iter1_reg <= v225_2_addr_reg_1172;
        v225_2_addr_reg_1172_pp0_iter2_reg <= v225_2_addr_reg_1172_pp0_iter1_reg;
        v225_3_addr_1_reg_1183 <= zext_ln186_fu_560_p1;
        v225_3_addr_1_reg_1183_pp0_iter1_reg <= v225_3_addr_1_reg_1183;
        v225_3_addr_1_reg_1183_pp0_iter2_reg <= v225_3_addr_1_reg_1183_pp0_iter1_reg;
        v225_3_addr_3_reg_1229 <= zext_ln179_fu_647_p1;
        v225_3_addr_3_reg_1229_pp0_iter1_reg <= v225_3_addr_3_reg_1229;
        v225_3_addr_3_reg_1229_pp0_iter2_reg <= v225_3_addr_3_reg_1229_pp0_iter1_reg;
        v225_3_addr_4_reg_1234 <= zext_ln193_fu_627_p1;
        v225_3_addr_4_reg_1234_pp0_iter1_reg <= v225_3_addr_4_reg_1234;
        v225_3_addr_4_reg_1234_pp0_iter2_reg <= v225_3_addr_4_reg_1234_pp0_iter1_reg;
        v225_3_addr_reg_1178 <= zext_ln171_fu_580_p1;
        v225_3_addr_reg_1178_pp0_iter1_reg <= v225_3_addr_reg_1178;
        v225_3_addr_reg_1178_pp0_iter2_reg <= v225_3_addr_reg_1178_pp0_iter1_reg;
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
        reg_498 <= grp_fu_8284_p_dout0;
        reg_502 <= grp_fu_8288_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_506 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_510 <= grp_fu_8284_p_dout0;
        reg_514 <= grp_fu_8288_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_518 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v121_reg_1244 <= v121_fu_668_p11;
        v125_reg_1251 <= v125_fu_695_p3;
        v127_reg_1256 <= v127_fu_718_p11;
        v131_reg_1263 <= v131_fu_745_p3;
        v137_reg_1268 <= v137_fu_756_p3;
        v142_reg_1273 <= v142_fu_767_p3;
        v148_reg_1278 <= v148_fu_778_p3;
        v153_reg_1363 <= v153_fu_835_p3;
        v159_reg_1373 <= v159_fu_846_p3;
        v225_0_addr_1_reg_1323 <= zext_ln238_fu_817_p1;
        v225_0_addr_1_reg_1323_pp0_iter2_reg <= v225_0_addr_1_reg_1323;
        v225_0_addr_3_reg_1343 <= zext_ln245_fu_824_p1;
        v225_0_addr_3_reg_1343_pp0_iter2_reg <= v225_0_addr_3_reg_1343;
        v225_1_addr_1_reg_1328 <= zext_ln238_fu_817_p1;
        v225_1_addr_1_reg_1328_pp0_iter2_reg <= v225_1_addr_1_reg_1328;
        v225_1_addr_3_reg_1348 <= zext_ln245_fu_824_p1;
        v225_1_addr_3_reg_1348_pp0_iter2_reg <= v225_1_addr_3_reg_1348;
        v225_2_addr_1_reg_1333 <= zext_ln238_fu_817_p1;
        v225_2_addr_1_reg_1333_pp0_iter2_reg <= v225_2_addr_1_reg_1333;
        v225_2_addr_3_reg_1353 <= zext_ln245_fu_824_p1;
        v225_2_addr_3_reg_1353_pp0_iter2_reg <= v225_2_addr_3_reg_1353;
        v225_2_addr_3_reg_1353_pp0_iter3_reg <= v225_2_addr_3_reg_1353_pp0_iter2_reg;
        v225_3_addr_2_reg_1338 <= zext_ln238_fu_817_p1;
        v225_3_addr_2_reg_1338_pp0_iter2_reg <= v225_3_addr_2_reg_1338;
        v225_3_addr_2_reg_1338_pp0_iter3_reg <= v225_3_addr_2_reg_1338_pp0_iter2_reg;
        v225_3_addr_5_reg_1358 <= zext_ln245_fu_824_p1;
        v225_3_addr_5_reg_1358_pp0_iter2_reg <= v225_3_addr_5_reg_1358;
        v225_3_addr_5_reg_1358_pp0_iter3_reg <= v225_3_addr_5_reg_1358_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1288 <= grp_fu_8296_p_dout0;
        v128_reg_1293 <= grp_fu_8300_p_dout0;
        v134_reg_1298 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1308 <= grp_fu_8296_p_dout0;
        v145_reg_1313 <= grp_fu_8300_p_dout0;
        v150_reg_1318 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1368 <= grp_fu_8296_p_dout0;
        v161_reg_1378 <= grp_fu_8300_p_dout0;
        v167_reg_1383 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v164_reg_1283 <= v164_fu_789_p3;
        v170_reg_1388 <= v170_fu_857_p3;
        v175_reg_1398 <= v175_fu_868_p3;
        v181_reg_1408 <= v181_fu_879_p3;
        v186_reg_1418 <= v186_fu_890_p3;
        v192_reg_1423 <= v192_fu_901_p3;
        v197_reg_1428 <= v197_fu_912_p3;
        v203_reg_1433 <= v203_fu_923_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1393 <= grp_fu_8296_p_dout0;
        v178_reg_1403 <= grp_fu_8300_p_dout0;
        v183_reg_1413 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1438 <= grp_fu_8296_p_dout0;
        v194_reg_1443 <= grp_fu_8300_p_dout0;
        v200_reg_1448 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1463 <= grp_fu_8296_p_dout0;
        v211_reg_1468 <= grp_fu_8300_p_dout0;
        v216_reg_1473 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1478 <= grp_fu_8284_p_dout0;
        v212_reg_1483 <= grp_fu_8288_p_dout0;
        v217_reg_1488 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1453 <= v208_fu_934_p3;
        v214_reg_1458 <= v214_fu_945_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_load_reg_1239 <= v225_3_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116_1 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_1 = v116_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_474_p0 = v203_reg_1433;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_474_p0 = v186_reg_1418;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_474_p0 = v170_reg_1388;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_474_p0 = v153_reg_1363;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_474_p0 = v137_reg_1268;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_474_p0 = v118_fu_809_p3;
        end else begin
            grp_fu_474_p0 = 'bx;
        end
    end else begin
        grp_fu_474_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_474_p1 = v205_reg_1463;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_474_p1 = v189_reg_1438;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_474_p1 = v172_reg_1393;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_474_p1 = v156_reg_1368;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_474_p1 = v139_reg_1308;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_474_p1 = v122_reg_1288;
        end else begin
            grp_fu_474_p1 = 'bx;
        end
    end else begin
        grp_fu_474_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_478_p0 = v208_reg_1453;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_478_p0 = v192_reg_1423;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_478_p0 = v175_reg_1398;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_478_p0 = v159_reg_1373;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_478_p0 = v142_reg_1273;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_478_p0 = v125_reg_1251;
        end else begin
            grp_fu_478_p0 = 'bx;
        end
    end else begin
        grp_fu_478_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_478_p1 = v211_reg_1468;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_478_p1 = v194_reg_1443;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_478_p1 = v178_reg_1403;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_478_p1 = v161_reg_1378;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_478_p1 = v145_reg_1313;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_478_p1 = v128_reg_1293;
        end else begin
            grp_fu_478_p1 = 'bx;
        end
    end else begin
        grp_fu_478_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_482_p0 = v214_reg_1458;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_482_p0 = v197_reg_1428;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_482_p0 = v181_reg_1408;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_482_p0 = v164_reg_1283;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_482_p0 = v148_reg_1278;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_482_p0 = v131_reg_1263;
        end else begin
            grp_fu_482_p0 = 'bx;
        end
    end else begin
        grp_fu_482_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_482_p1 = v216_reg_1473;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_482_p1 = v200_reg_1448;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_482_p1 = v183_reg_1413;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_482_p1 = v167_reg_1383;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_482_p1 = v150_reg_1318;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_482_p1 = v134_reg_1298;
        end else begin
            grp_fu_482_p1 = 'bx;
        end
    end else begin
        grp_fu_482_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_486_p0 = v199_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_486_p0 = v188_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_486_p0 = v166_3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_486_p0 = v155_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_486_p0 = v133_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_486_p0 = v120_3;
    end else begin
        grp_fu_486_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_486_p1 = v127_reg_1256;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_486_p1 = v121_reg_1244;
    end else begin
        grp_fu_486_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_490_p0 = v210_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_490_p0 = v188_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_490_p0 = v177_3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_490_p0 = v155_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_490_p0 = v144_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_490_p0 = v120_3;
    end else begin
        grp_fu_490_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_490_p1 = v121_reg_1244;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_490_p1 = v127_reg_1256;
    end else begin
        grp_fu_490_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_494_p0 = v210_3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_494_p0 = v199_3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_494_p0 = v177_3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_494_p0 = v166_3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_494_p0 = v144_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_494_p0 = v133_3;
    end else begin
        grp_fu_494_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_494_p1 = v127_reg_1256;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_494_p1 = v121_reg_1244;
    end else begin
        grp_fu_494_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_3_reg_1343_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1208_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln245_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln193_fu_627_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1323_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_reg_1157_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln238_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln186_fu_560_p1;
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
            v225_0_d0_local = bitcast_ln250_fu_1007_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d0_local = bitcast_ln198_fu_957_p1;
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
            v225_0_d1_local = bitcast_ln244_fu_1002_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d1_local = bitcast_ln192_fu_952_p1;
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
        v225_1_address0_local = v225_1_addr_3_reg_1348_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1218_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln245_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln193_fu_627_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1328_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_reg_1167_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln238_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln186_fu_560_p1;
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
            v225_1_d0_local = bitcast_ln263_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln211_fu_967_p1;
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
            v225_1_d1_local = bitcast_ln257_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln205_fu_962_p1;
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
        v225_2_address0_local = v225_2_addr_3_reg_1353_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address0_local = v225_2_addr_reg_1172_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln245_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1223;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_1_reg_1333_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_2_reg_1223_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = zext_ln238_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = v225_2_addr_reg_1172;
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
        v225_2_d0_local = bitcast_ln276_fu_1027_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_d0_local = bitcast_ln218_fu_982_p1;
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d1_local = bitcast_ln270_fu_1022_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_2_d1_local = bitcast_ln224_fu_987_p1;
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
        v225_3_address0_local = v225_3_addr_5_reg_1358_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address0_local = v225_3_addr_4_reg_1234_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_3_reg_1229_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_5_reg_1358;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_4_reg_1234_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_647_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1338_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1183_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_reg_1178_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1338;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1183;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_580_p1;
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
        v225_3_d0_local = bitcast_ln289_fu_1035_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d0_local = bitcast_ln237_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln185_fu_977_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_d1_local = bitcast_ln283_fu_1031_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d1_local = bitcast_ln231_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d1_local = bitcast_ln178_fu_972_p1;
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
assign add_ln170_fu_796_p2 = (v116_1_reg_1128 + 8'd2);
assign add_ln171_fu_574_p2 = (mul_ln251 + zext_ln175_fu_536_p1);
assign add_ln175_fu_540_p2 = (mul_ln175 + zext_ln175_fu_536_p1);
assign add_ln179_fu_641_p2 = (mul_ln251 + zext_ln182_fu_603_p1);
assign add_ln182_fu_607_p2 = (mul_ln175 + zext_ln182_fu_603_p1);
assign add_ln186_fu_554_p2 = (mul_ln186 + zext_ln175_fu_536_p1);
assign add_ln193_fu_621_p2 = (mul_ln186 + zext_ln182_fu_603_p1);
assign add_ln238_fu_568_p2 = (mul_ln238 + zext_ln175_fu_536_p1);
assign add_ln245_fu_635_p2 = (mul_ln238 + zext_ln182_fu_603_p1);
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
assign bitcast_ln178_fu_972_p1 = reg_498;
assign bitcast_ln185_fu_977_p1 = reg_502;
assign bitcast_ln192_fu_952_p1 = reg_506;
assign bitcast_ln198_fu_957_p1 = reg_510;
assign bitcast_ln205_fu_962_p1 = reg_514;
assign bitcast_ln211_fu_967_p1 = reg_518;
assign bitcast_ln218_fu_982_p1 = reg_510;
assign bitcast_ln224_fu_987_p1 = reg_514;
assign bitcast_ln231_fu_992_p1 = reg_506;
assign bitcast_ln237_fu_997_p1 = reg_498;
assign bitcast_ln244_fu_1002_p1 = reg_502;
assign bitcast_ln250_fu_1007_p1 = reg_518;
assign bitcast_ln257_fu_1012_p1 = reg_498;
assign bitcast_ln263_fu_1017_p1 = reg_502;
assign bitcast_ln270_fu_1022_p1 = reg_506;
assign bitcast_ln276_fu_1027_p1 = v206_reg_1478;
assign bitcast_ln283_fu_1031_p1 = v212_reg_1483;
assign bitcast_ln289_fu_1035_p1 = v217_reg_1488;
assign grp_fu_8284_p_ce = 1'b1;
assign grp_fu_8284_p_din0 = grp_fu_474_p0;
assign grp_fu_8284_p_din1 = grp_fu_474_p1;
assign grp_fu_8284_p_opcode = 2'd0;
assign grp_fu_8288_p_ce = 1'b1;
assign grp_fu_8288_p_din0 = grp_fu_478_p0;
assign grp_fu_8288_p_din1 = grp_fu_478_p1;
assign grp_fu_8288_p_opcode = 2'd0;
assign grp_fu_8292_p_ce = 1'b1;
assign grp_fu_8292_p_din0 = grp_fu_482_p0;
assign grp_fu_8292_p_din1 = grp_fu_482_p1;
assign grp_fu_8292_p_opcode = 2'd0;
assign grp_fu_8296_p_ce = 1'b1;
assign grp_fu_8296_p_din0 = grp_fu_486_p0;
assign grp_fu_8296_p_din1 = grp_fu_486_p1;
assign grp_fu_8300_p_ce = 1'b1;
assign grp_fu_8300_p_din0 = grp_fu_490_p0;
assign grp_fu_8300_p_din1 = grp_fu_490_p1;
assign grp_fu_8304_p_ce = 1'b1;
assign grp_fu_8304_p_din0 = grp_fu_494_p0;
assign grp_fu_8304_p_din1 = grp_fu_494_p1;
assign icmp_ln170_fu_530_p2 = ((ap_sig_allocacmp_v116_1 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_3_fu_595_p3 = {{tmp_s_fu_585_p4}, {1'd1}};
assign tmp_s_fu_585_p4 = {{ap_sig_allocacmp_v116_1[7:1]}};
assign v117_fu_806_p1 = v225_3_load_reg_1239;
assign v118_fu_809_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_806_p1);
assign v121_fu_668_p2 = v227_0_q1;
assign v121_fu_668_p4 = v227_1_q1;
assign v121_fu_668_p6 = v227_2_q1;
assign v121_fu_668_p8 = v227_3_q1;
assign v121_fu_668_p9 = 'bx;
assign v124_fu_691_p1 = v225_3_q0;
assign v125_fu_695_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_691_p1);
assign v127_fu_718_p2 = v227_0_q0;
assign v127_fu_718_p4 = v227_1_q0;
assign v127_fu_718_p6 = v227_2_q0;
assign v127_fu_718_p8 = v227_3_q0;
assign v127_fu_718_p9 = 'bx;
assign v130_fu_741_p1 = v225_0_q1;
assign v131_fu_745_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_741_p1);
assign v136_fu_752_p1 = v225_0_q0;
assign v137_fu_756_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_752_p1);
assign v141_fu_763_p1 = v225_1_q1;
assign v142_fu_767_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_763_p1);
assign v147_fu_774_p1 = v225_1_q0;
assign v148_fu_778_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_774_p1);
assign v152_fu_831_p1 = v225_2_q1;
assign v153_fu_835_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_831_p1);
assign v158_fu_842_p1 = v225_2_q0;
assign v159_fu_846_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_842_p1);
assign v163_fu_785_p1 = v225_3_q1;
assign v164_fu_789_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_785_p1);
assign v169_fu_853_p1 = v225_3_q0;
assign v170_fu_857_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_853_p1);
assign v174_fu_864_p1 = v225_0_q1;
assign v175_fu_868_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_864_p1);
assign v180_fu_875_p1 = v225_0_q0;
assign v181_fu_879_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_875_p1);
assign v185_fu_886_p1 = v225_1_q1;
assign v186_fu_890_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_886_p1);
assign v191_fu_897_p1 = v225_1_q0;
assign v192_fu_901_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_897_p1);
assign v196_fu_908_p1 = v225_2_q1;
assign v197_fu_912_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_908_p1);
assign v202_fu_919_p1 = v225_2_q0;
assign v203_fu_923_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_919_p1);
assign v207_fu_930_p1 = v225_3_q1;
assign v208_fu_934_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_930_p1);
assign v213_fu_941_p1 = v225_3_q0;
assign v214_fu_945_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_941_p1);
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
assign v227_0_address0 = zext_ln182_1_fu_613_p1;
assign v227_0_address1 = zext_ln175_1_fu_546_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_1_fu_613_p1;
assign v227_1_address1 = zext_ln175_1_fu_546_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_2_address0 = zext_ln182_1_fu_613_p1;
assign v227_2_address1 = zext_ln175_1_fu_546_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_3_address0 = zext_ln182_1_fu_613_p1;
assign v227_3_address1 = zext_ln175_1_fu_546_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign zext_ln171_fu_580_p1 = add_ln171_fu_574_p2;
assign zext_ln175_1_fu_546_p1 = add_ln175_fu_540_p2;
assign zext_ln175_fu_536_p1 = ap_sig_allocacmp_v116_1;
assign zext_ln179_fu_647_p1 = add_ln179_fu_641_p2;
assign zext_ln182_1_fu_613_p1 = add_ln182_fu_607_p2;
assign zext_ln182_fu_603_p1 = or_ln179_3_fu_595_p3;
assign zext_ln186_fu_560_p1 = add_ln186_fu_554_p2;
assign zext_ln193_fu_627_p1 = add_ln193_fu_621_p2;
assign zext_ln238_fu_817_p1 = add_ln238_reg_1162_pp0_iter1_reg;
assign zext_ln245_fu_824_p1 = add_ln245_reg_1213_pp0_iter1_reg;
endmodule 
