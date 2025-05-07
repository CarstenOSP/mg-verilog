module kernel_2mm_kernel_2mm_node1_Pipeline_label_53 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,mul_ln212,mul_ln264,mul_ln277,cmp11,empty,v120_1,v133_1,v144_1,v155_1,v166_1,v177_1,v188_1,v199_1,v210_1,grp_fu_8284_p_din0,grp_fu_8284_p_din1,grp_fu_8284_p_opcode,grp_fu_8284_p_dout0,grp_fu_8284_p_ce,grp_fu_8288_p_din0,grp_fu_8288_p_din1,grp_fu_8288_p_opcode,grp_fu_8288_p_dout0,grp_fu_8288_p_ce,grp_fu_8292_p_din0,grp_fu_8292_p_din1,grp_fu_8292_p_opcode,grp_fu_8292_p_dout0,grp_fu_8292_p_ce,grp_fu_8296_p_din0,grp_fu_8296_p_din1,grp_fu_8296_p_dout0,grp_fu_8296_p_ce,grp_fu_8300_p_din0,grp_fu_8300_p_din1,grp_fu_8300_p_dout0,grp_fu_8300_p_ce,grp_fu_8304_p_din0,grp_fu_8304_p_din1,grp_fu_8304_p_dout0,grp_fu_8304_p_ce); 
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
input  [13:0] mul_ln212;
input  [13:0] mul_ln264;
input  [13:0] mul_ln277;
input  [0:0] cmp11;
input  [1:0] empty;
input  [31:0] v120_1;
input  [31:0] v133_1;
input  [31:0] v144_1;
input  [31:0] v155_1;
input  [31:0] v166_1;
input  [31:0] v177_1;
input  [31:0] v188_1;
input  [31:0] v199_1;
input  [31:0] v210_1;
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
reg   [0:0] icmp_ln170_reg_1135;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_496;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_500;
reg   [31:0] reg_504;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_508;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_512;
reg   [31:0] reg_516;
reg   [7:0] v116_reg_1130;
wire   [0:0] icmp_ln170_fu_528_p2;
wire   [13:0] zext_ln175_fu_534_p1;
reg   [13:0] zext_ln175_reg_1139;
reg   [13:0] v225_1_addr_5_reg_1165;
reg   [13:0] v225_1_addr_5_reg_1165_pp0_iter1_reg;
reg   [13:0] v225_1_addr_5_reg_1165_pp0_iter2_reg;
reg   [13:0] v225_2_addr_5_reg_1170;
reg   [13:0] v225_2_addr_5_reg_1170_pp0_iter1_reg;
reg   [13:0] v225_2_addr_5_reg_1170_pp0_iter2_reg;
reg   [13:0] v225_3_addr_5_reg_1175;
reg   [13:0] v225_3_addr_5_reg_1175_pp0_iter1_reg;
reg   [13:0] v225_3_addr_5_reg_1175_pp0_iter2_reg;
wire   [13:0] zext_ln182_fu_583_p1;
reg   [13:0] zext_ln182_reg_1180;
reg   [13:0] v225_1_addr_6_reg_1206;
reg   [13:0] v225_1_addr_6_reg_1206_pp0_iter1_reg;
reg   [13:0] v225_1_addr_6_reg_1206_pp0_iter2_reg;
reg   [13:0] v225_2_addr_6_reg_1211;
reg   [13:0] v225_2_addr_6_reg_1211_pp0_iter1_reg;
reg   [13:0] v225_2_addr_6_reg_1211_pp0_iter2_reg;
reg   [13:0] v225_3_addr_6_reg_1216;
reg   [13:0] v225_3_addr_6_reg_1216_pp0_iter1_reg;
reg   [13:0] v225_3_addr_6_reg_1216_pp0_iter2_reg;
reg   [13:0] v225_0_addr_reg_1221;
reg   [13:0] v225_0_addr_reg_1221_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_1221_pp0_iter2_reg;
reg   [13:0] v225_1_addr_reg_1227;
reg   [13:0] v225_1_addr_reg_1227_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1227_pp0_iter2_reg;
reg   [13:0] v225_2_addr_7_reg_1232;
reg   [13:0] v225_2_addr_7_reg_1232_pp0_iter1_reg;
reg   [13:0] v225_2_addr_7_reg_1232_pp0_iter2_reg;
reg   [13:0] v225_3_addr_7_reg_1237;
reg   [13:0] v225_3_addr_7_reg_1237_pp0_iter1_reg;
reg   [13:0] v225_3_addr_7_reg_1237_pp0_iter2_reg;
reg   [31:0] v225_1_load_4_reg_1242;
wire   [31:0] v121_fu_642_p11;
reg   [31:0] v121_reg_1247;
wire   [31:0] v125_fu_669_p3;
reg   [31:0] v125_reg_1254;
wire   [31:0] v127_fu_692_p11;
reg   [31:0] v127_reg_1259;
wire   [31:0] v131_fu_719_p3;
reg   [31:0] v131_reg_1266;
wire   [31:0] v137_fu_730_p3;
reg   [31:0] v137_reg_1271;
wire   [31:0] v142_fu_741_p3;
reg   [31:0] v142_reg_1276;
wire   [31:0] v148_fu_752_p3;
reg   [31:0] v148_reg_1281;
wire   [31:0] v164_fu_763_p3;
reg   [31:0] v164_reg_1286;
reg   [31:0] v122_reg_1291;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1296;
reg   [31:0] v134_reg_1301;
wire   [13:0] add_ln264_fu_780_p2;
reg   [13:0] add_ln264_reg_1306;
wire   [31:0] v118_fu_787_p3;
reg   [13:0] v225_0_addr_8_reg_1316;
reg   [13:0] v225_0_addr_8_reg_1316_pp0_iter2_reg;
wire   [13:0] add_ln271_fu_807_p2;
reg   [13:0] add_ln271_reg_1322;
reg   [13:0] v225_1_addr_8_reg_1327;
reg   [13:0] v225_1_addr_8_reg_1327_pp0_iter2_reg;
reg   [13:0] v225_2_addr_8_reg_1332;
reg   [13:0] v225_2_addr_8_reg_1332_pp0_iter2_reg;
reg   [13:0] v225_3_addr_8_reg_1337;
reg   [13:0] v225_3_addr_8_reg_1337_pp0_iter2_reg;
reg   [31:0] v139_reg_1342;
reg   [31:0] v145_reg_1347;
reg   [31:0] v150_reg_1352;
reg   [13:0] v225_0_addr_7_reg_1357;
reg   [13:0] v225_0_addr_7_reg_1357_pp0_iter2_reg;
reg   [13:0] v225_1_addr_7_reg_1362;
reg   [13:0] v225_1_addr_7_reg_1362_pp0_iter2_reg;
reg   [13:0] v225_1_addr_7_reg_1362_pp0_iter3_reg;
reg   [13:0] v225_0_addr_9_reg_1367;
reg   [13:0] v225_0_addr_9_reg_1367_pp0_iter2_reg;
reg   [13:0] v225_0_addr_9_reg_1367_pp0_iter3_reg;
reg   [13:0] v225_1_addr_9_reg_1372;
reg   [13:0] v225_1_addr_9_reg_1372_pp0_iter2_reg;
reg   [13:0] v225_1_addr_9_reg_1372_pp0_iter3_reg;
wire   [31:0] v153_fu_825_p3;
reg   [31:0] v153_reg_1377;
reg   [31:0] v156_reg_1382;
wire   [31:0] v159_fu_836_p3;
reg   [31:0] v159_reg_1387;
reg   [31:0] v161_reg_1392;
reg   [31:0] v167_reg_1397;
wire   [31:0] v170_fu_847_p3;
reg   [31:0] v170_reg_1402;
reg   [31:0] v172_reg_1407;
wire   [31:0] v175_fu_858_p3;
reg   [31:0] v175_reg_1412;
reg   [31:0] v178_reg_1417;
wire   [31:0] v181_fu_869_p3;
reg   [31:0] v181_reg_1422;
reg   [31:0] v183_reg_1427;
wire   [31:0] v186_fu_880_p3;
reg   [31:0] v186_reg_1432;
wire   [31:0] v192_fu_891_p3;
reg   [31:0] v192_reg_1437;
wire   [31:0] v197_fu_902_p3;
reg   [31:0] v197_reg_1442;
wire   [31:0] v203_fu_913_p3;
reg   [31:0] v203_reg_1447;
reg   [31:0] v189_reg_1452;
reg   [31:0] v194_reg_1457;
reg   [31:0] v200_reg_1462;
wire   [31:0] v208_fu_924_p3;
reg   [31:0] v208_reg_1467;
wire   [31:0] v214_fu_935_p3;
reg   [31:0] v214_reg_1472;
reg   [31:0] v205_reg_1477;
reg   [31:0] v211_reg_1482;
reg   [31:0] v216_reg_1487;
reg   [31:0] v206_reg_1492;
reg   [31:0] v212_reg_1497;
reg   [31:0] v217_reg_1502;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_3_fu_544_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_558_p1;
wire   [63:0] zext_ln182_3_fu_593_p1;
wire   [63:0] zext_ln179_fu_607_p1;
wire   [63:0] zext_ln212_fu_618_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln219_fu_799_p1;
wire   [63:0] zext_ln264_fu_811_p1;
wire   [63:0] zext_ln271_fu_816_p1;
reg   [7:0] v116_1_fu_106;
wire   [7:0] add_ln170_fu_770_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln178_fu_962_p1;
wire    ap_block_pp0_stage3;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln185_fu_967_p1;
wire   [31:0] bitcast_ln231_fu_982_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_987_p1;
wire   [31:0] bitcast_ln283_fu_1021_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_1025_p1;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln192_fu_942_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln198_fu_947_p1;
wire   [31:0] bitcast_ln244_fu_992_p1;
wire   [31:0] bitcast_ln250_fu_997_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln205_fu_952_p1;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln211_fu_957_p1;
wire   [31:0] bitcast_ln257_fu_1002_p1;
wire   [31:0] bitcast_ln263_fu_1007_p1;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln218_fu_972_p1;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln224_fu_977_p1;
wire   [31:0] bitcast_ln270_fu_1012_p1;
wire   [31:0] bitcast_ln276_fu_1017_p1;
reg   [31:0] grp_fu_472_p0;
reg   [31:0] grp_fu_472_p1;
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
wire   [13:0] add_ln175_fu_538_p2;
wire   [13:0] add_ln171_fu_552_p2;
wire   [6:0] tmp_8_fu_565_p4;
wire   [7:0] or_ln179_1_fu_575_p3;
wire   [13:0] add_ln182_fu_587_p2;
wire   [13:0] add_ln179_fu_601_p2;
wire   [13:0] add_ln212_fu_614_p2;
wire   [31:0] v121_fu_642_p2;
wire   [31:0] v121_fu_642_p4;
wire   [31:0] v121_fu_642_p6;
wire   [31:0] v121_fu_642_p8;
wire   [31:0] v121_fu_642_p9;
wire   [31:0] v124_fu_665_p1;
wire   [31:0] v127_fu_692_p2;
wire   [31:0] v127_fu_692_p4;
wire   [31:0] v127_fu_692_p6;
wire   [31:0] v127_fu_692_p8;
wire   [31:0] v127_fu_692_p9;
wire   [31:0] v130_fu_715_p1;
wire   [31:0] v136_fu_726_p1;
wire   [31:0] v141_fu_737_p1;
wire   [31:0] v147_fu_748_p1;
wire   [31:0] v163_fu_759_p1;
wire   [31:0] v117_fu_784_p1;
wire   [13:0] add_ln219_fu_795_p2;
wire   [31:0] v152_fu_821_p1;
wire   [31:0] v158_fu_832_p1;
wire   [31:0] v169_fu_843_p1;
wire   [31:0] v174_fu_854_p1;
wire   [31:0] v180_fu_865_p1;
wire   [31:0] v185_fu_876_p1;
wire   [31:0] v191_fu_887_p1;
wire   [31:0] v196_fu_898_p1;
wire   [31:0] v202_fu_909_p1;
wire   [31:0] v207_fu_920_p1;
wire   [31:0] v213_fu_931_p1;
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
wire   [1:0] v121_fu_642_p1;
wire   [1:0] v121_fu_642_p3;
wire  signed [1:0] v121_fu_642_p5;
wire  signed [1:0] v121_fu_642_p7;
wire   [1:0] v127_fu_692_p1;
wire   [1:0] v127_fu_692_p3;
wire  signed [1:0] v127_fu_692_p5;
wire  signed [1:0] v127_fu_692_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_1_fu_106 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U39(.din0(v121_fu_642_p2),.din1(v121_fu_642_p4),.din2(v121_fu_642_p6),.din3(v121_fu_642_p8),.def(v121_fu_642_p9),.sel(empty),.dout(v121_fu_642_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U40(.din0(v127_fu_692_p2),.din1(v127_fu_692_p4),.din2(v127_fu_692_p6),.din3(v127_fu_692_p8),.def(v127_fu_692_p9),.sel(empty),.dout(v127_fu_692_p11));
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
        v116_1_fu_106 <= 8'd0;
    end else if (((icmp_ln170_reg_1135 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_1_fu_106 <= add_ln170_fu_770_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln264_reg_1306 <= add_ln264_fu_780_p2;
        add_ln271_reg_1322 <= add_ln271_fu_807_p2;
        icmp_ln170_reg_1135 <= icmp_ln170_fu_528_p2;
        v116_reg_1130 <= ap_sig_allocacmp_v116;
        v225_0_addr_8_reg_1316 <= zext_ln219_fu_799_p1;
        v225_0_addr_8_reg_1316_pp0_iter2_reg <= v225_0_addr_8_reg_1316;
        v225_1_addr_5_reg_1165 <= zext_ln171_fu_558_p1;
        v225_1_addr_5_reg_1165_pp0_iter1_reg <= v225_1_addr_5_reg_1165;
        v225_1_addr_5_reg_1165_pp0_iter2_reg <= v225_1_addr_5_reg_1165_pp0_iter1_reg;
        v225_1_addr_6_reg_1206 <= zext_ln179_fu_607_p1;
        v225_1_addr_6_reg_1206_pp0_iter1_reg <= v225_1_addr_6_reg_1206;
        v225_1_addr_6_reg_1206_pp0_iter2_reg <= v225_1_addr_6_reg_1206_pp0_iter1_reg;
        v225_1_addr_8_reg_1327 <= zext_ln219_fu_799_p1;
        v225_1_addr_8_reg_1327_pp0_iter2_reg <= v225_1_addr_8_reg_1327;
        v225_2_addr_5_reg_1170 <= zext_ln171_fu_558_p1;
        v225_2_addr_5_reg_1170_pp0_iter1_reg <= v225_2_addr_5_reg_1170;
        v225_2_addr_5_reg_1170_pp0_iter2_reg <= v225_2_addr_5_reg_1170_pp0_iter1_reg;
        v225_2_addr_6_reg_1211 <= zext_ln179_fu_607_p1;
        v225_2_addr_6_reg_1211_pp0_iter1_reg <= v225_2_addr_6_reg_1211;
        v225_2_addr_6_reg_1211_pp0_iter2_reg <= v225_2_addr_6_reg_1211_pp0_iter1_reg;
        v225_2_addr_8_reg_1332 <= zext_ln219_fu_799_p1;
        v225_2_addr_8_reg_1332_pp0_iter2_reg <= v225_2_addr_8_reg_1332;
        v225_3_addr_5_reg_1175 <= zext_ln171_fu_558_p1;
        v225_3_addr_5_reg_1175_pp0_iter1_reg <= v225_3_addr_5_reg_1175;
        v225_3_addr_5_reg_1175_pp0_iter2_reg <= v225_3_addr_5_reg_1175_pp0_iter1_reg;
        v225_3_addr_6_reg_1216 <= zext_ln179_fu_607_p1;
        v225_3_addr_6_reg_1216_pp0_iter1_reg <= v225_3_addr_6_reg_1216;
        v225_3_addr_6_reg_1216_pp0_iter2_reg <= v225_3_addr_6_reg_1216_pp0_iter1_reg;
        v225_3_addr_8_reg_1337 <= zext_ln219_fu_799_p1;
        v225_3_addr_8_reg_1337_pp0_iter2_reg <= v225_3_addr_8_reg_1337;
        zext_ln175_reg_1139[7 : 0] <= zext_ln175_fu_534_p1[7 : 0];
        zext_ln182_reg_1180[7 : 1] <= zext_ln182_fu_583_p1[7 : 1];
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
        reg_496 <= grp_fu_8284_p_dout0;
        reg_500 <= grp_fu_8288_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_504 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_508 <= grp_fu_8284_p_dout0;
        reg_512 <= grp_fu_8288_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_516 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v121_reg_1247 <= v121_fu_642_p11;
        v125_reg_1254 <= v125_fu_669_p3;
        v127_reg_1259 <= v127_fu_692_p11;
        v131_reg_1266 <= v131_fu_719_p3;
        v137_reg_1271 <= v137_fu_730_p3;
        v142_reg_1276 <= v142_fu_741_p3;
        v148_reg_1281 <= v148_fu_752_p3;
        v153_reg_1377 <= v153_fu_825_p3;
        v159_reg_1387 <= v159_fu_836_p3;
        v225_0_addr_7_reg_1357 <= zext_ln264_fu_811_p1;
        v225_0_addr_7_reg_1357_pp0_iter2_reg <= v225_0_addr_7_reg_1357;
        v225_0_addr_9_reg_1367 <= zext_ln271_fu_816_p1;
        v225_0_addr_9_reg_1367_pp0_iter2_reg <= v225_0_addr_9_reg_1367;
        v225_0_addr_9_reg_1367_pp0_iter3_reg <= v225_0_addr_9_reg_1367_pp0_iter2_reg;
        v225_0_addr_reg_1221 <= zext_ln212_fu_618_p1;
        v225_0_addr_reg_1221_pp0_iter1_reg <= v225_0_addr_reg_1221;
        v225_0_addr_reg_1221_pp0_iter2_reg <= v225_0_addr_reg_1221_pp0_iter1_reg;
        v225_1_addr_7_reg_1362 <= zext_ln264_fu_811_p1;
        v225_1_addr_7_reg_1362_pp0_iter2_reg <= v225_1_addr_7_reg_1362;
        v225_1_addr_7_reg_1362_pp0_iter3_reg <= v225_1_addr_7_reg_1362_pp0_iter2_reg;
        v225_1_addr_9_reg_1372 <= zext_ln271_fu_816_p1;
        v225_1_addr_9_reg_1372_pp0_iter2_reg <= v225_1_addr_9_reg_1372;
        v225_1_addr_9_reg_1372_pp0_iter3_reg <= v225_1_addr_9_reg_1372_pp0_iter2_reg;
        v225_1_addr_reg_1227 <= zext_ln212_fu_618_p1;
        v225_1_addr_reg_1227_pp0_iter1_reg <= v225_1_addr_reg_1227;
        v225_1_addr_reg_1227_pp0_iter2_reg <= v225_1_addr_reg_1227_pp0_iter1_reg;
        v225_2_addr_7_reg_1232 <= zext_ln212_fu_618_p1;
        v225_2_addr_7_reg_1232_pp0_iter1_reg <= v225_2_addr_7_reg_1232;
        v225_2_addr_7_reg_1232_pp0_iter2_reg <= v225_2_addr_7_reg_1232_pp0_iter1_reg;
        v225_3_addr_7_reg_1237 <= zext_ln212_fu_618_p1;
        v225_3_addr_7_reg_1237_pp0_iter1_reg <= v225_3_addr_7_reg_1237;
        v225_3_addr_7_reg_1237_pp0_iter2_reg <= v225_3_addr_7_reg_1237_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1291 <= grp_fu_8296_p_dout0;
        v128_reg_1296 <= grp_fu_8300_p_dout0;
        v134_reg_1301 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1342 <= grp_fu_8296_p_dout0;
        v145_reg_1347 <= grp_fu_8300_p_dout0;
        v150_reg_1352 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1382 <= grp_fu_8296_p_dout0;
        v161_reg_1392 <= grp_fu_8300_p_dout0;
        v167_reg_1397 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v164_reg_1286 <= v164_fu_763_p3;
        v170_reg_1402 <= v170_fu_847_p3;
        v175_reg_1412 <= v175_fu_858_p3;
        v181_reg_1422 <= v181_fu_869_p3;
        v186_reg_1432 <= v186_fu_880_p3;
        v192_reg_1437 <= v192_fu_891_p3;
        v197_reg_1442 <= v197_fu_902_p3;
        v203_reg_1447 <= v203_fu_913_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1407 <= grp_fu_8296_p_dout0;
        v178_reg_1417 <= grp_fu_8300_p_dout0;
        v183_reg_1427 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1452 <= grp_fu_8296_p_dout0;
        v194_reg_1457 <= grp_fu_8300_p_dout0;
        v200_reg_1462 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1477 <= grp_fu_8296_p_dout0;
        v211_reg_1482 <= grp_fu_8300_p_dout0;
        v216_reg_1487 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1492 <= grp_fu_8284_p_dout0;
        v212_reg_1497 <= grp_fu_8288_p_dout0;
        v217_reg_1502 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1467 <= v208_fu_924_p3;
        v214_reg_1472 <= v214_fu_935_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_load_4_reg_1242 <= v225_1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1135 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116 = v116_1_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_472_p0 = v203_reg_1447;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_472_p0 = v186_reg_1432;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_472_p0 = v170_reg_1402;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_472_p0 = v153_reg_1377;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_472_p0 = v137_reg_1271;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_472_p0 = v118_fu_787_p3;
        end else begin
            grp_fu_472_p0 = 'bx;
        end
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_472_p1 = v205_reg_1477;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_472_p1 = v189_reg_1452;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_472_p1 = v172_reg_1407;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_472_p1 = v156_reg_1382;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_472_p1 = v139_reg_1342;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_472_p1 = v122_reg_1291;
        end else begin
            grp_fu_472_p1 = 'bx;
        end
    end else begin
        grp_fu_472_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_476_p0 = v208_reg_1467;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_476_p0 = v192_reg_1437;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_476_p0 = v175_reg_1412;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_476_p0 = v159_reg_1387;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_476_p0 = v142_reg_1276;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_476_p0 = v125_reg_1254;
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
            grp_fu_476_p1 = v211_reg_1482;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_476_p1 = v194_reg_1457;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_476_p1 = v178_reg_1417;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_476_p1 = v161_reg_1392;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_476_p1 = v145_reg_1347;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_476_p1 = v128_reg_1296;
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
            grp_fu_480_p0 = v214_reg_1472;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_480_p0 = v197_reg_1442;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_480_p0 = v181_reg_1422;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_480_p0 = v164_reg_1286;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_480_p0 = v148_reg_1281;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_480_p0 = v131_reg_1266;
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
            grp_fu_480_p1 = v216_reg_1487;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_480_p1 = v200_reg_1462;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_480_p1 = v183_reg_1427;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_480_p1 = v167_reg_1397;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_480_p1 = v150_reg_1352;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_480_p1 = v134_reg_1301;
        end else begin
            grp_fu_480_p1 = 'bx;
        end
    end else begin
        grp_fu_480_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_484_p0 = v199_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p0 = v188_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_484_p0 = v166_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_484_p0 = v155_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_484_p0 = v133_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p0 = v120_1;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_484_p1 = v127_reg_1259;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_484_p1 = v121_reg_1247;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_488_p0 = v210_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_488_p0 = v188_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_488_p0 = v177_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_488_p0 = v155_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_488_p0 = v144_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_488_p0 = v120_1;
    end else begin
        grp_fu_488_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_488_p1 = v121_reg_1247;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_488_p1 = v127_reg_1259;
    end else begin
        grp_fu_488_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p0 = v210_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p0 = v199_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_492_p0 = v177_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_492_p0 = v166_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_492_p0 = v144_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_492_p0 = v133_1;
    end else begin
        grp_fu_492_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_492_p1 = v127_reg_1259;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_492_p1 = v121_reg_1247;
    end else begin
        grp_fu_492_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_9_reg_1367_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_reg_1221_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln271_fu_816_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln219_fu_799_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_7_reg_1357_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_8_reg_1316_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln264_fu_811_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = v225_0_addr_reg_1221;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d0_local = bitcast_ln276_fu_1017_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln218_fu_972_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_0_d1_local = bitcast_ln270_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_0_d1_local = bitcast_ln224_fu_977_p1;
        end else begin
            v225_0_d1_local = 'bx;
        end
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address0_local = v225_1_addr_9_reg_1372_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address0_local = v225_1_addr_8_reg_1327_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_6_reg_1206_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_9_reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = v225_1_addr_8_reg_1327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_607_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_7_reg_1362_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_reg_1227_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_5_reg_1165_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_7_reg_1362;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln212_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_558_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d0_local = bitcast_ln289_fu_1025_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d0_local = bitcast_ln237_fu_987_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d0_local = bitcast_ln185_fu_967_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d1_local = bitcast_ln283_fu_1021_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d1_local = bitcast_ln231_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d1_local = bitcast_ln178_fu_962_p1;
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address0_local = v225_2_addr_8_reg_1332_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_6_reg_1211_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_8_reg_1332;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_607_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address1_local = v225_2_addr_7_reg_1232_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_5_reg_1170_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_7_reg_1232;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_558_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_2_d0_local = bitcast_ln250_fu_997_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln198_fu_947_p1;
        end else begin
            v225_2_d0_local = 'bx;
        end
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_2_d1_local = bitcast_ln244_fu_992_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln192_fu_942_p1;
        end else begin
            v225_2_d1_local = 'bx;
        end
    end else begin
        v225_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address0_local = v225_3_addr_8_reg_1337_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_6_reg_1216_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_8_reg_1337;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_607_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_7_reg_1237_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_5_reg_1175_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_7_reg_1237;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_558_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d0_local = bitcast_ln263_fu_1007_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_3_d0_local = bitcast_ln211_fu_957_p1;
        end else begin
            v225_3_d0_local = 'bx;
        end
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln257_fu_1002_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_3_d1_local = bitcast_ln205_fu_952_p1;
        end else begin
            v225_3_d1_local = 'bx;
        end
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln170_fu_770_p2 = (v116_reg_1130 + 8'd2);
assign add_ln171_fu_552_p2 = (mul_ln277 + zext_ln175_fu_534_p1);
assign add_ln175_fu_538_p2 = (mul_ln175 + zext_ln175_fu_534_p1);
assign add_ln179_fu_601_p2 = (mul_ln277 + zext_ln182_fu_583_p1);
assign add_ln182_fu_587_p2 = (mul_ln175 + zext_ln182_fu_583_p1);
assign add_ln212_fu_614_p2 = (mul_ln212 + zext_ln175_reg_1139);
assign add_ln219_fu_795_p2 = (mul_ln212 + zext_ln182_reg_1180);
assign add_ln264_fu_780_p2 = (mul_ln264 + zext_ln175_reg_1139);
assign add_ln271_fu_807_p2 = (mul_ln264 + zext_ln182_reg_1180);
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
assign bitcast_ln178_fu_962_p1 = reg_496;
assign bitcast_ln185_fu_967_p1 = reg_500;
assign bitcast_ln192_fu_942_p1 = reg_504;
assign bitcast_ln198_fu_947_p1 = reg_508;
assign bitcast_ln205_fu_952_p1 = reg_512;
assign bitcast_ln211_fu_957_p1 = reg_516;
assign bitcast_ln218_fu_972_p1 = reg_508;
assign bitcast_ln224_fu_977_p1 = reg_512;
assign bitcast_ln231_fu_982_p1 = reg_504;
assign bitcast_ln237_fu_987_p1 = reg_496;
assign bitcast_ln244_fu_992_p1 = reg_500;
assign bitcast_ln250_fu_997_p1 = reg_516;
assign bitcast_ln257_fu_1002_p1 = reg_496;
assign bitcast_ln263_fu_1007_p1 = reg_500;
assign bitcast_ln270_fu_1012_p1 = reg_504;
assign bitcast_ln276_fu_1017_p1 = v206_reg_1492;
assign bitcast_ln283_fu_1021_p1 = v212_reg_1497;
assign bitcast_ln289_fu_1025_p1 = v217_reg_1502;
assign grp_fu_8284_p_ce = 1'b1;
assign grp_fu_8284_p_din0 = grp_fu_472_p0;
assign grp_fu_8284_p_din1 = grp_fu_472_p1;
assign grp_fu_8284_p_opcode = 2'd0;
assign grp_fu_8288_p_ce = 1'b1;
assign grp_fu_8288_p_din0 = grp_fu_476_p0;
assign grp_fu_8288_p_din1 = grp_fu_476_p1;
assign grp_fu_8288_p_opcode = 2'd0;
assign grp_fu_8292_p_ce = 1'b1;
assign grp_fu_8292_p_din0 = grp_fu_480_p0;
assign grp_fu_8292_p_din1 = grp_fu_480_p1;
assign grp_fu_8292_p_opcode = 2'd0;
assign grp_fu_8296_p_ce = 1'b1;
assign grp_fu_8296_p_din0 = grp_fu_484_p0;
assign grp_fu_8296_p_din1 = grp_fu_484_p1;
assign grp_fu_8300_p_ce = 1'b1;
assign grp_fu_8300_p_din0 = grp_fu_488_p0;
assign grp_fu_8300_p_din1 = grp_fu_488_p1;
assign grp_fu_8304_p_ce = 1'b1;
assign grp_fu_8304_p_din0 = grp_fu_492_p0;
assign grp_fu_8304_p_din1 = grp_fu_492_p1;
assign icmp_ln170_fu_528_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_1_fu_575_p3 = {{tmp_8_fu_565_p4}, {1'd1}};
assign tmp_8_fu_565_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_784_p1 = v225_1_load_4_reg_1242;
assign v118_fu_787_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_784_p1);
assign v121_fu_642_p2 = v227_0_q1;
assign v121_fu_642_p4 = v227_1_q1;
assign v121_fu_642_p6 = v227_2_q1;
assign v121_fu_642_p8 = v227_3_q1;
assign v121_fu_642_p9 = 'bx;
assign v124_fu_665_p1 = v225_1_q0;
assign v125_fu_669_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_665_p1);
assign v127_fu_692_p2 = v227_0_q0;
assign v127_fu_692_p4 = v227_1_q0;
assign v127_fu_692_p6 = v227_2_q0;
assign v127_fu_692_p8 = v227_3_q0;
assign v127_fu_692_p9 = 'bx;
assign v130_fu_715_p1 = v225_2_q1;
assign v131_fu_719_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_715_p1);
assign v136_fu_726_p1 = v225_2_q0;
assign v137_fu_730_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_726_p1);
assign v141_fu_737_p1 = v225_3_q1;
assign v142_fu_741_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_737_p1);
assign v147_fu_748_p1 = v225_3_q0;
assign v148_fu_752_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_748_p1);
assign v152_fu_821_p1 = v225_0_q1;
assign v153_fu_825_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_821_p1);
assign v158_fu_832_p1 = v225_0_q0;
assign v159_fu_836_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_832_p1);
assign v163_fu_759_p1 = v225_1_q1;
assign v164_fu_763_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_759_p1);
assign v169_fu_843_p1 = v225_1_q0;
assign v170_fu_847_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_843_p1);
assign v174_fu_854_p1 = v225_2_q1;
assign v175_fu_858_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_854_p1);
assign v180_fu_865_p1 = v225_2_q0;
assign v181_fu_869_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_865_p1);
assign v185_fu_876_p1 = v225_3_q1;
assign v186_fu_880_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_876_p1);
assign v191_fu_887_p1 = v225_3_q0;
assign v192_fu_891_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_887_p1);
assign v196_fu_898_p1 = v225_0_q1;
assign v197_fu_902_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_898_p1);
assign v202_fu_909_p1 = v225_0_q0;
assign v203_fu_913_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_909_p1);
assign v207_fu_920_p1 = v225_1_q1;
assign v208_fu_924_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_920_p1);
assign v213_fu_931_p1 = v225_1_q0;
assign v214_fu_935_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_931_p1);
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
assign v227_0_address0 = zext_ln182_3_fu_593_p1;
assign v227_0_address1 = zext_ln175_3_fu_544_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_3_fu_593_p1;
assign v227_1_address1 = zext_ln175_3_fu_544_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_2_address0 = zext_ln182_3_fu_593_p1;
assign v227_2_address1 = zext_ln175_3_fu_544_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_3_address0 = zext_ln182_3_fu_593_p1;
assign v227_3_address1 = zext_ln175_3_fu_544_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign zext_ln171_fu_558_p1 = add_ln171_fu_552_p2;
assign zext_ln175_3_fu_544_p1 = add_ln175_fu_538_p2;
assign zext_ln175_fu_534_p1 = ap_sig_allocacmp_v116;
assign zext_ln179_fu_607_p1 = add_ln179_fu_601_p2;
assign zext_ln182_3_fu_593_p1 = add_ln182_fu_587_p2;
assign zext_ln182_fu_583_p1 = or_ln179_1_fu_575_p3;
assign zext_ln212_fu_618_p1 = add_ln212_fu_614_p2;
assign zext_ln219_fu_799_p1 = add_ln219_fu_795_p2;
assign zext_ln264_fu_811_p1 = add_ln264_reg_1306;
assign zext_ln271_fu_816_p1 = add_ln271_reg_1322;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1139[13:8] <= 6'b000000;
    zext_ln182_reg_1180[0] <= 1'b1;
    zext_ln182_reg_1180[13:8] <= 6'b000000;
end
endmodule 