module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,mul_ln171,mul_ln225,mul_ln277,cmp11,empty,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_8284_p_din0,grp_fu_8284_p_din1,grp_fu_8284_p_opcode,grp_fu_8284_p_dout0,grp_fu_8284_p_ce,grp_fu_8288_p_din0,grp_fu_8288_p_din1,grp_fu_8288_p_opcode,grp_fu_8288_p_dout0,grp_fu_8288_p_ce,grp_fu_8292_p_din0,grp_fu_8292_p_din1,grp_fu_8292_p_opcode,grp_fu_8292_p_dout0,grp_fu_8292_p_ce,grp_fu_8296_p_din0,grp_fu_8296_p_din1,grp_fu_8296_p_dout0,grp_fu_8296_p_ce,grp_fu_8300_p_din0,grp_fu_8300_p_din1,grp_fu_8300_p_dout0,grp_fu_8300_p_ce,grp_fu_8304_p_din0,grp_fu_8304_p_din1,grp_fu_8304_p_dout0,grp_fu_8304_p_ce); 
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
input  [13:0] mul_ln171;
input  [13:0] mul_ln225;
input  [13:0] mul_ln277;
input  [0:0] cmp11;
input  [1:0] empty;
input  [31:0] v120;
input  [31:0] v133;
input  [31:0] v144;
input  [31:0] v155;
input  [31:0] v166;
input  [31:0] v177;
input  [31:0] v188;
input  [31:0] v199;
input  [31:0] v210;
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
reg   [0:0] icmp_ln170_reg_1138;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_499;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_503;
reg   [31:0] reg_507;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_511;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_515;
reg   [31:0] reg_519;
reg   [7:0] v116_3_reg_1133;
wire   [0:0] icmp_ln170_fu_531_p2;
wire   [13:0] zext_ln175_fu_537_p1;
reg   [13:0] zext_ln175_reg_1142;
reg   [13:0] v225_0_addr_1_reg_1168;
reg   [13:0] v225_0_addr_1_reg_1168_pp0_iter1_reg;
reg   [13:0] v225_0_addr_1_reg_1168_pp0_iter2_reg;
reg   [13:0] v225_1_addr_1_reg_1173;
reg   [13:0] v225_1_addr_1_reg_1173_pp0_iter1_reg;
reg   [13:0] v225_1_addr_1_reg_1173_pp0_iter2_reg;
reg   [13:0] v225_2_addr_1_reg_1178;
reg   [13:0] v225_2_addr_1_reg_1178_pp0_iter1_reg;
reg   [13:0] v225_2_addr_1_reg_1178_pp0_iter2_reg;
reg   [13:0] v225_3_addr_1_reg_1183;
reg   [13:0] v225_3_addr_1_reg_1183_pp0_iter1_reg;
reg   [13:0] v225_3_addr_1_reg_1183_pp0_iter2_reg;
wire   [13:0] zext_ln182_fu_587_p1;
reg   [13:0] zext_ln182_reg_1189;
reg   [13:0] zext_ln182_reg_1189_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1215;
reg   [13:0] v225_0_addr_2_reg_1215_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1215_pp0_iter2_reg;
reg   [13:0] v225_1_addr_2_reg_1220;
reg   [13:0] v225_1_addr_2_reg_1220_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1220_pp0_iter2_reg;
reg   [13:0] v225_2_addr_2_reg_1225;
reg   [13:0] v225_2_addr_2_reg_1225_pp0_iter1_reg;
reg   [13:0] v225_2_addr_2_reg_1225_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1230;
reg   [13:0] v225_3_addr_2_reg_1230_pp0_iter1_reg;
reg   [13:0] v225_3_addr_2_reg_1230_pp0_iter2_reg;
reg   [13:0] v225_0_addr_3_reg_1236;
reg   [13:0] v225_0_addr_3_reg_1236_pp0_iter1_reg;
reg   [13:0] v225_0_addr_3_reg_1236_pp0_iter2_reg;
wire   [13:0] add_ln277_fu_631_p2;
reg   [13:0] add_ln277_reg_1241;
reg   [13:0] add_ln277_reg_1241_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1246;
reg   [13:0] v225_1_addr_3_reg_1246_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1246_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1251;
reg   [13:0] v225_2_addr_3_reg_1251_pp0_iter1_reg;
reg   [13:0] v225_2_addr_3_reg_1251_pp0_iter2_reg;
reg   [13:0] v225_3_addr_3_reg_1256;
reg   [13:0] v225_3_addr_3_reg_1256_pp0_iter1_reg;
reg   [13:0] v225_3_addr_3_reg_1256_pp0_iter2_reg;
reg   [31:0] v225_0_load_reg_1261;
wire   [31:0] v121_fu_651_p11;
reg   [31:0] v121_reg_1266;
wire   [31:0] v125_fu_678_p3;
reg   [31:0] v125_reg_1273;
wire   [31:0] v127_fu_701_p11;
reg   [31:0] v127_reg_1278;
wire   [31:0] v131_fu_728_p3;
reg   [31:0] v131_reg_1285;
wire   [31:0] v137_fu_739_p3;
reg   [31:0] v137_reg_1290;
wire   [31:0] v142_fu_750_p3;
reg   [31:0] v142_reg_1295;
wire   [31:0] v148_fu_761_p3;
reg   [31:0] v148_reg_1300;
wire   [31:0] v164_fu_772_p3;
reg   [31:0] v164_reg_1305;
reg   [31:0] v122_reg_1310;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1315;
reg   [31:0] v134_reg_1320;
wire   [31:0] v118_fu_792_p3;
reg   [31:0] v139_reg_1330;
reg   [31:0] v145_reg_1335;
reg   [31:0] v150_reg_1340;
reg   [13:0] v225_0_addr_4_reg_1345;
reg   [13:0] v225_0_addr_4_reg_1345_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_812_p2;
reg   [13:0] add_ln284_reg_1350;
reg   [13:0] v225_1_addr_4_reg_1355;
reg   [13:0] v225_1_addr_4_reg_1355_pp0_iter2_reg;
reg   [13:0] v225_2_addr_4_reg_1360;
reg   [13:0] v225_2_addr_4_reg_1360_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1365;
reg   [13:0] v225_3_addr_4_reg_1365_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1365_pp0_iter3_reg;
wire   [31:0] v153_fu_820_p3;
reg   [31:0] v153_reg_1370;
reg   [31:0] v156_reg_1375;
wire   [31:0] v159_fu_831_p3;
reg   [31:0] v159_reg_1380;
reg   [31:0] v161_reg_1385;
reg   [31:0] v167_reg_1390;
reg   [13:0] v225_0_addr_5_reg_1395;
reg   [13:0] v225_0_addr_5_reg_1395_pp0_iter2_reg;
reg   [13:0] v225_0_addr_5_reg_1395_pp0_iter3_reg;
reg   [13:0] v225_0_addr_6_reg_1400;
reg   [13:0] v225_0_addr_6_reg_1400_pp0_iter2_reg;
reg   [13:0] v225_0_addr_6_reg_1400_pp0_iter3_reg;
wire   [31:0] v170_fu_850_p3;
reg   [31:0] v170_reg_1405;
reg   [31:0] v172_reg_1410;
wire   [31:0] v175_fu_861_p3;
reg   [31:0] v175_reg_1415;
reg   [31:0] v178_reg_1420;
wire   [31:0] v181_fu_872_p3;
reg   [31:0] v181_reg_1425;
reg   [31:0] v183_reg_1430;
wire   [31:0] v186_fu_883_p3;
reg   [31:0] v186_reg_1435;
wire   [31:0] v192_fu_894_p3;
reg   [31:0] v192_reg_1440;
wire   [31:0] v197_fu_905_p3;
reg   [31:0] v197_reg_1445;
wire   [31:0] v203_fu_916_p3;
reg   [31:0] v203_reg_1450;
reg   [31:0] v189_reg_1455;
reg   [31:0] v194_reg_1460;
reg   [31:0] v200_reg_1465;
wire   [31:0] v208_fu_927_p3;
reg   [31:0] v208_reg_1470;
wire   [31:0] v214_fu_938_p3;
reg   [31:0] v214_reg_1475;
reg   [31:0] v205_reg_1480;
reg   [31:0] v211_reg_1485;
reg   [31:0] v216_reg_1490;
reg   [31:0] v206_reg_1495;
reg   [31:0] v212_reg_1500;
reg   [31:0] v217_reg_1505;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_4_fu_547_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_561_p1;
wire   [63:0] zext_ln182_4_fu_597_p1;
wire   [63:0] zext_ln179_fu_611_p1;
wire   [63:0] zext_ln225_fu_623_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln232_fu_804_p1;
wire   [63:0] zext_ln277_fu_838_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_842_p1;
reg   [7:0] v116_fu_106;
wire   [7:0] add_ln170_fu_779_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_3;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_965_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_970_p1;
wire   [31:0] bitcast_ln231_fu_985_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_990_p1;
wire   [31:0] bitcast_ln283_fu_1024_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_1028_p1;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_945_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_950_p1;
wire   [31:0] bitcast_ln244_fu_995_p1;
wire   [31:0] bitcast_ln250_fu_1000_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_955_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_960_p1;
wire   [31:0] bitcast_ln257_fu_1005_p1;
wire   [31:0] bitcast_ln263_fu_1010_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln218_fu_975_p1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln224_fu_980_p1;
wire   [31:0] bitcast_ln270_fu_1015_p1;
wire   [31:0] bitcast_ln276_fu_1020_p1;
reg   [31:0] grp_fu_475_p0;
reg   [31:0] grp_fu_475_p1;
reg   [31:0] grp_fu_479_p0;
reg   [31:0] grp_fu_479_p1;
reg   [31:0] grp_fu_483_p0;
reg   [31:0] grp_fu_483_p1;
reg   [31:0] grp_fu_487_p0;
reg   [31:0] grp_fu_487_p1;
reg   [31:0] grp_fu_491_p0;
reg   [31:0] grp_fu_491_p1;
reg   [31:0] grp_fu_495_p0;
reg   [31:0] grp_fu_495_p1;
wire   [13:0] add_ln175_fu_541_p2;
wire   [13:0] add_ln171_fu_555_p2;
wire   [6:0] tmp_7_fu_569_p4;
wire   [7:0] or_ln_fu_579_p3;
wire   [13:0] add_ln182_fu_591_p2;
wire   [13:0] add_ln179_fu_605_p2;
wire   [13:0] add_ln225_fu_619_p2;
wire   [31:0] v121_fu_651_p2;
wire   [31:0] v121_fu_651_p4;
wire   [31:0] v121_fu_651_p6;
wire   [31:0] v121_fu_651_p8;
wire   [31:0] v121_fu_651_p9;
wire   [31:0] v124_fu_674_p1;
wire   [31:0] v127_fu_701_p2;
wire   [31:0] v127_fu_701_p4;
wire   [31:0] v127_fu_701_p6;
wire   [31:0] v127_fu_701_p8;
wire   [31:0] v127_fu_701_p9;
wire   [31:0] v130_fu_724_p1;
wire   [31:0] v136_fu_735_p1;
wire   [31:0] v141_fu_746_p1;
wire   [31:0] v147_fu_757_p1;
wire   [31:0] v163_fu_768_p1;
wire   [31:0] v117_fu_789_p1;
wire   [13:0] add_ln232_fu_800_p2;
wire   [31:0] v152_fu_816_p1;
wire   [31:0] v158_fu_827_p1;
wire   [31:0] v169_fu_846_p1;
wire   [31:0] v174_fu_857_p1;
wire   [31:0] v180_fu_868_p1;
wire   [31:0] v185_fu_879_p1;
wire   [31:0] v191_fu_890_p1;
wire   [31:0] v196_fu_901_p1;
wire   [31:0] v202_fu_912_p1;
wire   [31:0] v207_fu_923_p1;
wire   [31:0] v213_fu_934_p1;
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
wire   [1:0] v121_fu_651_p1;
wire   [1:0] v121_fu_651_p3;
wire  signed [1:0] v121_fu_651_p5;
wire  signed [1:0] v121_fu_651_p7;
wire   [1:0] v127_fu_701_p1;
wire   [1:0] v127_fu_701_p3;
wire  signed [1:0] v127_fu_701_p5;
wire  signed [1:0] v127_fu_701_p7;
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
sparsemux_9_2_32_1_1_U7(.din0(v121_fu_651_p2),.din1(v121_fu_651_p4),.din2(v121_fu_651_p6),.din3(v121_fu_651_p8),.def(v121_fu_651_p9),.sel(empty),.dout(v121_fu_651_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U8(.din0(v127_fu_701_p2),.din1(v127_fu_701_p4),.din2(v127_fu_701_p6),.din3(v127_fu_701_p8),.def(v127_fu_701_p9),.sel(empty),.dout(v127_fu_701_p11));
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
    end else if (((icmp_ln170_reg_1138 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_106 <= add_ln170_fu_779_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_1241 <= add_ln277_fu_631_p2;
        add_ln277_reg_1241_pp0_iter1_reg <= add_ln277_reg_1241;
        add_ln284_reg_1350 <= add_ln284_fu_812_p2;
        v121_reg_1266 <= v121_fu_651_p11;
        v125_reg_1273 <= v125_fu_678_p3;
        v127_reg_1278 <= v127_fu_701_p11;
        v131_reg_1285 <= v131_fu_728_p3;
        v137_reg_1290 <= v137_fu_739_p3;
        v142_reg_1295 <= v142_fu_750_p3;
        v148_reg_1300 <= v148_fu_761_p3;
        v153_reg_1370 <= v153_fu_820_p3;
        v159_reg_1380 <= v159_fu_831_p3;
        v225_0_addr_3_reg_1236 <= zext_ln225_fu_623_p1;
        v225_0_addr_3_reg_1236_pp0_iter1_reg <= v225_0_addr_3_reg_1236;
        v225_0_addr_3_reg_1236_pp0_iter2_reg <= v225_0_addr_3_reg_1236_pp0_iter1_reg;
        v225_0_addr_4_reg_1345 <= zext_ln232_fu_804_p1;
        v225_0_addr_4_reg_1345_pp0_iter2_reg <= v225_0_addr_4_reg_1345;
        v225_1_addr_3_reg_1246 <= zext_ln225_fu_623_p1;
        v225_1_addr_3_reg_1246_pp0_iter1_reg <= v225_1_addr_3_reg_1246;
        v225_1_addr_3_reg_1246_pp0_iter2_reg <= v225_1_addr_3_reg_1246_pp0_iter1_reg;
        v225_1_addr_4_reg_1355 <= zext_ln232_fu_804_p1;
        v225_1_addr_4_reg_1355_pp0_iter2_reg <= v225_1_addr_4_reg_1355;
        v225_2_addr_3_reg_1251 <= zext_ln225_fu_623_p1;
        v225_2_addr_3_reg_1251_pp0_iter1_reg <= v225_2_addr_3_reg_1251;
        v225_2_addr_3_reg_1251_pp0_iter2_reg <= v225_2_addr_3_reg_1251_pp0_iter1_reg;
        v225_2_addr_4_reg_1360 <= zext_ln232_fu_804_p1;
        v225_2_addr_4_reg_1360_pp0_iter2_reg <= v225_2_addr_4_reg_1360;
        v225_3_addr_3_reg_1256 <= zext_ln225_fu_623_p1;
        v225_3_addr_3_reg_1256_pp0_iter1_reg <= v225_3_addr_3_reg_1256;
        v225_3_addr_3_reg_1256_pp0_iter2_reg <= v225_3_addr_3_reg_1256_pp0_iter1_reg;
        v225_3_addr_4_reg_1365 <= zext_ln232_fu_804_p1;
        v225_3_addr_4_reg_1365_pp0_iter2_reg <= v225_3_addr_4_reg_1365;
        v225_3_addr_4_reg_1365_pp0_iter3_reg <= v225_3_addr_4_reg_1365_pp0_iter2_reg;
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
        icmp_ln170_reg_1138 <= icmp_ln170_fu_531_p2;
        v116_3_reg_1133 <= ap_sig_allocacmp_v116_3;
        v225_0_addr_1_reg_1168 <= zext_ln171_fu_561_p1;
        v225_0_addr_1_reg_1168_pp0_iter1_reg <= v225_0_addr_1_reg_1168;
        v225_0_addr_1_reg_1168_pp0_iter2_reg <= v225_0_addr_1_reg_1168_pp0_iter1_reg;
        v225_0_addr_2_reg_1215 <= zext_ln179_fu_611_p1;
        v225_0_addr_2_reg_1215_pp0_iter1_reg <= v225_0_addr_2_reg_1215;
        v225_0_addr_2_reg_1215_pp0_iter2_reg <= v225_0_addr_2_reg_1215_pp0_iter1_reg;
        v225_1_addr_1_reg_1173 <= zext_ln171_fu_561_p1;
        v225_1_addr_1_reg_1173_pp0_iter1_reg <= v225_1_addr_1_reg_1173;
        v225_1_addr_1_reg_1173_pp0_iter2_reg <= v225_1_addr_1_reg_1173_pp0_iter1_reg;
        v225_1_addr_2_reg_1220 <= zext_ln179_fu_611_p1;
        v225_1_addr_2_reg_1220_pp0_iter1_reg <= v225_1_addr_2_reg_1220;
        v225_1_addr_2_reg_1220_pp0_iter2_reg <= v225_1_addr_2_reg_1220_pp0_iter1_reg;
        v225_2_addr_1_reg_1178 <= zext_ln171_fu_561_p1;
        v225_2_addr_1_reg_1178_pp0_iter1_reg <= v225_2_addr_1_reg_1178;
        v225_2_addr_1_reg_1178_pp0_iter2_reg <= v225_2_addr_1_reg_1178_pp0_iter1_reg;
        v225_2_addr_2_reg_1225 <= zext_ln179_fu_611_p1;
        v225_2_addr_2_reg_1225_pp0_iter1_reg <= v225_2_addr_2_reg_1225;
        v225_2_addr_2_reg_1225_pp0_iter2_reg <= v225_2_addr_2_reg_1225_pp0_iter1_reg;
        v225_3_addr_1_reg_1183 <= zext_ln171_fu_561_p1;
        v225_3_addr_1_reg_1183_pp0_iter1_reg <= v225_3_addr_1_reg_1183;
        v225_3_addr_1_reg_1183_pp0_iter2_reg <= v225_3_addr_1_reg_1183_pp0_iter1_reg;
        v225_3_addr_2_reg_1230 <= zext_ln179_fu_611_p1;
        v225_3_addr_2_reg_1230_pp0_iter1_reg <= v225_3_addr_2_reg_1230;
        v225_3_addr_2_reg_1230_pp0_iter2_reg <= v225_3_addr_2_reg_1230_pp0_iter1_reg;
        zext_ln175_reg_1142[7 : 0] <= zext_ln175_fu_537_p1[7 : 0];
        zext_ln182_reg_1189[7 : 1] <= zext_ln182_fu_587_p1[7 : 1];
        zext_ln182_reg_1189_pp0_iter1_reg[7 : 1] <= zext_ln182_reg_1189[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_499 <= grp_fu_8284_p_dout0;
        reg_503 <= grp_fu_8288_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_507 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_511 <= grp_fu_8284_p_dout0;
        reg_515 <= grp_fu_8288_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_519 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1310 <= grp_fu_8296_p_dout0;
        v128_reg_1315 <= grp_fu_8300_p_dout0;
        v134_reg_1320 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1330 <= grp_fu_8296_p_dout0;
        v145_reg_1335 <= grp_fu_8300_p_dout0;
        v150_reg_1340 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1375 <= grp_fu_8296_p_dout0;
        v161_reg_1385 <= grp_fu_8300_p_dout0;
        v167_reg_1390 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v164_reg_1305 <= v164_fu_772_p3;
        v170_reg_1405 <= v170_fu_850_p3;
        v175_reg_1415 <= v175_fu_861_p3;
        v181_reg_1425 <= v181_fu_872_p3;
        v186_reg_1435 <= v186_fu_883_p3;
        v192_reg_1440 <= v192_fu_894_p3;
        v197_reg_1445 <= v197_fu_905_p3;
        v203_reg_1450 <= v203_fu_916_p3;
        v225_0_addr_5_reg_1395 <= zext_ln277_fu_838_p1;
        v225_0_addr_5_reg_1395_pp0_iter2_reg <= v225_0_addr_5_reg_1395;
        v225_0_addr_5_reg_1395_pp0_iter3_reg <= v225_0_addr_5_reg_1395_pp0_iter2_reg;
        v225_0_addr_6_reg_1400 <= zext_ln284_fu_842_p1;
        v225_0_addr_6_reg_1400_pp0_iter2_reg <= v225_0_addr_6_reg_1400;
        v225_0_addr_6_reg_1400_pp0_iter3_reg <= v225_0_addr_6_reg_1400_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1410 <= grp_fu_8296_p_dout0;
        v178_reg_1420 <= grp_fu_8300_p_dout0;
        v183_reg_1430 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1455 <= grp_fu_8296_p_dout0;
        v194_reg_1460 <= grp_fu_8300_p_dout0;
        v200_reg_1465 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1480 <= grp_fu_8296_p_dout0;
        v211_reg_1485 <= grp_fu_8300_p_dout0;
        v216_reg_1490 <= grp_fu_8304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1495 <= grp_fu_8284_p_dout0;
        v212_reg_1500 <= grp_fu_8288_p_dout0;
        v217_reg_1505 <= grp_fu_8292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1470 <= v208_fu_927_p3;
        v214_reg_1475 <= v214_fu_938_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_reg_1261 <= v225_0_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1138 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116_3 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_3 = v116_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_475_p0 = v203_reg_1450;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_475_p0 = v186_reg_1435;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_475_p0 = v170_reg_1405;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_475_p0 = v153_reg_1370;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_475_p0 = v137_reg_1290;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_475_p0 = v118_fu_792_p3;
        end else begin
            grp_fu_475_p0 = 'bx;
        end
    end else begin
        grp_fu_475_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_475_p1 = v205_reg_1480;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_475_p1 = v189_reg_1455;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_475_p1 = v172_reg_1410;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_475_p1 = v156_reg_1375;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_475_p1 = v139_reg_1330;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_475_p1 = v122_reg_1310;
        end else begin
            grp_fu_475_p1 = 'bx;
        end
    end else begin
        grp_fu_475_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_479_p0 = v208_reg_1470;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_479_p0 = v192_reg_1440;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_479_p0 = v175_reg_1415;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_479_p0 = v159_reg_1380;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_479_p0 = v142_reg_1295;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_479_p0 = v125_reg_1273;
        end else begin
            grp_fu_479_p0 = 'bx;
        end
    end else begin
        grp_fu_479_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_479_p1 = v211_reg_1485;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_479_p1 = v194_reg_1460;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_479_p1 = v178_reg_1420;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_479_p1 = v161_reg_1385;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_479_p1 = v145_reg_1335;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_479_p1 = v128_reg_1315;
        end else begin
            grp_fu_479_p1 = 'bx;
        end
    end else begin
        grp_fu_479_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_483_p0 = v214_reg_1475;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_483_p0 = v197_reg_1445;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_483_p0 = v181_reg_1425;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_483_p0 = v164_reg_1305;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_483_p0 = v148_reg_1300;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_483_p0 = v131_reg_1285;
        end else begin
            grp_fu_483_p0 = 'bx;
        end
    end else begin
        grp_fu_483_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_483_p1 = v216_reg_1490;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_483_p1 = v200_reg_1465;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_483_p1 = v183_reg_1430;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_483_p1 = v167_reg_1390;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_483_p1 = v150_reg_1340;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_483_p1 = v134_reg_1320;
        end else begin
            grp_fu_483_p1 = 'bx;
        end
    end else begin
        grp_fu_483_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_487_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_487_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_487_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_487_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_487_p0 = v133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_487_p0 = v120;
    end else begin
        grp_fu_487_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_487_p1 = v127_reg_1278;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_487_p1 = v121_reg_1266;
    end else begin
        grp_fu_487_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_491_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_491_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_491_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_491_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_491_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_491_p0 = v120;
    end else begin
        grp_fu_491_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_491_p1 = v121_reg_1266;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_491_p1 = v127_reg_1278;
    end else begin
        grp_fu_491_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_495_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_495_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_495_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_495_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_495_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_495_p0 = v133;
    end else begin
        grp_fu_495_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_495_p1 = v127_reg_1278;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_495_p1 = v121_reg_1266;
    end else begin
        grp_fu_495_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_6_reg_1400_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1345_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1215_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_611_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_5_reg_1395_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1236_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1168_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_561_p1;
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
        v225_0_d0_local = bitcast_ln289_fu_1028_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln237_fu_990_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_970_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln283_fu_1024_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln231_fu_985_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln178_fu_965_p1;
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
        v225_1_address0_local = v225_1_addr_4_reg_1355_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1220_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_611_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1246_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1173_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1246;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_561_p1;
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
            v225_1_d0_local = bitcast_ln250_fu_1000_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln198_fu_950_p1;
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
            v225_1_d1_local = bitcast_ln244_fu_995_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln192_fu_945_p1;
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
        v225_2_address0_local = v225_2_addr_4_reg_1360_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1225_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_611_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1251_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_1_reg_1178_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1251;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_561_p1;
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
            v225_2_d0_local = bitcast_ln263_fu_1010_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln211_fu_960_p1;
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
            v225_2_d1_local = bitcast_ln257_fu_1005_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln205_fu_955_p1;
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
        v225_3_address0_local = v225_3_addr_4_reg_1365_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_1_reg_1183_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1230;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1256_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1230_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1256;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1183;
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
        v225_3_d0_local = bitcast_ln276_fu_1020_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln218_fu_975_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln270_fu_1015_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln224_fu_980_p1;
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
assign add_ln170_fu_779_p2 = (v116_3_reg_1133 + 8'd2);
assign add_ln171_fu_555_p2 = (mul_ln171 + zext_ln175_fu_537_p1);
assign add_ln175_fu_541_p2 = (mul_ln175 + zext_ln175_fu_537_p1);
assign add_ln179_fu_605_p2 = (mul_ln171 + zext_ln182_fu_587_p1);
assign add_ln182_fu_591_p2 = (mul_ln175 + zext_ln182_fu_587_p1);
assign add_ln225_fu_619_p2 = (mul_ln225 + zext_ln175_reg_1142);
assign add_ln232_fu_800_p2 = (mul_ln225 + zext_ln182_reg_1189_pp0_iter1_reg);
assign add_ln277_fu_631_p2 = (mul_ln277 + zext_ln175_reg_1142);
assign add_ln284_fu_812_p2 = (mul_ln277 + zext_ln182_reg_1189_pp0_iter1_reg);
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
assign bitcast_ln178_fu_965_p1 = reg_499;
assign bitcast_ln185_fu_970_p1 = reg_503;
assign bitcast_ln192_fu_945_p1 = reg_507;
assign bitcast_ln198_fu_950_p1 = reg_511;
assign bitcast_ln205_fu_955_p1 = reg_515;
assign bitcast_ln211_fu_960_p1 = reg_519;
assign bitcast_ln218_fu_975_p1 = reg_511;
assign bitcast_ln224_fu_980_p1 = reg_515;
assign bitcast_ln231_fu_985_p1 = reg_507;
assign bitcast_ln237_fu_990_p1 = reg_499;
assign bitcast_ln244_fu_995_p1 = reg_503;
assign bitcast_ln250_fu_1000_p1 = reg_519;
assign bitcast_ln257_fu_1005_p1 = reg_499;
assign bitcast_ln263_fu_1010_p1 = reg_503;
assign bitcast_ln270_fu_1015_p1 = reg_507;
assign bitcast_ln276_fu_1020_p1 = v206_reg_1495;
assign bitcast_ln283_fu_1024_p1 = v212_reg_1500;
assign bitcast_ln289_fu_1028_p1 = v217_reg_1505;
assign grp_fu_8284_p_ce = 1'b1;
assign grp_fu_8284_p_din0 = grp_fu_475_p0;
assign grp_fu_8284_p_din1 = grp_fu_475_p1;
assign grp_fu_8284_p_opcode = 2'd0;
assign grp_fu_8288_p_ce = 1'b1;
assign grp_fu_8288_p_din0 = grp_fu_479_p0;
assign grp_fu_8288_p_din1 = grp_fu_479_p1;
assign grp_fu_8288_p_opcode = 2'd0;
assign grp_fu_8292_p_ce = 1'b1;
assign grp_fu_8292_p_din0 = grp_fu_483_p0;
assign grp_fu_8292_p_din1 = grp_fu_483_p1;
assign grp_fu_8292_p_opcode = 2'd0;
assign grp_fu_8296_p_ce = 1'b1;
assign grp_fu_8296_p_din0 = grp_fu_487_p0;
assign grp_fu_8296_p_din1 = grp_fu_487_p1;
assign grp_fu_8300_p_ce = 1'b1;
assign grp_fu_8300_p_din0 = grp_fu_491_p0;
assign grp_fu_8300_p_din1 = grp_fu_491_p1;
assign grp_fu_8304_p_ce = 1'b1;
assign grp_fu_8304_p_din0 = grp_fu_495_p0;
assign grp_fu_8304_p_din1 = grp_fu_495_p1;
assign icmp_ln170_fu_531_p2 = ((ap_sig_allocacmp_v116_3 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln_fu_579_p3 = {{tmp_7_fu_569_p4}, {1'd1}};
assign tmp_7_fu_569_p4 = {{ap_sig_allocacmp_v116_3[7:1]}};
assign v117_fu_789_p1 = v225_0_load_reg_1261;
assign v118_fu_792_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_789_p1);
assign v121_fu_651_p2 = v227_0_q1;
assign v121_fu_651_p4 = v227_1_q1;
assign v121_fu_651_p6 = v227_2_q1;
assign v121_fu_651_p8 = v227_3_q1;
assign v121_fu_651_p9 = 'bx;
assign v124_fu_674_p1 = v225_0_q0;
assign v125_fu_678_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_674_p1);
assign v127_fu_701_p2 = v227_0_q0;
assign v127_fu_701_p4 = v227_1_q0;
assign v127_fu_701_p6 = v227_2_q0;
assign v127_fu_701_p8 = v227_3_q0;
assign v127_fu_701_p9 = 'bx;
assign v130_fu_724_p1 = v225_1_q1;
assign v131_fu_728_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_724_p1);
assign v136_fu_735_p1 = v225_1_q0;
assign v137_fu_739_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_735_p1);
assign v141_fu_746_p1 = v225_2_q1;
assign v142_fu_750_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_746_p1);
assign v147_fu_757_p1 = v225_2_q0;
assign v148_fu_761_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_757_p1);
assign v152_fu_816_p1 = v225_3_q1;
assign v153_fu_820_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_816_p1);
assign v158_fu_827_p1 = v225_3_q0;
assign v159_fu_831_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_827_p1);
assign v163_fu_768_p1 = v225_0_q1;
assign v164_fu_772_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_768_p1);
assign v169_fu_846_p1 = v225_0_q0;
assign v170_fu_850_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_846_p1);
assign v174_fu_857_p1 = v225_1_q1;
assign v175_fu_861_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_857_p1);
assign v180_fu_868_p1 = v225_1_q0;
assign v181_fu_872_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_868_p1);
assign v185_fu_879_p1 = v225_2_q1;
assign v186_fu_883_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_879_p1);
assign v191_fu_890_p1 = v225_2_q0;
assign v192_fu_894_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_890_p1);
assign v196_fu_901_p1 = v225_3_q1;
assign v197_fu_905_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_901_p1);
assign v202_fu_912_p1 = v225_3_q0;
assign v203_fu_916_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_912_p1);
assign v207_fu_923_p1 = v225_0_q1;
assign v208_fu_927_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_923_p1);
assign v213_fu_934_p1 = v225_0_q0;
assign v214_fu_938_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_934_p1);
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
assign v227_0_address0 = zext_ln182_4_fu_597_p1;
assign v227_0_address1 = zext_ln175_4_fu_547_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_4_fu_597_p1;
assign v227_1_address1 = zext_ln175_4_fu_547_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_2_address0 = zext_ln182_4_fu_597_p1;
assign v227_2_address1 = zext_ln175_4_fu_547_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_3_address0 = zext_ln182_4_fu_597_p1;
assign v227_3_address1 = zext_ln175_4_fu_547_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign zext_ln171_fu_561_p1 = add_ln171_fu_555_p2;
assign zext_ln175_4_fu_547_p1 = add_ln175_fu_541_p2;
assign zext_ln175_fu_537_p1 = ap_sig_allocacmp_v116_3;
assign zext_ln179_fu_611_p1 = add_ln179_fu_605_p2;
assign zext_ln182_4_fu_597_p1 = add_ln182_fu_591_p2;
assign zext_ln182_fu_587_p1 = or_ln_fu_579_p3;
assign zext_ln225_fu_623_p1 = add_ln225_fu_619_p2;
assign zext_ln232_fu_804_p1 = add_ln232_fu_800_p2;
assign zext_ln277_fu_838_p1 = add_ln277_reg_1241_pp0_iter1_reg;
assign zext_ln284_fu_842_p1 = add_ln284_reg_1350;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1142[13:8] <= 6'b000000;
    zext_ln182_reg_1189[0] <= 1'b1;
    zext_ln182_reg_1189[13:8] <= 6'b000000;
    zext_ln182_reg_1189_pp0_iter1_reg[0] <= 1'b1;
    zext_ln182_reg_1189_pp0_iter1_reg[13:8] <= 6'b000000;
end
endmodule 