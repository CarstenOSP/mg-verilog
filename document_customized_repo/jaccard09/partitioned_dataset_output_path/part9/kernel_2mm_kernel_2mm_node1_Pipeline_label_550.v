
module kernel_2mm_kernel_2mm_node1_Pipeline_label_550 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,mul_ln171_6,mul_ln277_6,v120_6,v133_6,v144_6,v155_6,v166_6,v177_6,v188_6,v199_6,v210_6,grp_fu_28731_p_din0,grp_fu_28731_p_din1,grp_fu_28731_p_opcode,grp_fu_28731_p_dout0,grp_fu_28731_p_ce,grp_fu_28735_p_din0,grp_fu_28735_p_din1,grp_fu_28735_p_opcode,grp_fu_28735_p_dout0,grp_fu_28735_p_ce,grp_fu_28739_p_din0,grp_fu_28739_p_din1,grp_fu_28739_p_opcode,grp_fu_28739_p_dout0,grp_fu_28739_p_ce,grp_fu_28743_p_din0,grp_fu_28743_p_din1,grp_fu_28743_p_opcode,grp_fu_28743_p_dout0,grp_fu_28743_p_ce,grp_fu_28747_p_din0,grp_fu_28747_p_din1,grp_fu_28747_p_opcode,grp_fu_28747_p_dout0,grp_fu_28747_p_ce,grp_fu_28751_p_din0,grp_fu_28751_p_din1,grp_fu_28751_p_dout0,grp_fu_28751_p_ce,grp_fu_28755_p_din0,grp_fu_28755_p_din1,grp_fu_28755_p_dout0,grp_fu_28755_p_ce,grp_fu_28759_p_din0,grp_fu_28759_p_din1,grp_fu_28759_p_dout0,grp_fu_28759_p_ce,grp_fu_28763_p_din0,grp_fu_28763_p_din1,grp_fu_28763_p_dout0,grp_fu_28763_p_ce,grp_fu_28767_p_din0,grp_fu_28767_p_din1,grp_fu_28767_p_dout0,grp_fu_28767_p_ce);  
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
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
input  [11:0] mul_ln171_6;
input  [12:0] mul_ln277_6;
input  [31:0] v120_6;
input  [31:0] v133_6;
input  [31:0] v144_6;
input  [31:0] v155_6;
input  [31:0] v166_6;
input  [31:0] v177_6;
input  [31:0] v188_6;
input  [31:0] v199_6;
input  [31:0] v210_6;
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
reg   [0:0] icmp_ln170_reg_854;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_443;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_447;
reg   [31:0] reg_451;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_455;
reg   [31:0] reg_459;
reg   [31:0] reg_463;
reg   [31:0] reg_467;
reg   [31:0] reg_471;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_19_reg_848;
wire   [0:0] icmp_ln170_fu_483_p2;
wire   [12:0] add_ln277_fu_504_p2;
reg   [12:0] add_ln277_reg_863;
reg   [12:0] add_ln277_reg_863_pp0_iter1_reg;
wire   [7:0] or_ln179_s_fu_520_p3;
reg   [7:0] or_ln179_s_reg_868;
wire   [12:0] add_ln284_fu_543_p2;
reg   [12:0] add_ln284_reg_878;
reg   [12:0] add_ln284_reg_878_pp0_iter1_reg;
reg   [31:0] v227_6_load_reg_883;
reg   [31:0] v227_6_load_1_reg_888;
wire   [31:0] v121_fu_549_p1;
reg   [31:0] v121_reg_893;
wire   [31:0] v127_fu_555_p1;
reg   [31:0] v127_reg_902;
reg   [12:0] v225_0_addr_reg_911;
reg   [12:0] v225_0_addr_reg_911_pp0_iter2_reg;
reg   [12:0] v225_0_addr_reg_911_pp0_iter3_reg;
reg   [12:0] v225_1_addr_reg_916;
reg   [12:0] v225_1_addr_reg_916_pp0_iter2_reg;
reg   [12:0] v225_1_addr_reg_916_pp0_iter3_reg;
reg   [12:0] v225_2_addr_reg_921;
reg   [12:0] v225_2_addr_reg_921_pp0_iter2_reg;
reg   [12:0] v225_2_addr_reg_921_pp0_iter3_reg;
reg   [12:0] v225_3_addr_reg_927;
reg   [12:0] v225_3_addr_reg_927_pp0_iter2_reg;
reg   [12:0] v225_3_addr_reg_927_pp0_iter3_reg;
reg   [12:0] v225_4_addr_reg_932;
reg   [12:0] v225_4_addr_reg_932_pp0_iter2_reg;
reg   [12:0] v225_4_addr_reg_932_pp0_iter3_reg;
reg   [12:0] v225_5_addr_reg_937;
reg   [12:0] v225_5_addr_reg_937_pp0_iter2_reg;
reg   [12:0] v225_5_addr_reg_937_pp0_iter3_reg;
reg   [12:0] v225_6_addr_reg_942;
reg   [12:0] v225_6_addr_reg_942_pp0_iter2_reg;
reg   [12:0] v225_6_addr_reg_942_pp0_iter3_reg;
reg   [12:0] v225_7_addr_reg_947;
reg   [12:0] v225_7_addr_reg_947_pp0_iter2_reg;
reg   [12:0] v225_7_addr_reg_947_pp0_iter3_reg;
reg   [12:0] v225_0_addr_23_reg_952;
reg   [12:0] v225_0_addr_23_reg_952_pp0_iter2_reg;
reg   [12:0] v225_0_addr_23_reg_952_pp0_iter3_reg;
reg   [12:0] v225_1_addr_24_reg_957;
reg   [12:0] v225_1_addr_24_reg_957_pp0_iter2_reg;
reg   [12:0] v225_1_addr_24_reg_957_pp0_iter3_reg;
reg   [12:0] v225_2_addr_23_reg_962;
reg   [12:0] v225_2_addr_23_reg_962_pp0_iter2_reg;
reg   [12:0] v225_2_addr_23_reg_962_pp0_iter3_reg;
reg   [12:0] v225_3_addr_23_reg_968;
reg   [12:0] v225_3_addr_23_reg_968_pp0_iter2_reg;
reg   [12:0] v225_3_addr_23_reg_968_pp0_iter3_reg;
reg   [12:0] v225_4_addr_23_reg_973;
reg   [12:0] v225_4_addr_23_reg_973_pp0_iter2_reg;
reg   [12:0] v225_4_addr_23_reg_973_pp0_iter3_reg;
reg   [12:0] v225_5_addr_25_reg_978;
reg   [12:0] v225_5_addr_25_reg_978_pp0_iter2_reg;
reg   [12:0] v225_5_addr_25_reg_978_pp0_iter3_reg;
reg   [12:0] v225_6_addr_25_reg_983;
reg   [12:0] v225_6_addr_25_reg_983_pp0_iter2_reg;
reg   [12:0] v225_6_addr_25_reg_983_pp0_iter3_reg;
reg   [12:0] v225_7_addr_25_reg_988;
reg   [12:0] v225_7_addr_25_reg_988_pp0_iter2_reg;
reg   [12:0] v225_7_addr_25_reg_988_pp0_iter3_reg;
reg   [12:0] v225_7_addr_25_reg_988_pp0_iter4_reg;
reg   [12:0] v225_0_addr_22_reg_993;
reg   [12:0] v225_0_addr_22_reg_993_pp0_iter2_reg;
reg   [12:0] v225_0_addr_22_reg_993_pp0_iter3_reg;
reg   [12:0] v225_0_addr_22_reg_993_pp0_iter4_reg;
reg   [31:0] v122_reg_998;
reg   [12:0] v225_0_addr_24_reg_1003;
reg   [12:0] v225_0_addr_24_reg_1003_pp0_iter2_reg;
reg   [12:0] v225_0_addr_24_reg_1003_pp0_iter3_reg;
reg   [12:0] v225_0_addr_24_reg_1003_pp0_iter4_reg;
reg   [31:0] v128_reg_1008;
reg   [31:0] v225_1_load_reg_1013;
reg   [31:0] v134_reg_1018;
reg   [31:0] v225_1_load_24_reg_1023;
reg   [31:0] v139_reg_1028;
reg   [31:0] v225_2_load_reg_1033;
reg   [31:0] v145_reg_1038;
reg   [31:0] v225_2_load_23_reg_1043;
reg   [31:0] v225_3_load_reg_1048;
reg   [31:0] v225_3_load_23_reg_1053;
reg   [31:0] v225_4_load_reg_1058;
reg   [31:0] v225_4_load_23_reg_1063;
reg   [31:0] v225_5_load_reg_1068;
reg   [31:0] v225_5_load_25_reg_1073;
reg   [31:0] v225_6_load_reg_1078;
reg   [31:0] v225_6_load_25_reg_1083;
reg   [31:0] v225_7_load_reg_1088;
reg   [31:0] v225_7_load_25_reg_1093;
wire   [31:0] v117_fu_618_p1;
wire   [31:0] v124_fu_623_p1;
wire   [31:0] v130_fu_628_p1;
wire   [31:0] v136_fu_632_p1;
wire   [31:0] v141_fu_636_p1;
reg   [31:0] v150_reg_1123;
reg   [31:0] v156_reg_1128;
reg   [31:0] v161_reg_1133;
reg   [31:0] v167_reg_1138;
reg   [31:0] v172_reg_1143;
wire   [31:0] v147_fu_640_p1;
wire   [31:0] v152_fu_644_p1;
wire   [31:0] v158_fu_648_p1;
wire   [31:0] v163_fu_652_p1;
wire   [31:0] v169_fu_656_p1;
reg   [31:0] v178_reg_1173;
reg   [31:0] v183_reg_1178;
reg   [31:0] v189_reg_1183;
reg   [31:0] v194_reg_1188;
reg   [31:0] v200_reg_1193;
wire   [31:0] v174_fu_660_p1;
wire   [31:0] v180_fu_664_p1;
wire   [31:0] v185_fu_668_p1;
wire   [31:0] v191_fu_672_p1;
wire   [31:0] v196_fu_676_p1;
reg   [31:0] v205_reg_1223;
reg   [31:0] v211_reg_1228;
reg   [31:0] v216_reg_1233;
wire   [31:0] v202_fu_680_p1;
wire   [31:0] v207_fu_684_p1;
wire   [31:0] v213_fu_689_p1;
reg   [31:0] v157_reg_1253;
reg   [31:0] v212_reg_1258;
reg   [31:0] v217_reg_1263;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_22_fu_499_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_22_fu_538_p1;
wire   [63:0] zext_ln171_fu_578_p1;
wire   [63:0] zext_ln179_fu_598_p1;
wire   [63:0] zext_ln277_fu_610_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln284_fu_614_p1;
reg   [7:0] v116_fu_86;
wire   [7:0] add_ln170_fu_560_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_19;
reg    v227_6_ce1_local;
reg    v227_6_ce0_local;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_709_p1;
wire    ap_block_pp0_stage2;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_714_p1;
wire   [31:0] bitcast_ln283_fu_773_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_777_p1;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
reg    v225_1_we1_local;
wire   [31:0] bitcast_ln192_fu_694_p1;
reg    v225_1_we0_local;
wire   [31:0] bitcast_ln198_fu_699_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln205_fu_704_p1;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln211_fu_719_p1;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
reg    v225_3_we1_local;
wire   [31:0] bitcast_ln218_fu_724_p1;
reg    v225_3_we0_local;
wire   [31:0] bitcast_ln224_fu_728_p1;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
reg    v225_4_we1_local;
wire   [31:0] bitcast_ln231_fu_733_p1;
reg    v225_4_we0_local;
wire   [31:0] bitcast_ln237_fu_738_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln244_fu_743_p1;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln250_fu_748_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln257_fu_753_p1;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln263_fu_758_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln270_fu_763_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln276_fu_768_p1;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_403_p1;
reg   [31:0] grp_fu_407_p0;
reg   [31:0] grp_fu_407_p1;
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
wire   [12:0] zext_ln175_21_fu_489_p1;
wire   [12:0] add_ln175_fu_493_p2;
wire   [6:0] tmp_s_fu_510_p4;
wire   [12:0] zext_ln182_21_fu_528_p1;
wire   [12:0] add_ln182_fu_532_p2;
wire   [11:0] zext_ln175_fu_570_p1;
wire   [11:0] add_ln171_fu_573_p2;
wire   [11:0] zext_ln182_fu_590_p1;
wire   [11:0] add_ln179_fu_593_p2;
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
#0 v116_fu_86 = 8'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        v116_fu_86 <= 8'd0;
    end else if (((icmp_ln170_reg_854 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_fu_86 <= add_ln170_fu_560_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln277_reg_863 <= add_ln277_fu_504_p2;
        add_ln277_reg_863_pp0_iter1_reg <= add_ln277_reg_863;
        add_ln284_reg_878 <= add_ln284_fu_543_p2;
        add_ln284_reg_878_pp0_iter1_reg <= add_ln284_reg_878;
        icmp_ln170_reg_854 <= icmp_ln170_fu_483_p2;
        or_ln179_s_reg_868[7 : 1] <= or_ln179_s_fu_520_p3[7 : 1];
        v116_19_reg_848 <= ap_sig_allocacmp_v116_19;
        v225_0_addr_23_reg_952[11 : 0] <= zext_ln179_fu_598_p1[11 : 0];
        v225_0_addr_23_reg_952_pp0_iter2_reg[11 : 0] <= v225_0_addr_23_reg_952[11 : 0];
        v225_0_addr_23_reg_952_pp0_iter3_reg[11 : 0] <= v225_0_addr_23_reg_952_pp0_iter2_reg[11 : 0];
        v225_0_addr_reg_911[11 : 0] <= zext_ln171_fu_578_p1[11 : 0];
        v225_0_addr_reg_911_pp0_iter2_reg[11 : 0] <= v225_0_addr_reg_911[11 : 0];
        v225_0_addr_reg_911_pp0_iter3_reg[11 : 0] <= v225_0_addr_reg_911_pp0_iter2_reg[11 : 0];
        v225_1_addr_24_reg_957[11 : 0] <= zext_ln179_fu_598_p1[11 : 0];
        v225_1_addr_24_reg_957_pp0_iter2_reg[11 : 0] <= v225_1_addr_24_reg_957[11 : 0];
        v225_1_addr_24_reg_957_pp0_iter3_reg[11 : 0] <= v225_1_addr_24_reg_957_pp0_iter2_reg[11 : 0];
        v225_1_addr_reg_916[11 : 0] <= zext_ln171_fu_578_p1[11 : 0];
        v225_1_addr_reg_916_pp0_iter2_reg[11 : 0] <= v225_1_addr_reg_916[11 : 0];
        v225_1_addr_reg_916_pp0_iter3_reg[11 : 0] <= v225_1_addr_reg_916_pp0_iter2_reg[11 : 0];
        v225_2_addr_23_reg_962[11 : 0] <= zext_ln179_fu_598_p1[11 : 0];
        v225_2_addr_23_reg_962_pp0_iter2_reg[11 : 0] <= v225_2_addr_23_reg_962[11 : 0];
        v225_2_addr_23_reg_962_pp0_iter3_reg[11 : 0] <= v225_2_addr_23_reg_962_pp0_iter2_reg[11 : 0];
        v225_2_addr_reg_921[11 : 0] <= zext_ln171_fu_578_p1[11 : 0];
        v225_2_addr_reg_921_pp0_iter2_reg[11 : 0] <= v225_2_addr_reg_921[11 : 0];
        v225_2_addr_reg_921_pp0_iter3_reg[11 : 0] <= v225_2_addr_reg_921_pp0_iter2_reg[11 : 0];
        v225_3_addr_23_reg_968[11 : 0] <= zext_ln179_fu_598_p1[11 : 0];
        v225_3_addr_23_reg_968_pp0_iter2_reg[11 : 0] <= v225_3_addr_23_reg_968[11 : 0];
        v225_3_addr_23_reg_968_pp0_iter3_reg[11 : 0] <= v225_3_addr_23_reg_968_pp0_iter2_reg[11 : 0];
        v225_3_addr_reg_927[11 : 0] <= zext_ln171_fu_578_p1[11 : 0];
        v225_3_addr_reg_927_pp0_iter2_reg[11 : 0] <= v225_3_addr_reg_927[11 : 0];
        v225_3_addr_reg_927_pp0_iter3_reg[11 : 0] <= v225_3_addr_reg_927_pp0_iter2_reg[11 : 0];
        v225_4_addr_23_reg_973[11 : 0] <= zext_ln179_fu_598_p1[11 : 0];
        v225_4_addr_23_reg_973_pp0_iter2_reg[11 : 0] <= v225_4_addr_23_reg_973[11 : 0];
        v225_4_addr_23_reg_973_pp0_iter3_reg[11 : 0] <= v225_4_addr_23_reg_973_pp0_iter2_reg[11 : 0];
        v225_4_addr_reg_932[11 : 0] <= zext_ln171_fu_578_p1[11 : 0];
        v225_4_addr_reg_932_pp0_iter2_reg[11 : 0] <= v225_4_addr_reg_932[11 : 0];
        v225_4_addr_reg_932_pp0_iter3_reg[11 : 0] <= v225_4_addr_reg_932_pp0_iter2_reg[11 : 0];
        v225_5_addr_25_reg_978[11 : 0] <= zext_ln179_fu_598_p1[11 : 0];
        v225_5_addr_25_reg_978_pp0_iter2_reg[11 : 0] <= v225_5_addr_25_reg_978[11 : 0];
        v225_5_addr_25_reg_978_pp0_iter3_reg[11 : 0] <= v225_5_addr_25_reg_978_pp0_iter2_reg[11 : 0];
        v225_5_addr_reg_937[11 : 0] <= zext_ln171_fu_578_p1[11 : 0];
        v225_5_addr_reg_937_pp0_iter2_reg[11 : 0] <= v225_5_addr_reg_937[11 : 0];
        v225_5_addr_reg_937_pp0_iter3_reg[11 : 0] <= v225_5_addr_reg_937_pp0_iter2_reg[11 : 0];
        v225_6_addr_25_reg_983[11 : 0] <= zext_ln179_fu_598_p1[11 : 0];
        v225_6_addr_25_reg_983_pp0_iter2_reg[11 : 0] <= v225_6_addr_25_reg_983[11 : 0];
        v225_6_addr_25_reg_983_pp0_iter3_reg[11 : 0] <= v225_6_addr_25_reg_983_pp0_iter2_reg[11 : 0];
        v225_6_addr_reg_942[11 : 0] <= zext_ln171_fu_578_p1[11 : 0];
        v225_6_addr_reg_942_pp0_iter2_reg[11 : 0] <= v225_6_addr_reg_942[11 : 0];
        v225_6_addr_reg_942_pp0_iter3_reg[11 : 0] <= v225_6_addr_reg_942_pp0_iter2_reg[11 : 0];
        v225_7_addr_25_reg_988[11 : 0] <= zext_ln179_fu_598_p1[11 : 0];
        v225_7_addr_25_reg_988_pp0_iter2_reg[11 : 0] <= v225_7_addr_25_reg_988[11 : 0];
        v225_7_addr_25_reg_988_pp0_iter3_reg[11 : 0] <= v225_7_addr_25_reg_988_pp0_iter2_reg[11 : 0];
        v225_7_addr_25_reg_988_pp0_iter4_reg[11 : 0] <= v225_7_addr_25_reg_988_pp0_iter3_reg[11 : 0];
        v225_7_addr_reg_947[11 : 0] <= zext_ln171_fu_578_p1[11 : 0];
        v225_7_addr_reg_947_pp0_iter2_reg[11 : 0] <= v225_7_addr_reg_947[11 : 0];
        v225_7_addr_reg_947_pp0_iter3_reg[11 : 0] <= v225_7_addr_reg_947_pp0_iter2_reg[11 : 0];
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_443 <= v225_0_q1;
        reg_447 <= v225_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_451 <= grp_fu_28731_p_dout0;
        reg_455 <= grp_fu_28735_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
        v121_reg_893 <= v121_fu_549_p1;
        v127_reg_902 <= v127_fu_555_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_998 <= grp_fu_28751_p_dout0;
        v128_reg_1008 <= grp_fu_28755_p_dout0;
        v134_reg_1018 <= grp_fu_28759_p_dout0;
        v139_reg_1028 <= grp_fu_28763_p_dout0;
        v145_reg_1038 <= grp_fu_28767_p_dout0;
        v225_1_load_24_reg_1023 <= v225_1_q0;
        v225_1_load_reg_1013 <= v225_1_q1;
        v225_2_load_23_reg_1043 <= v225_2_q0;
        v225_2_load_reg_1033 <= v225_2_q1;
        v225_3_load_23_reg_1053 <= v225_3_q0;
        v225_3_load_reg_1048 <= v225_3_q1;
        v225_4_load_23_reg_1063 <= v225_4_q0;
        v225_4_load_reg_1058 <= v225_4_q1;
        v225_5_load_25_reg_1073 <= v225_5_q0;
        v225_5_load_reg_1068 <= v225_5_q1;
        v225_6_load_25_reg_1083 <= v225_6_q0;
        v225_6_load_reg_1078 <= v225_6_q1;
        v225_7_load_25_reg_1093 <= v225_7_q0;
        v225_7_load_reg_1088 <= v225_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1123 <= grp_fu_28751_p_dout0;
        v156_reg_1128 <= grp_fu_28755_p_dout0;
        v161_reg_1133 <= grp_fu_28759_p_dout0;
        v167_reg_1138 <= grp_fu_28763_p_dout0;
        v172_reg_1143 <= grp_fu_28767_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1253 <= grp_fu_28735_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1173 <= grp_fu_28751_p_dout0;
        v183_reg_1178 <= grp_fu_28755_p_dout0;
        v189_reg_1183 <= grp_fu_28759_p_dout0;
        v194_reg_1188 <= grp_fu_28763_p_dout0;
        v200_reg_1193 <= grp_fu_28767_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1223 <= grp_fu_28751_p_dout0;
        v211_reg_1228 <= grp_fu_28755_p_dout0;
        v216_reg_1233 <= grp_fu_28759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1258 <= grp_fu_28735_p_dout0;
        v217_reg_1263 <= grp_fu_28739_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_addr_22_reg_993 <= zext_ln277_fu_610_p1;
        v225_0_addr_22_reg_993_pp0_iter2_reg <= v225_0_addr_22_reg_993;
        v225_0_addr_22_reg_993_pp0_iter3_reg <= v225_0_addr_22_reg_993_pp0_iter2_reg;
        v225_0_addr_22_reg_993_pp0_iter4_reg <= v225_0_addr_22_reg_993_pp0_iter3_reg;
        v225_0_addr_24_reg_1003 <= zext_ln284_fu_614_p1;
        v225_0_addr_24_reg_1003_pp0_iter2_reg <= v225_0_addr_24_reg_1003;
        v225_0_addr_24_reg_1003_pp0_iter3_reg <= v225_0_addr_24_reg_1003_pp0_iter2_reg;
        v225_0_addr_24_reg_1003_pp0_iter4_reg <= v225_0_addr_24_reg_1003_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_6_load_1_reg_888 <= v227_6_q0;
        v227_6_load_reg_883 <= v227_6_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_854 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v116_19 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_19 = v116_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = v202_fu_680_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p0 = v174_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p0 = v147_fu_640_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p0 = v117_fu_618_p1;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p1 = v205_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p1 = v178_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p1 = v150_reg_1123;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p1 = v122_reg_998;
    end else begin
        grp_fu_403_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p0 = v207_fu_684_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = v180_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = v152_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p0 = v124_fu_623_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p1 = v211_reg_1228;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p1 = v183_reg_1178;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p1 = v156_reg_1128;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p1 = v128_reg_1008;
    end else begin
        grp_fu_407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p0 = v213_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v185_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v158_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v130_fu_628_p1;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p1 = v216_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p1 = v189_reg_1183;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p1 = v161_reg_1133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p1 = v134_reg_1018;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p0 = v191_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_415_p0 = v163_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p0 = v136_fu_632_p1;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p1 = v194_reg_1188;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_415_p1 = v167_reg_1138;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p1 = v139_reg_1028;
    end else begin
        grp_fu_415_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_419_p0 = v196_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_419_p0 = v169_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p0 = v141_fu_636_p1;
    end else begin
        grp_fu_419_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_419_p1 = v200_reg_1193;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_419_p1 = v172_reg_1143;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p1 = v145_reg_1038;
    end else begin
        grp_fu_419_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_423_p0 = v199_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_423_p0 = v177_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_423_p0 = v144_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p0 = v120_6;
    end else begin
        grp_fu_423_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_423_p1 = v121_reg_893;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_423_p1 = v127_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p1 = v121_fu_549_p1;
    end else begin
        grp_fu_423_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_427_p0 = v210_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_427_p0 = v177_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_427_p0 = v155_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_427_p0 = v120_6;
    end else begin
        grp_fu_427_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_427_p1 = v127_reg_902;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_427_p1 = v121_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_427_p1 = v127_fu_555_p1;
    end else begin
        grp_fu_427_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_431_p0 = v210_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p0 = v188_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_431_p0 = v155_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p0 = v133_6;
    end else begin
        grp_fu_431_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p1 = v121_reg_893;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_431_p1 = v127_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p1 = v121_fu_549_p1;
    end else begin
        grp_fu_431_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_435_p0 = v188_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_435_p0 = v166_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_435_p0 = v133_6;
    end else begin
        grp_fu_435_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_435_p1 = v127_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_435_p1 = v121_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_435_p1 = v127_fu_555_p1;
    end else begin
        grp_fu_435_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_439_p0 = v199_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_439_p0 = v166_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_439_p0 = v144_6;
    end else begin
        grp_fu_439_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_439_p1 = v121_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_439_p1 = v127_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_439_p1 = v121_fu_549_p1;
    end else begin
        grp_fu_439_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_24_reg_1003_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_23_reg_952_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln284_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_598_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_22_reg_993_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_reg_911_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln277_fu_610_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_578_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln289_fu_777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d0_local = bitcast_ln185_fu_714_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln283_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d1_local = bitcast_ln178_fu_709_p1;
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
        v225_1_address0_local = v225_1_addr_24_reg_957_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_598_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_reg_916_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_578_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
        v225_2_address0_local = v225_2_addr_reg_921_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_598_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_23_reg_962_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_578_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v225_3_address0_local = v225_3_addr_23_reg_968_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_598_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_reg_927_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_578_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v225_4_address0_local = v225_4_addr_23_reg_973_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_598_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address1_local = v225_4_addr_reg_932_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address1_local = zext_ln171_fu_578_p1;
    end else begin
        v225_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_4_ce0_local = 1'b1;
    end else begin
        v225_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v225_5_address0_local = v225_5_addr_25_reg_978_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_598_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_address1_local = v225_5_addr_reg_937_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_578_p1;
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
        v225_6_address0_local = v225_6_addr_25_reg_983_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_598_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_address1_local = v225_6_addr_reg_942_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address1_local = zext_ln171_fu_578_p1;
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
        v225_7_address0_local = v225_7_addr_25_reg_988_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_598_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_7_address1_local = v225_7_addr_reg_947_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_578_p1;
    end else begin
        v225_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln170_fu_560_p2 = (v116_19_reg_848 + 8'd2);
assign add_ln171_fu_573_p2 = (mul_ln171_6 + zext_ln175_fu_570_p1);
assign add_ln175_fu_493_p2 = (mul_ln175 + zext_ln175_21_fu_489_p1);
assign add_ln179_fu_593_p2 = (mul_ln171_6 + zext_ln182_fu_590_p1);
assign add_ln182_fu_532_p2 = (mul_ln175 + zext_ln182_21_fu_528_p1);
assign add_ln277_fu_504_p2 = (mul_ln277_6 + zext_ln175_21_fu_489_p1);
assign add_ln284_fu_543_p2 = (mul_ln277_6 + zext_ln182_21_fu_528_p1);
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
assign bitcast_ln178_fu_709_p1 = reg_451;
assign bitcast_ln185_fu_714_p1 = reg_455;
assign bitcast_ln192_fu_694_p1 = reg_459;
assign bitcast_ln198_fu_699_p1 = reg_463;
assign bitcast_ln205_fu_704_p1 = reg_467;
assign bitcast_ln211_fu_719_p1 = reg_471;
assign bitcast_ln218_fu_724_p1 = v157_reg_1253;
assign bitcast_ln224_fu_728_p1 = reg_459;
assign bitcast_ln231_fu_733_p1 = reg_463;
assign bitcast_ln237_fu_738_p1 = reg_467;
assign bitcast_ln244_fu_743_p1 = reg_451;
assign bitcast_ln250_fu_748_p1 = reg_455;
assign bitcast_ln257_fu_753_p1 = reg_459;
assign bitcast_ln263_fu_758_p1 = reg_463;
assign bitcast_ln270_fu_763_p1 = reg_467;
assign bitcast_ln276_fu_768_p1 = reg_471;
assign bitcast_ln283_fu_773_p1 = v212_reg_1258;
assign bitcast_ln289_fu_777_p1 = v217_reg_1263;
assign grp_fu_28731_p_ce = 1'b1;
assign grp_fu_28731_p_din0 = grp_fu_403_p0;
assign grp_fu_28731_p_din1 = grp_fu_403_p1;
assign grp_fu_28731_p_opcode = 2'd0;
assign grp_fu_28735_p_ce = 1'b1;
assign grp_fu_28735_p_din0 = grp_fu_407_p0;
assign grp_fu_28735_p_din1 = grp_fu_407_p1;
assign grp_fu_28735_p_opcode = 2'd0;
assign grp_fu_28739_p_ce = 1'b1;
assign grp_fu_28739_p_din0 = grp_fu_411_p0;
assign grp_fu_28739_p_din1 = grp_fu_411_p1;
assign grp_fu_28739_p_opcode = 2'd0;
assign grp_fu_28743_p_ce = 1'b1;
assign grp_fu_28743_p_din0 = grp_fu_415_p0;
assign grp_fu_28743_p_din1 = grp_fu_415_p1;
assign grp_fu_28743_p_opcode = 2'd0;
assign grp_fu_28747_p_ce = 1'b1;
assign grp_fu_28747_p_din0 = grp_fu_419_p0;
assign grp_fu_28747_p_din1 = grp_fu_419_p1;
assign grp_fu_28747_p_opcode = 2'd0;
assign grp_fu_28751_p_ce = 1'b1;
assign grp_fu_28751_p_din0 = grp_fu_423_p0;
assign grp_fu_28751_p_din1 = grp_fu_423_p1;
assign grp_fu_28755_p_ce = 1'b1;
assign grp_fu_28755_p_din0 = grp_fu_427_p0;
assign grp_fu_28755_p_din1 = grp_fu_427_p1;
assign grp_fu_28759_p_ce = 1'b1;
assign grp_fu_28759_p_din0 = grp_fu_431_p0;
assign grp_fu_28759_p_din1 = grp_fu_431_p1;
assign grp_fu_28763_p_ce = 1'b1;
assign grp_fu_28763_p_din0 = grp_fu_435_p0;
assign grp_fu_28763_p_din1 = grp_fu_435_p1;
assign grp_fu_28767_p_ce = 1'b1;
assign grp_fu_28767_p_din0 = grp_fu_439_p0;
assign grp_fu_28767_p_din1 = grp_fu_439_p1;
assign icmp_ln170_fu_483_p2 = ((ap_sig_allocacmp_v116_19 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_s_fu_520_p3 = {{tmp_s_fu_510_p4}, {1'd1}};
assign tmp_s_fu_510_p4 = {{ap_sig_allocacmp_v116_19[7:1]}};
assign v117_fu_618_p1 = reg_443;
assign v121_fu_549_p1 = v227_6_load_reg_883;
assign v124_fu_623_p1 = reg_447;
assign v127_fu_555_p1 = v227_6_load_1_reg_888;
assign v130_fu_628_p1 = v225_1_load_reg_1013;
assign v136_fu_632_p1 = v225_1_load_24_reg_1023;
assign v141_fu_636_p1 = v225_2_load_reg_1033;
assign v147_fu_640_p1 = v225_2_load_23_reg_1043;
assign v152_fu_644_p1 = v225_3_load_reg_1048;
assign v158_fu_648_p1 = v225_3_load_23_reg_1053;
assign v163_fu_652_p1 = v225_4_load_reg_1058;
assign v169_fu_656_p1 = v225_4_load_23_reg_1063;
assign v174_fu_660_p1 = v225_5_load_reg_1068;
assign v180_fu_664_p1 = v225_5_load_25_reg_1073;
assign v185_fu_668_p1 = v225_6_load_reg_1078;
assign v191_fu_672_p1 = v225_6_load_25_reg_1083;
assign v196_fu_676_p1 = v225_7_load_reg_1088;
assign v202_fu_680_p1 = v225_7_load_25_reg_1093;
assign v207_fu_684_p1 = reg_443;
assign v213_fu_689_p1 = reg_447;
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
assign v225_1_d0 = bitcast_ln198_fu_699_p1;
assign v225_1_d1 = bitcast_ln192_fu_694_p1;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = bitcast_ln205_fu_704_p1;
assign v225_2_d1 = bitcast_ln211_fu_719_p1;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = bitcast_ln224_fu_728_p1;
assign v225_3_d1 = bitcast_ln218_fu_724_p1;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v225_4_address0 = v225_4_address0_local;
assign v225_4_address1 = v225_4_address1_local;
assign v225_4_ce0 = v225_4_ce0_local;
assign v225_4_ce1 = v225_4_ce1_local;
assign v225_4_d0 = bitcast_ln237_fu_738_p1;
assign v225_4_d1 = bitcast_ln231_fu_733_p1;
assign v225_4_we0 = v225_4_we0_local;
assign v225_4_we1 = v225_4_we1_local;
assign v225_5_address0 = v225_5_address0_local;
assign v225_5_address1 = v225_5_address1_local;
assign v225_5_ce0 = v225_5_ce0_local;
assign v225_5_ce1 = v225_5_ce1_local;
assign v225_5_d0 = bitcast_ln250_fu_748_p1;
assign v225_5_d1 = bitcast_ln244_fu_743_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln263_fu_758_p1;
assign v225_6_d1 = bitcast_ln257_fu_753_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln276_fu_768_p1;
assign v225_7_d1 = bitcast_ln270_fu_763_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_6_address0 = zext_ln182_22_fu_538_p1;
assign v227_6_address1 = zext_ln175_22_fu_499_p1;
assign v227_6_ce0 = v227_6_ce0_local;
assign v227_6_ce1 = v227_6_ce1_local;
assign zext_ln171_fu_578_p1 = add_ln171_fu_573_p2;
assign zext_ln175_21_fu_489_p1 = ap_sig_allocacmp_v116_19;
assign zext_ln175_22_fu_499_p1 = add_ln175_fu_493_p2;
assign zext_ln175_fu_570_p1 = v116_19_reg_848;
assign zext_ln179_fu_598_p1 = add_ln179_fu_593_p2;
assign zext_ln182_21_fu_528_p1 = or_ln179_s_fu_520_p3;
assign zext_ln182_22_fu_538_p1 = add_ln182_fu_532_p2;
assign zext_ln182_fu_590_p1 = or_ln179_s_reg_868;
assign zext_ln277_fu_610_p1 = add_ln277_reg_863_pp0_iter1_reg;
assign zext_ln284_fu_614_p1 = add_ln284_reg_878_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    or_ln179_s_reg_868[0] <= 1'b1;
    v225_0_addr_reg_911[12] <= 1'b0;
    v225_0_addr_reg_911_pp0_iter2_reg[12] <= 1'b0;
    v225_0_addr_reg_911_pp0_iter3_reg[12] <= 1'b0;
    v225_1_addr_reg_916[12] <= 1'b0;
    v225_1_addr_reg_916_pp0_iter2_reg[12] <= 1'b0;
    v225_1_addr_reg_916_pp0_iter3_reg[12] <= 1'b0;
    v225_2_addr_reg_921[12] <= 1'b0;
    v225_2_addr_reg_921_pp0_iter2_reg[12] <= 1'b0;
    v225_2_addr_reg_921_pp0_iter3_reg[12] <= 1'b0;
    v225_3_addr_reg_927[12] <= 1'b0;
    v225_3_addr_reg_927_pp0_iter2_reg[12] <= 1'b0;
    v225_3_addr_reg_927_pp0_iter3_reg[12] <= 1'b0;
    v225_4_addr_reg_932[12] <= 1'b0;
    v225_4_addr_reg_932_pp0_iter2_reg[12] <= 1'b0;
    v225_4_addr_reg_932_pp0_iter3_reg[12] <= 1'b0;
    v225_5_addr_reg_937[12] <= 1'b0;
    v225_5_addr_reg_937_pp0_iter2_reg[12] <= 1'b0;
    v225_5_addr_reg_937_pp0_iter3_reg[12] <= 1'b0;
    v225_6_addr_reg_942[12] <= 1'b0;
    v225_6_addr_reg_942_pp0_iter2_reg[12] <= 1'b0;
    v225_6_addr_reg_942_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_reg_947[12] <= 1'b0;
    v225_7_addr_reg_947_pp0_iter2_reg[12] <= 1'b0;
    v225_7_addr_reg_947_pp0_iter3_reg[12] <= 1'b0;
    v225_0_addr_23_reg_952[12] <= 1'b0;
    v225_0_addr_23_reg_952_pp0_iter2_reg[12] <= 1'b0;
    v225_0_addr_23_reg_952_pp0_iter3_reg[12] <= 1'b0;
    v225_1_addr_24_reg_957[12] <= 1'b0;
    v225_1_addr_24_reg_957_pp0_iter2_reg[12] <= 1'b0;
    v225_1_addr_24_reg_957_pp0_iter3_reg[12] <= 1'b0;
    v225_2_addr_23_reg_962[12] <= 1'b0;
    v225_2_addr_23_reg_962_pp0_iter2_reg[12] <= 1'b0;
    v225_2_addr_23_reg_962_pp0_iter3_reg[12] <= 1'b0;
    v225_3_addr_23_reg_968[12] <= 1'b0;
    v225_3_addr_23_reg_968_pp0_iter2_reg[12] <= 1'b0;
    v225_3_addr_23_reg_968_pp0_iter3_reg[12] <= 1'b0;
    v225_4_addr_23_reg_973[12] <= 1'b0;
    v225_4_addr_23_reg_973_pp0_iter2_reg[12] <= 1'b0;
    v225_4_addr_23_reg_973_pp0_iter3_reg[12] <= 1'b0;
    v225_5_addr_25_reg_978[12] <= 1'b0;
    v225_5_addr_25_reg_978_pp0_iter2_reg[12] <= 1'b0;
    v225_5_addr_25_reg_978_pp0_iter3_reg[12] <= 1'b0;
    v225_6_addr_25_reg_983[12] <= 1'b0;
    v225_6_addr_25_reg_983_pp0_iter2_reg[12] <= 1'b0;
    v225_6_addr_25_reg_983_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_25_reg_988[12] <= 1'b0;
    v225_7_addr_25_reg_988_pp0_iter2_reg[12] <= 1'b0;
    v225_7_addr_25_reg_988_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_25_reg_988_pp0_iter4_reg[12] <= 1'b0;
end
endmodule 
