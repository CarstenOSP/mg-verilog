
module kernel_2mm_kernel_2mm_node1_Pipeline_label_522 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,mul_ln225_2,mul_ln238_2,v120_25,v133_25,v144_25,v155_25,v166_25,v177_25,v188_25,v199_25,v210_25,grp_fu_28731_p_din0,grp_fu_28731_p_din1,grp_fu_28731_p_opcode,grp_fu_28731_p_dout0,grp_fu_28731_p_ce,grp_fu_28735_p_din0,grp_fu_28735_p_din1,grp_fu_28735_p_opcode,grp_fu_28735_p_dout0,grp_fu_28735_p_ce,grp_fu_28739_p_din0,grp_fu_28739_p_din1,grp_fu_28739_p_opcode,grp_fu_28739_p_dout0,grp_fu_28739_p_ce,grp_fu_28743_p_din0,grp_fu_28743_p_din1,grp_fu_28743_p_opcode,grp_fu_28743_p_dout0,grp_fu_28743_p_ce,grp_fu_28747_p_din0,grp_fu_28747_p_din1,grp_fu_28747_p_opcode,grp_fu_28747_p_dout0,grp_fu_28747_p_ce,grp_fu_28751_p_din0,grp_fu_28751_p_din1,grp_fu_28751_p_dout0,grp_fu_28751_p_ce,grp_fu_28755_p_din0,grp_fu_28755_p_din1,grp_fu_28755_p_dout0,grp_fu_28755_p_ce,grp_fu_28759_p_din0,grp_fu_28759_p_din1,grp_fu_28759_p_dout0,grp_fu_28759_p_ce,grp_fu_28763_p_din0,grp_fu_28763_p_din1,grp_fu_28763_p_dout0,grp_fu_28763_p_ce,grp_fu_28767_p_din0,grp_fu_28767_p_din1,grp_fu_28767_p_dout0,grp_fu_28767_p_ce);  
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
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
input  [12:0] mul_ln225_2;
input  [12:0] mul_ln238_2;
input  [31:0] v120_25;
input  [31:0] v133_25;
input  [31:0] v144_25;
input  [31:0] v155_25;
input  [31:0] v166_25;
input  [31:0] v177_25;
input  [31:0] v188_25;
input  [31:0] v199_25;
input  [31:0] v210_25;
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
reg   [0:0] icmp_ln170_reg_845;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_439;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_443;
reg   [31:0] reg_447;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_451;
reg   [31:0] reg_455;
reg   [31:0] reg_459;
reg   [31:0] reg_463;
reg   [31:0] reg_467;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_reg_840;
wire   [0:0] icmp_ln170_fu_479_p2;
wire   [12:0] zext_ln175_fu_485_p1;
reg   [12:0] zext_ln175_reg_849;
wire   [12:0] zext_ln182_fu_518_p1;
reg   [12:0] zext_ln182_reg_860;
reg   [31:0] v227_2_load_reg_871;
reg   [31:0] v227_2_load_4_reg_876;
wire   [31:0] v121_fu_533_p1;
reg   [31:0] v121_reg_881;
wire   [31:0] v127_fu_539_p1;
reg   [31:0] v127_reg_890;
reg   [12:0] v225_0_addr_47_reg_899;
reg   [12:0] v225_0_addr_47_reg_899_pp0_iter2_reg;
reg   [12:0] v225_0_addr_47_reg_899_pp0_iter3_reg;
reg   [12:0] v225_1_addr_47_reg_904;
reg   [12:0] v225_1_addr_47_reg_904_pp0_iter2_reg;
reg   [12:0] v225_1_addr_47_reg_904_pp0_iter3_reg;
reg   [12:0] v225_2_addr_47_reg_909;
reg   [12:0] v225_2_addr_47_reg_909_pp0_iter2_reg;
reg   [12:0] v225_2_addr_47_reg_909_pp0_iter3_reg;
reg   [12:0] v225_3_addr_47_reg_914;
reg   [12:0] v225_3_addr_47_reg_914_pp0_iter2_reg;
reg   [12:0] v225_3_addr_47_reg_914_pp0_iter3_reg;
reg   [12:0] v225_4_addr_45_reg_919;
reg   [12:0] v225_4_addr_45_reg_919_pp0_iter2_reg;
reg   [12:0] v225_4_addr_45_reg_919_pp0_iter3_reg;
reg   [12:0] v225_4_addr_47_reg_924;
reg   [12:0] v225_4_addr_47_reg_924_pp0_iter2_reg;
reg   [12:0] v225_4_addr_47_reg_924_pp0_iter3_reg;
reg   [12:0] v225_4_addr_47_reg_924_pp0_iter4_reg;
reg   [12:0] v225_5_addr_45_reg_929;
reg   [12:0] v225_5_addr_45_reg_929_pp0_iter2_reg;
reg   [12:0] v225_5_addr_45_reg_929_pp0_iter3_reg;
reg   [12:0] v225_6_addr_45_reg_934;
reg   [12:0] v225_6_addr_45_reg_934_pp0_iter2_reg;
reg   [12:0] v225_6_addr_45_reg_934_pp0_iter3_reg;
reg   [12:0] v225_7_addr_45_reg_940;
reg   [12:0] v225_7_addr_45_reg_940_pp0_iter2_reg;
reg   [12:0] v225_7_addr_45_reg_940_pp0_iter3_reg;
reg   [12:0] v225_0_addr_48_reg_945;
reg   [12:0] v225_0_addr_48_reg_945_pp0_iter2_reg;
reg   [12:0] v225_0_addr_48_reg_945_pp0_iter3_reg;
reg   [12:0] v225_1_addr_48_reg_950;
reg   [12:0] v225_1_addr_48_reg_950_pp0_iter2_reg;
reg   [12:0] v225_1_addr_48_reg_950_pp0_iter3_reg;
reg   [12:0] v225_2_addr_48_reg_955;
reg   [12:0] v225_2_addr_48_reg_955_pp0_iter2_reg;
reg   [12:0] v225_2_addr_48_reg_955_pp0_iter3_reg;
reg   [12:0] v225_3_addr_48_reg_960;
reg   [12:0] v225_3_addr_48_reg_960_pp0_iter2_reg;
reg   [12:0] v225_3_addr_48_reg_960_pp0_iter3_reg;
reg   [12:0] v225_3_addr_48_reg_960_pp0_iter4_reg;
reg   [12:0] v225_4_addr_46_reg_965;
reg   [12:0] v225_4_addr_46_reg_965_pp0_iter2_reg;
reg   [12:0] v225_4_addr_46_reg_965_pp0_iter3_reg;
reg   [12:0] v225_4_addr_48_reg_970;
reg   [12:0] v225_4_addr_48_reg_970_pp0_iter2_reg;
reg   [12:0] v225_4_addr_48_reg_970_pp0_iter3_reg;
reg   [12:0] v225_4_addr_48_reg_970_pp0_iter4_reg;
reg   [12:0] v225_5_addr_46_reg_975;
reg   [12:0] v225_5_addr_46_reg_975_pp0_iter2_reg;
reg   [12:0] v225_5_addr_46_reg_975_pp0_iter3_reg;
reg   [12:0] v225_6_addr_46_reg_980;
reg   [12:0] v225_6_addr_46_reg_980_pp0_iter2_reg;
reg   [12:0] v225_6_addr_46_reg_980_pp0_iter3_reg;
reg   [12:0] v225_7_addr_46_reg_986;
reg   [12:0] v225_7_addr_46_reg_986_pp0_iter2_reg;
reg   [12:0] v225_7_addr_46_reg_986_pp0_iter3_reg;
reg   [31:0] v122_reg_991;
reg   [31:0] v128_reg_996;
reg   [31:0] v225_5_load_44_reg_1001;
reg   [31:0] v134_reg_1006;
reg   [31:0] v225_5_load_45_reg_1011;
reg   [31:0] v139_reg_1016;
reg   [31:0] v225_6_load_44_reg_1021;
reg   [31:0] v145_reg_1026;
reg   [31:0] v225_6_load_45_reg_1031;
reg   [31:0] v225_7_load_44_reg_1036;
reg   [31:0] v225_7_load_45_reg_1041;
reg   [31:0] v225_0_load_46_reg_1046;
reg   [31:0] v225_0_load_47_reg_1051;
reg   [31:0] v225_1_load_46_reg_1056;
reg   [31:0] v225_1_load_47_reg_1061;
reg   [31:0] v225_2_load_46_reg_1066;
reg   [31:0] v225_2_load_47_reg_1071;
reg   [31:0] v225_3_load_46_reg_1076;
reg   [31:0] v225_3_load_47_reg_1081;
wire   [31:0] v117_fu_604_p1;
wire   [31:0] v124_fu_609_p1;
wire   [31:0] v130_fu_614_p1;
wire   [31:0] v136_fu_618_p1;
wire   [31:0] v141_fu_622_p1;
reg   [31:0] v150_reg_1111;
reg   [31:0] v156_reg_1116;
reg   [31:0] v161_reg_1121;
reg   [31:0] v167_reg_1126;
reg   [31:0] v172_reg_1131;
wire   [31:0] v147_fu_626_p1;
wire   [31:0] v152_fu_630_p1;
wire   [31:0] v158_fu_634_p1;
wire   [31:0] v163_fu_638_p1;
wire   [31:0] v169_fu_642_p1;
reg   [31:0] v178_reg_1161;
reg   [31:0] v183_reg_1166;
reg   [31:0] v189_reg_1171;
reg   [31:0] v194_reg_1176;
reg   [31:0] v200_reg_1181;
wire   [31:0] v174_fu_646_p1;
wire   [31:0] v180_fu_650_p1;
wire   [31:0] v185_fu_654_p1;
wire   [31:0] v191_fu_658_p1;
wire   [31:0] v196_fu_662_p1;
reg   [31:0] v205_reg_1211;
reg   [31:0] v211_reg_1216;
reg   [31:0] v216_reg_1221;
wire   [31:0] v202_fu_666_p1;
wire   [31:0] v207_fu_670_p1;
wire   [31:0] v213_fu_675_p1;
reg   [31:0] v157_reg_1241;
reg   [31:0] v212_reg_1246;
reg   [31:0] v217_reg_1251;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_56_fu_495_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_56_fu_528_p1;
wire   [63:0] zext_ln225_fu_558_p1;
wire   [63:0] zext_ln171_fu_571_p1;
wire   [63:0] zext_ln232_fu_583_p1;
wire   [63:0] zext_ln179_fu_596_p1;
reg   [7:0] v116_20_fu_84;
wire   [7:0] add_ln170_fu_544_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
wire    ap_block_pp0_stage1;
reg    v225_4_we1_local;
reg   [31:0] v225_4_d1_local;
wire   [31:0] bitcast_ln178_fu_695_p1;
wire    ap_block_pp0_stage2;
reg    v225_4_we0_local;
reg   [31:0] v225_4_d0_local;
wire   [31:0] bitcast_ln185_fu_700_p1;
wire   [31:0] bitcast_ln283_fu_759_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_763_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln192_fu_680_p1;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln198_fu_685_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln205_fu_690_p1;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln211_fu_705_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln218_fu_710_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln224_fu_714_p1;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
wire   [31:0] bitcast_ln231_fu_719_p1;
reg    v225_0_we0_local;
wire   [31:0] bitcast_ln237_fu_724_p1;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
reg    v225_1_we1_local;
wire   [31:0] bitcast_ln244_fu_729_p1;
reg    v225_1_we0_local;
wire   [31:0] bitcast_ln250_fu_734_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln257_fu_739_p1;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln263_fu_744_p1;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
reg    v225_3_we1_local;
wire   [31:0] bitcast_ln270_fu_749_p1;
reg    v225_3_we0_local;
wire   [31:0] bitcast_ln276_fu_754_p1;
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_399_p1;
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
wire   [12:0] add_ln175_fu_489_p2;
wire   [6:0] tmp_s_fu_500_p4;
wire   [7:0] or_ln179_s_fu_510_p3;
wire   [12:0] add_ln182_fu_522_p2;
wire   [12:0] add_ln225_fu_554_p2;
wire   [12:0] add_ln171_fu_567_p2;
wire   [12:0] add_ln232_fu_579_p2;
wire   [12:0] add_ln179_fu_592_p2;
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
#0 v116_20_fu_84 = 8'd0;
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
        v116_20_fu_84 <= 8'd0;
    end else if (((icmp_ln170_reg_845 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_20_fu_84 <= add_ln170_fu_544_p2;
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
        icmp_ln170_reg_845 <= icmp_ln170_fu_479_p2;
        v116_reg_840 <= ap_sig_allocacmp_v116;
        v225_0_addr_47_reg_899 <= zext_ln225_fu_558_p1;
        v225_0_addr_47_reg_899_pp0_iter2_reg <= v225_0_addr_47_reg_899;
        v225_0_addr_47_reg_899_pp0_iter3_reg <= v225_0_addr_47_reg_899_pp0_iter2_reg;
        v225_0_addr_48_reg_945 <= zext_ln232_fu_583_p1;
        v225_0_addr_48_reg_945_pp0_iter2_reg <= v225_0_addr_48_reg_945;
        v225_0_addr_48_reg_945_pp0_iter3_reg <= v225_0_addr_48_reg_945_pp0_iter2_reg;
        v225_1_addr_47_reg_904 <= zext_ln225_fu_558_p1;
        v225_1_addr_47_reg_904_pp0_iter2_reg <= v225_1_addr_47_reg_904;
        v225_1_addr_47_reg_904_pp0_iter3_reg <= v225_1_addr_47_reg_904_pp0_iter2_reg;
        v225_1_addr_48_reg_950 <= zext_ln232_fu_583_p1;
        v225_1_addr_48_reg_950_pp0_iter2_reg <= v225_1_addr_48_reg_950;
        v225_1_addr_48_reg_950_pp0_iter3_reg <= v225_1_addr_48_reg_950_pp0_iter2_reg;
        v225_2_addr_47_reg_909 <= zext_ln225_fu_558_p1;
        v225_2_addr_47_reg_909_pp0_iter2_reg <= v225_2_addr_47_reg_909;
        v225_2_addr_47_reg_909_pp0_iter3_reg <= v225_2_addr_47_reg_909_pp0_iter2_reg;
        v225_2_addr_48_reg_955 <= zext_ln232_fu_583_p1;
        v225_2_addr_48_reg_955_pp0_iter2_reg <= v225_2_addr_48_reg_955;
        v225_2_addr_48_reg_955_pp0_iter3_reg <= v225_2_addr_48_reg_955_pp0_iter2_reg;
        v225_3_addr_47_reg_914 <= zext_ln225_fu_558_p1;
        v225_3_addr_47_reg_914_pp0_iter2_reg <= v225_3_addr_47_reg_914;
        v225_3_addr_47_reg_914_pp0_iter3_reg <= v225_3_addr_47_reg_914_pp0_iter2_reg;
        v225_3_addr_48_reg_960 <= zext_ln232_fu_583_p1;
        v225_3_addr_48_reg_960_pp0_iter2_reg <= v225_3_addr_48_reg_960;
        v225_3_addr_48_reg_960_pp0_iter3_reg <= v225_3_addr_48_reg_960_pp0_iter2_reg;
        v225_3_addr_48_reg_960_pp0_iter4_reg <= v225_3_addr_48_reg_960_pp0_iter3_reg;
        v225_4_addr_45_reg_919 <= zext_ln171_fu_571_p1;
        v225_4_addr_45_reg_919_pp0_iter2_reg <= v225_4_addr_45_reg_919;
        v225_4_addr_45_reg_919_pp0_iter3_reg <= v225_4_addr_45_reg_919_pp0_iter2_reg;
        v225_4_addr_46_reg_965 <= zext_ln179_fu_596_p1;
        v225_4_addr_46_reg_965_pp0_iter2_reg <= v225_4_addr_46_reg_965;
        v225_4_addr_46_reg_965_pp0_iter3_reg <= v225_4_addr_46_reg_965_pp0_iter2_reg;
        v225_4_addr_47_reg_924 <= zext_ln225_fu_558_p1;
        v225_4_addr_47_reg_924_pp0_iter2_reg <= v225_4_addr_47_reg_924;
        v225_4_addr_47_reg_924_pp0_iter3_reg <= v225_4_addr_47_reg_924_pp0_iter2_reg;
        v225_4_addr_47_reg_924_pp0_iter4_reg <= v225_4_addr_47_reg_924_pp0_iter3_reg;
        v225_4_addr_48_reg_970 <= zext_ln232_fu_583_p1;
        v225_4_addr_48_reg_970_pp0_iter2_reg <= v225_4_addr_48_reg_970;
        v225_4_addr_48_reg_970_pp0_iter3_reg <= v225_4_addr_48_reg_970_pp0_iter2_reg;
        v225_4_addr_48_reg_970_pp0_iter4_reg <= v225_4_addr_48_reg_970_pp0_iter3_reg;
        v225_5_addr_45_reg_929 <= zext_ln171_fu_571_p1;
        v225_5_addr_45_reg_929_pp0_iter2_reg <= v225_5_addr_45_reg_929;
        v225_5_addr_45_reg_929_pp0_iter3_reg <= v225_5_addr_45_reg_929_pp0_iter2_reg;
        v225_5_addr_46_reg_975 <= zext_ln179_fu_596_p1;
        v225_5_addr_46_reg_975_pp0_iter2_reg <= v225_5_addr_46_reg_975;
        v225_5_addr_46_reg_975_pp0_iter3_reg <= v225_5_addr_46_reg_975_pp0_iter2_reg;
        v225_6_addr_45_reg_934 <= zext_ln171_fu_571_p1;
        v225_6_addr_45_reg_934_pp0_iter2_reg <= v225_6_addr_45_reg_934;
        v225_6_addr_45_reg_934_pp0_iter3_reg <= v225_6_addr_45_reg_934_pp0_iter2_reg;
        v225_6_addr_46_reg_980 <= zext_ln179_fu_596_p1;
        v225_6_addr_46_reg_980_pp0_iter2_reg <= v225_6_addr_46_reg_980;
        v225_6_addr_46_reg_980_pp0_iter3_reg <= v225_6_addr_46_reg_980_pp0_iter2_reg;
        v225_7_addr_45_reg_940 <= zext_ln171_fu_571_p1;
        v225_7_addr_45_reg_940_pp0_iter2_reg <= v225_7_addr_45_reg_940;
        v225_7_addr_45_reg_940_pp0_iter3_reg <= v225_7_addr_45_reg_940_pp0_iter2_reg;
        v225_7_addr_46_reg_986 <= zext_ln179_fu_596_p1;
        v225_7_addr_46_reg_986_pp0_iter2_reg <= v225_7_addr_46_reg_986;
        v225_7_addr_46_reg_986_pp0_iter3_reg <= v225_7_addr_46_reg_986_pp0_iter2_reg;
        zext_ln175_reg_849[7 : 0] <= zext_ln175_fu_485_p1[7 : 0];
        zext_ln182_reg_860[7 : 1] <= zext_ln182_fu_518_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_439 <= v225_4_q1;
        reg_443 <= v225_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_447 <= grp_fu_28731_p_dout0;
        reg_451 <= grp_fu_28735_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_455 <= grp_fu_28739_p_dout0;
        reg_459 <= grp_fu_28743_p_dout0;
        reg_463 <= grp_fu_28747_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_467 <= grp_fu_28731_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_881 <= v121_fu_533_p1;
        v127_reg_890 <= v127_fu_539_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_991 <= grp_fu_28751_p_dout0;
        v128_reg_996 <= grp_fu_28755_p_dout0;
        v134_reg_1006 <= grp_fu_28759_p_dout0;
        v139_reg_1016 <= grp_fu_28763_p_dout0;
        v145_reg_1026 <= grp_fu_28767_p_dout0;
        v225_0_load_46_reg_1046 <= v225_0_q1;
        v225_0_load_47_reg_1051 <= v225_0_q0;
        v225_1_load_46_reg_1056 <= v225_1_q1;
        v225_1_load_47_reg_1061 <= v225_1_q0;
        v225_2_load_46_reg_1066 <= v225_2_q1;
        v225_2_load_47_reg_1071 <= v225_2_q0;
        v225_3_load_46_reg_1076 <= v225_3_q1;
        v225_3_load_47_reg_1081 <= v225_3_q0;
        v225_5_load_44_reg_1001 <= v225_5_q1;
        v225_5_load_45_reg_1011 <= v225_5_q0;
        v225_6_load_44_reg_1021 <= v225_6_q1;
        v225_6_load_45_reg_1031 <= v225_6_q0;
        v225_7_load_44_reg_1036 <= v225_7_q1;
        v225_7_load_45_reg_1041 <= v225_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1111 <= grp_fu_28751_p_dout0;
        v156_reg_1116 <= grp_fu_28755_p_dout0;
        v161_reg_1121 <= grp_fu_28759_p_dout0;
        v167_reg_1126 <= grp_fu_28763_p_dout0;
        v172_reg_1131 <= grp_fu_28767_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1241 <= grp_fu_28735_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1161 <= grp_fu_28751_p_dout0;
        v183_reg_1166 <= grp_fu_28755_p_dout0;
        v189_reg_1171 <= grp_fu_28759_p_dout0;
        v194_reg_1176 <= grp_fu_28763_p_dout0;
        v200_reg_1181 <= grp_fu_28767_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1211 <= grp_fu_28751_p_dout0;
        v211_reg_1216 <= grp_fu_28755_p_dout0;
        v216_reg_1221 <= grp_fu_28759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1246 <= grp_fu_28735_p_dout0;
        v217_reg_1251 <= grp_fu_28739_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_2_load_4_reg_876 <= v227_2_q0;
        v227_2_load_reg_871 <= v227_2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_845 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v116 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116 = v116_20_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p0 = v202_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p0 = v174_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p0 = v147_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p0 = v117_fu_604_p1;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_399_p1 = v205_reg_1211;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_399_p1 = v178_reg_1161;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_399_p1 = v150_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_399_p1 = v122_reg_991;
    end else begin
        grp_fu_399_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p0 = v207_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p0 = v180_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p0 = v152_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p0 = v124_fu_609_p1;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_403_p1 = v211_reg_1216;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_403_p1 = v183_reg_1166;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_403_p1 = v156_reg_1116;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_403_p1 = v128_reg_996;
    end else begin
        grp_fu_403_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p0 = v213_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = v185_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = v158_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p0 = v130_fu_614_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_407_p1 = v216_reg_1221;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p1 = v189_reg_1171;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p1 = v161_reg_1121;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p1 = v134_reg_1006;
    end else begin
        grp_fu_407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v191_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v163_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v136_fu_618_p1;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p1 = v194_reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p1 = v167_reg_1126;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p1 = v139_reg_1016;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p0 = v196_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_415_p0 = v169_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p0 = v141_fu_622_p1;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p1 = v200_reg_1181;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_415_p1 = v172_reg_1131;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p1 = v145_reg_1026;
    end else begin
        grp_fu_415_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_419_p0 = v199_25;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_419_p0 = v177_25;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_419_p0 = v144_25;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p0 = v120_25;
    end else begin
        grp_fu_419_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_419_p1 = v121_reg_881;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_419_p1 = v127_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p1 = v121_fu_533_p1;
    end else begin
        grp_fu_419_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_423_p0 = v210_25;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_423_p0 = v177_25;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_423_p0 = v155_25;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p0 = v120_25;
    end else begin
        grp_fu_423_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_423_p1 = v127_reg_890;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_423_p1 = v121_reg_881;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_423_p1 = v127_fu_539_p1;
    end else begin
        grp_fu_423_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_427_p0 = v210_25;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_427_p0 = v188_25;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_427_p0 = v155_25;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_427_p0 = v133_25;
    end else begin
        grp_fu_427_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_427_p1 = v121_reg_881;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_427_p1 = v127_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_427_p1 = v121_fu_533_p1;
    end else begin
        grp_fu_427_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p0 = v188_25;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_431_p0 = v166_25;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p0 = v133_25;
    end else begin
        grp_fu_431_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_431_p1 = v127_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_431_p1 = v121_reg_881;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_431_p1 = v127_fu_539_p1;
    end else begin
        grp_fu_431_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_435_p0 = v199_25;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_435_p0 = v166_25;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_435_p0 = v144_25;
    end else begin
        grp_fu_435_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_435_p1 = v121_reg_881;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_435_p1 = v127_reg_890;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_435_p1 = v121_fu_533_p1;
    end else begin
        grp_fu_435_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_48_reg_945_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln232_fu_583_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_47_reg_899_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln225_fu_558_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v225_1_address0_local = v225_1_addr_48_reg_950_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln232_fu_583_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_47_reg_904_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln225_fu_558_p1;
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
        v225_2_address0_local = v225_2_addr_48_reg_955_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln232_fu_583_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_47_reg_909_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln225_fu_558_p1;
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
        v225_3_address0_local = v225_3_addr_48_reg_960_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln232_fu_583_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_47_reg_914_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln225_fu_558_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
        v225_4_address0_local = v225_4_addr_48_reg_970_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address0_local = v225_4_addr_46_reg_965_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_address0_local = v225_4_addr_48_reg_970;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_596_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_address1_local = v225_4_addr_47_reg_924_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address1_local = v225_4_addr_45_reg_919_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_address1_local = v225_4_addr_47_reg_924;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address1_local = zext_ln171_fu_571_p1;
    end else begin
        v225_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_4_ce0_local = 1'b1;
    end else begin
        v225_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_4_ce1_local = 1'b1;
    end else begin
        v225_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_d0_local = bitcast_ln289_fu_763_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_d0_local = bitcast_ln185_fu_700_p1;
    end else begin
        v225_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_d1_local = bitcast_ln283_fu_759_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_d1_local = bitcast_ln178_fu_695_p1;
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
        v225_5_address0_local = v225_5_addr_46_reg_975_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_596_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_5_address1_local = v225_5_addr_45_reg_929_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_571_p1;
    end else begin
        v225_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_5_ce0_local = 1'b1;
    end else begin
        v225_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
        v225_6_address0_local = v225_6_addr_45_reg_934_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_596_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_6_address1_local = v225_6_addr_46_reg_980_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address1_local = zext_ln171_fu_571_p1;
    end else begin
        v225_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_6_ce0_local = 1'b1;
    end else begin
        v225_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v225_7_address0_local = v225_7_addr_46_reg_986_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_596_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_7_address1_local = v225_7_addr_45_reg_940_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_571_p1;
    end else begin
        v225_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_7_ce0_local = 1'b1;
    end else begin
        v225_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln170_fu_544_p2 = (v116_reg_840 + 8'd2);
assign add_ln171_fu_567_p2 = (mul_ln238_2 + zext_ln175_reg_849);
assign add_ln175_fu_489_p2 = (mul_ln175 + zext_ln175_fu_485_p1);
assign add_ln179_fu_592_p2 = (mul_ln238_2 + zext_ln182_reg_860);
assign add_ln182_fu_522_p2 = (mul_ln175 + zext_ln182_fu_518_p1);
assign add_ln225_fu_554_p2 = (mul_ln225_2 + zext_ln175_reg_849);
assign add_ln232_fu_579_p2 = (mul_ln225_2 + zext_ln182_reg_860);
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
assign bitcast_ln178_fu_695_p1 = reg_447;
assign bitcast_ln185_fu_700_p1 = reg_451;
assign bitcast_ln192_fu_680_p1 = reg_455;
assign bitcast_ln198_fu_685_p1 = reg_459;
assign bitcast_ln205_fu_690_p1 = reg_463;
assign bitcast_ln211_fu_705_p1 = reg_467;
assign bitcast_ln218_fu_710_p1 = v157_reg_1241;
assign bitcast_ln224_fu_714_p1 = reg_455;
assign bitcast_ln231_fu_719_p1 = reg_459;
assign bitcast_ln237_fu_724_p1 = reg_463;
assign bitcast_ln244_fu_729_p1 = reg_447;
assign bitcast_ln250_fu_734_p1 = reg_451;
assign bitcast_ln257_fu_739_p1 = reg_455;
assign bitcast_ln263_fu_744_p1 = reg_459;
assign bitcast_ln270_fu_749_p1 = reg_463;
assign bitcast_ln276_fu_754_p1 = reg_467;
assign bitcast_ln283_fu_759_p1 = v212_reg_1246;
assign bitcast_ln289_fu_763_p1 = v217_reg_1251;
assign grp_fu_28731_p_ce = 1'b1;
assign grp_fu_28731_p_din0 = grp_fu_399_p0;
assign grp_fu_28731_p_din1 = grp_fu_399_p1;
assign grp_fu_28731_p_opcode = 2'd0;
assign grp_fu_28735_p_ce = 1'b1;
assign grp_fu_28735_p_din0 = grp_fu_403_p0;
assign grp_fu_28735_p_din1 = grp_fu_403_p1;
assign grp_fu_28735_p_opcode = 2'd0;
assign grp_fu_28739_p_ce = 1'b1;
assign grp_fu_28739_p_din0 = grp_fu_407_p0;
assign grp_fu_28739_p_din1 = grp_fu_407_p1;
assign grp_fu_28739_p_opcode = 2'd0;
assign grp_fu_28743_p_ce = 1'b1;
assign grp_fu_28743_p_din0 = grp_fu_411_p0;
assign grp_fu_28743_p_din1 = grp_fu_411_p1;
assign grp_fu_28743_p_opcode = 2'd0;
assign grp_fu_28747_p_ce = 1'b1;
assign grp_fu_28747_p_din0 = grp_fu_415_p0;
assign grp_fu_28747_p_din1 = grp_fu_415_p1;
assign grp_fu_28747_p_opcode = 2'd0;
assign grp_fu_28751_p_ce = 1'b1;
assign grp_fu_28751_p_din0 = grp_fu_419_p0;
assign grp_fu_28751_p_din1 = grp_fu_419_p1;
assign grp_fu_28755_p_ce = 1'b1;
assign grp_fu_28755_p_din0 = grp_fu_423_p0;
assign grp_fu_28755_p_din1 = grp_fu_423_p1;
assign grp_fu_28759_p_ce = 1'b1;
assign grp_fu_28759_p_din0 = grp_fu_427_p0;
assign grp_fu_28759_p_din1 = grp_fu_427_p1;
assign grp_fu_28763_p_ce = 1'b1;
assign grp_fu_28763_p_din0 = grp_fu_431_p0;
assign grp_fu_28763_p_din1 = grp_fu_431_p1;
assign grp_fu_28767_p_ce = 1'b1;
assign grp_fu_28767_p_din0 = grp_fu_435_p0;
assign grp_fu_28767_p_din1 = grp_fu_435_p1;
assign icmp_ln170_fu_479_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_s_fu_510_p3 = {{tmp_s_fu_500_p4}, {1'd1}};
assign tmp_s_fu_500_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_604_p1 = reg_439;
assign v121_fu_533_p1 = v227_2_load_reg_871;
assign v124_fu_609_p1 = reg_443;
assign v127_fu_539_p1 = v227_2_load_4_reg_876;
assign v130_fu_614_p1 = v225_5_load_44_reg_1001;
assign v136_fu_618_p1 = v225_5_load_45_reg_1011;
assign v141_fu_622_p1 = v225_6_load_44_reg_1021;
assign v147_fu_626_p1 = v225_6_load_45_reg_1031;
assign v152_fu_630_p1 = v225_7_load_44_reg_1036;
assign v158_fu_634_p1 = v225_7_load_45_reg_1041;
assign v163_fu_638_p1 = v225_0_load_46_reg_1046;
assign v169_fu_642_p1 = v225_0_load_47_reg_1051;
assign v174_fu_646_p1 = v225_1_load_46_reg_1056;
assign v180_fu_650_p1 = v225_1_load_47_reg_1061;
assign v185_fu_654_p1 = v225_2_load_46_reg_1066;
assign v191_fu_658_p1 = v225_2_load_47_reg_1071;
assign v196_fu_662_p1 = v225_3_load_46_reg_1076;
assign v202_fu_666_p1 = v225_3_load_47_reg_1081;
assign v207_fu_670_p1 = reg_439;
assign v213_fu_675_p1 = reg_443;
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = bitcast_ln237_fu_724_p1;
assign v225_0_d1 = bitcast_ln231_fu_719_p1;
assign v225_0_we0 = v225_0_we0_local;
assign v225_0_we1 = v225_0_we1_local;
assign v225_1_address0 = v225_1_address0_local;
assign v225_1_address1 = v225_1_address1_local;
assign v225_1_ce0 = v225_1_ce0_local;
assign v225_1_ce1 = v225_1_ce1_local;
assign v225_1_d0 = bitcast_ln250_fu_734_p1;
assign v225_1_d1 = bitcast_ln244_fu_729_p1;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = bitcast_ln263_fu_744_p1;
assign v225_2_d1 = bitcast_ln257_fu_739_p1;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = bitcast_ln276_fu_754_p1;
assign v225_3_d1 = bitcast_ln270_fu_749_p1;
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
assign v225_5_d0 = bitcast_ln198_fu_685_p1;
assign v225_5_d1 = bitcast_ln192_fu_680_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln205_fu_690_p1;
assign v225_6_d1 = bitcast_ln211_fu_705_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln224_fu_714_p1;
assign v225_7_d1 = bitcast_ln218_fu_710_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_2_address0 = zext_ln182_56_fu_528_p1;
assign v227_2_address1 = zext_ln175_56_fu_495_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign zext_ln171_fu_571_p1 = add_ln171_fu_567_p2;
assign zext_ln175_56_fu_495_p1 = add_ln175_fu_489_p2;
assign zext_ln175_fu_485_p1 = ap_sig_allocacmp_v116;
assign zext_ln179_fu_596_p1 = add_ln179_fu_592_p2;
assign zext_ln182_56_fu_528_p1 = add_ln182_fu_522_p2;
assign zext_ln182_fu_518_p1 = or_ln179_s_fu_510_p3;
assign zext_ln225_fu_558_p1 = add_ln225_fu_554_p2;
assign zext_ln232_fu_583_p1 = add_ln232_fu_579_p2;
always @ (posedge ap_clk) begin
    zext_ln175_reg_849[12:8] <= 5'b00000;
    zext_ln182_reg_860[0] <= 1'b1;
    zext_ln182_reg_860[12:8] <= 5'b00000;
end
endmodule 
