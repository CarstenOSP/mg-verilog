module kernel_2mm_kernel_2mm_node1_Pipeline_label_550 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175_1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,mul_ln171_6,mul_ln277_6,v120_6,v133_6,v144_6,v155_6,v166_6,v177_6,v188_6,v199_6,v210_6,grp_fu_28760_p_din0,grp_fu_28760_p_din1,grp_fu_28760_p_opcode,grp_fu_28760_p_dout0,grp_fu_28760_p_ce,grp_fu_28764_p_din0,grp_fu_28764_p_din1,grp_fu_28764_p_opcode,grp_fu_28764_p_dout0,grp_fu_28764_p_ce,grp_fu_28768_p_din0,grp_fu_28768_p_din1,grp_fu_28768_p_opcode,grp_fu_28768_p_dout0,grp_fu_28768_p_ce,grp_fu_28772_p_din0,grp_fu_28772_p_din1,grp_fu_28772_p_opcode,grp_fu_28772_p_dout0,grp_fu_28772_p_ce,grp_fu_28776_p_din0,grp_fu_28776_p_din1,grp_fu_28776_p_opcode,grp_fu_28776_p_dout0,grp_fu_28776_p_ce,grp_fu_28780_p_din0,grp_fu_28780_p_din1,grp_fu_28780_p_dout0,grp_fu_28780_p_ce,grp_fu_28784_p_din0,grp_fu_28784_p_din1,grp_fu_28784_p_dout0,grp_fu_28784_p_ce,grp_fu_28788_p_din0,grp_fu_28788_p_din1,grp_fu_28788_p_dout0,grp_fu_28788_p_ce,grp_fu_28792_p_din0,grp_fu_28792_p_din1,grp_fu_28792_p_dout0,grp_fu_28792_p_ce,grp_fu_28796_p_din0,grp_fu_28796_p_din1,grp_fu_28796_p_dout0,grp_fu_28796_p_ce); 
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
input  [13:0] mul_ln175_1;
output  [13:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [13:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
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
reg   [0:0] icmp_ln170_reg_869;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_445;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_449;
reg   [31:0] reg_453;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_457;
reg   [31:0] reg_461;
reg   [31:0] reg_465;
reg   [31:0] reg_469;
reg   [31:0] reg_473;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_19_reg_862;
reg   [7:0] v116_19_reg_862_pp0_iter1_reg;
wire   [0:0] icmp_ln170_fu_485_p2;
wire   [7:0] or_ln179_s_fu_516_p3;
reg   [7:0] or_ln179_s_reg_878;
reg   [7:0] or_ln179_s_reg_878_pp0_iter1_reg;
reg   [31:0] v227_2_load_reg_889;
reg   [31:0] v227_2_load_8_reg_894;
wire   [31:0] v121_fu_539_p1;
reg   [31:0] v121_reg_899;
wire   [31:0] v127_fu_545_p1;
reg   [31:0] v127_reg_908;
reg   [12:0] v225_0_addr_reg_917;
reg   [12:0] v225_0_addr_reg_917_pp0_iter2_reg;
reg   [12:0] v225_0_addr_reg_917_pp0_iter3_reg;
reg   [12:0] v225_1_addr_reg_922;
reg   [12:0] v225_1_addr_reg_922_pp0_iter2_reg;
reg   [12:0] v225_1_addr_reg_922_pp0_iter3_reg;
reg   [12:0] v225_2_addr_reg_927;
reg   [12:0] v225_2_addr_reg_927_pp0_iter2_reg;
reg   [12:0] v225_2_addr_reg_927_pp0_iter3_reg;
reg   [12:0] v225_3_addr_reg_933;
reg   [12:0] v225_3_addr_reg_933_pp0_iter2_reg;
reg   [12:0] v225_3_addr_reg_933_pp0_iter3_reg;
reg   [12:0] v225_4_addr_reg_938;
reg   [12:0] v225_4_addr_reg_938_pp0_iter2_reg;
reg   [12:0] v225_4_addr_reg_938_pp0_iter3_reg;
reg   [12:0] v225_5_addr_reg_943;
reg   [12:0] v225_5_addr_reg_943_pp0_iter2_reg;
reg   [12:0] v225_5_addr_reg_943_pp0_iter3_reg;
reg   [12:0] v225_6_addr_reg_948;
reg   [12:0] v225_6_addr_reg_948_pp0_iter2_reg;
reg   [12:0] v225_6_addr_reg_948_pp0_iter3_reg;
reg   [12:0] v225_7_addr_reg_953;
reg   [12:0] v225_7_addr_reg_953_pp0_iter2_reg;
reg   [12:0] v225_7_addr_reg_953_pp0_iter3_reg;
reg   [12:0] v225_0_addr_23_reg_958;
reg   [12:0] v225_0_addr_23_reg_958_pp0_iter2_reg;
reg   [12:0] v225_0_addr_23_reg_958_pp0_iter3_reg;
reg   [12:0] v225_1_addr_24_reg_963;
reg   [12:0] v225_1_addr_24_reg_963_pp0_iter2_reg;
reg   [12:0] v225_1_addr_24_reg_963_pp0_iter3_reg;
reg   [12:0] v225_2_addr_23_reg_968;
reg   [12:0] v225_2_addr_23_reg_968_pp0_iter2_reg;
reg   [12:0] v225_2_addr_23_reg_968_pp0_iter3_reg;
reg   [12:0] v225_3_addr_23_reg_974;
reg   [12:0] v225_3_addr_23_reg_974_pp0_iter2_reg;
reg   [12:0] v225_3_addr_23_reg_974_pp0_iter3_reg;
reg   [12:0] v225_4_addr_23_reg_979;
reg   [12:0] v225_4_addr_23_reg_979_pp0_iter2_reg;
reg   [12:0] v225_4_addr_23_reg_979_pp0_iter3_reg;
reg   [12:0] v225_5_addr_25_reg_984;
reg   [12:0] v225_5_addr_25_reg_984_pp0_iter2_reg;
reg   [12:0] v225_5_addr_25_reg_984_pp0_iter3_reg;
reg   [12:0] v225_6_addr_25_reg_989;
reg   [12:0] v225_6_addr_25_reg_989_pp0_iter2_reg;
reg   [12:0] v225_6_addr_25_reg_989_pp0_iter3_reg;
reg   [12:0] v225_7_addr_25_reg_994;
reg   [12:0] v225_7_addr_25_reg_994_pp0_iter2_reg;
reg   [12:0] v225_7_addr_25_reg_994_pp0_iter3_reg;
reg   [12:0] v225_7_addr_25_reg_994_pp0_iter4_reg;
reg   [12:0] v225_0_addr_22_reg_999;
reg   [12:0] v225_0_addr_22_reg_999_pp0_iter2_reg;
reg   [12:0] v225_0_addr_22_reg_999_pp0_iter3_reg;
reg   [12:0] v225_0_addr_22_reg_999_pp0_iter4_reg;
reg   [31:0] v122_reg_1004;
reg   [12:0] v225_0_addr_24_reg_1009;
reg   [12:0] v225_0_addr_24_reg_1009_pp0_iter2_reg;
reg   [12:0] v225_0_addr_24_reg_1009_pp0_iter3_reg;
reg   [12:0] v225_0_addr_24_reg_1009_pp0_iter4_reg;
reg   [31:0] v128_reg_1014;
reg   [31:0] v225_1_load_reg_1019;
reg   [31:0] v134_reg_1024;
reg   [31:0] v225_1_load_24_reg_1029;
reg   [31:0] v139_reg_1034;
reg   [31:0] v225_2_load_reg_1039;
reg   [31:0] v145_reg_1044;
reg   [31:0] v225_2_load_23_reg_1049;
reg   [31:0] v225_3_load_reg_1054;
reg   [31:0] v225_3_load_23_reg_1059;
reg   [31:0] v225_4_load_reg_1064;
reg   [31:0] v225_4_load_23_reg_1069;
reg   [31:0] v225_5_load_reg_1074;
reg   [31:0] v225_5_load_25_reg_1079;
reg   [31:0] v225_6_load_reg_1084;
reg   [31:0] v225_6_load_25_reg_1089;
reg   [31:0] v225_7_load_reg_1094;
reg   [31:0] v225_7_load_25_reg_1099;
wire   [31:0] v117_fu_626_p1;
wire   [31:0] v124_fu_631_p1;
wire   [31:0] v130_fu_636_p1;
wire   [31:0] v136_fu_640_p1;
wire   [31:0] v141_fu_644_p1;
reg   [31:0] v150_reg_1129;
reg   [31:0] v156_reg_1134;
reg   [31:0] v161_reg_1139;
reg   [31:0] v167_reg_1144;
reg   [31:0] v172_reg_1149;
wire   [31:0] v147_fu_648_p1;
wire   [31:0] v152_fu_652_p1;
wire   [31:0] v158_fu_656_p1;
wire   [31:0] v163_fu_660_p1;
wire   [31:0] v169_fu_664_p1;
reg   [31:0] v178_reg_1179;
reg   [31:0] v183_reg_1184;
reg   [31:0] v189_reg_1189;
reg   [31:0] v194_reg_1194;
reg   [31:0] v200_reg_1199;
wire   [31:0] v174_fu_668_p1;
wire   [31:0] v180_fu_672_p1;
wire   [31:0] v185_fu_676_p1;
wire   [31:0] v191_fu_680_p1;
wire   [31:0] v196_fu_684_p1;
reg   [31:0] v205_reg_1229;
reg   [31:0] v211_reg_1234;
reg   [31:0] v216_reg_1239;
wire   [31:0] v202_fu_688_p1;
wire   [31:0] v207_fu_692_p1;
wire   [31:0] v213_fu_697_p1;
reg   [31:0] v157_reg_1259;
reg   [31:0] v212_reg_1264;
reg   [31:0] v217_reg_1269;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_42_fu_501_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_42_fu_534_p1;
wire   [63:0] zext_ln171_fu_568_p1;
wire   [63:0] zext_ln179_fu_588_p1;
wire   [63:0] zext_ln277_fu_608_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln284_fu_621_p1;
reg   [7:0] v116_fu_88;
wire   [7:0] add_ln170_fu_550_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_19;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_717_p1;
wire    ap_block_pp0_stage2;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_722_p1;
wire   [31:0] bitcast_ln283_fu_781_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_785_p1;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
reg    v225_1_we1_local;
wire   [31:0] bitcast_ln192_fu_702_p1;
reg    v225_1_we0_local;
wire   [31:0] bitcast_ln198_fu_707_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln205_fu_712_p1;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln211_fu_727_p1;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
reg    v225_3_we1_local;
wire   [31:0] bitcast_ln218_fu_732_p1;
reg    v225_3_we0_local;
wire   [31:0] bitcast_ln224_fu_736_p1;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
reg    v225_4_we1_local;
wire   [31:0] bitcast_ln231_fu_741_p1;
reg    v225_4_we0_local;
wire   [31:0] bitcast_ln237_fu_746_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln244_fu_751_p1;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln250_fu_756_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln257_fu_761_p1;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln263_fu_766_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln270_fu_771_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln276_fu_776_p1;
reg   [31:0] grp_fu_405_p0;
reg   [31:0] grp_fu_405_p1;
reg   [31:0] grp_fu_409_p0;
reg   [31:0] grp_fu_409_p1;
reg   [31:0] grp_fu_413_p0;
reg   [31:0] grp_fu_413_p1;
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
wire   [13:0] zext_ln175_41_fu_491_p1;
wire   [13:0] add_ln175_fu_495_p2;
wire   [6:0] tmp_s_fu_506_p4;
wire   [13:0] zext_ln182_41_fu_524_p1;
wire   [13:0] add_ln182_fu_528_p2;
wire   [11:0] zext_ln175_40_fu_560_p1;
wire   [11:0] add_ln171_fu_563_p2;
wire   [11:0] zext_ln182_40_fu_580_p1;
wire   [11:0] add_ln179_fu_583_p2;
wire   [12:0] zext_ln175_fu_600_p1;
wire   [12:0] add_ln277_fu_603_p2;
wire   [12:0] zext_ln182_fu_613_p1;
wire   [12:0] add_ln284_fu_616_p2;
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
#0 v116_fu_88 = 8'd0;
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
        v116_fu_88 <= 8'd0;
    end else if (((icmp_ln170_reg_869 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_fu_88 <= add_ln170_fu_550_p2;
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
        icmp_ln170_reg_869 <= icmp_ln170_fu_485_p2;
        or_ln179_s_reg_878[7 : 1] <= or_ln179_s_fu_516_p3[7 : 1];
        or_ln179_s_reg_878_pp0_iter1_reg[7 : 1] <= or_ln179_s_reg_878[7 : 1];
        v116_19_reg_862 <= ap_sig_allocacmp_v116_19;
        v116_19_reg_862_pp0_iter1_reg <= v116_19_reg_862;
        v225_0_addr_23_reg_958[11 : 0] <= zext_ln179_fu_588_p1[11 : 0];
        v225_0_addr_23_reg_958_pp0_iter2_reg[11 : 0] <= v225_0_addr_23_reg_958[11 : 0];
        v225_0_addr_23_reg_958_pp0_iter3_reg[11 : 0] <= v225_0_addr_23_reg_958_pp0_iter2_reg[11 : 0];
        v225_0_addr_reg_917[11 : 0] <= zext_ln171_fu_568_p1[11 : 0];
        v225_0_addr_reg_917_pp0_iter2_reg[11 : 0] <= v225_0_addr_reg_917[11 : 0];
        v225_0_addr_reg_917_pp0_iter3_reg[11 : 0] <= v225_0_addr_reg_917_pp0_iter2_reg[11 : 0];
        v225_1_addr_24_reg_963[11 : 0] <= zext_ln179_fu_588_p1[11 : 0];
        v225_1_addr_24_reg_963_pp0_iter2_reg[11 : 0] <= v225_1_addr_24_reg_963[11 : 0];
        v225_1_addr_24_reg_963_pp0_iter3_reg[11 : 0] <= v225_1_addr_24_reg_963_pp0_iter2_reg[11 : 0];
        v225_1_addr_reg_922[11 : 0] <= zext_ln171_fu_568_p1[11 : 0];
        v225_1_addr_reg_922_pp0_iter2_reg[11 : 0] <= v225_1_addr_reg_922[11 : 0];
        v225_1_addr_reg_922_pp0_iter3_reg[11 : 0] <= v225_1_addr_reg_922_pp0_iter2_reg[11 : 0];
        v225_2_addr_23_reg_968[11 : 0] <= zext_ln179_fu_588_p1[11 : 0];
        v225_2_addr_23_reg_968_pp0_iter2_reg[11 : 0] <= v225_2_addr_23_reg_968[11 : 0];
        v225_2_addr_23_reg_968_pp0_iter3_reg[11 : 0] <= v225_2_addr_23_reg_968_pp0_iter2_reg[11 : 0];
        v225_2_addr_reg_927[11 : 0] <= zext_ln171_fu_568_p1[11 : 0];
        v225_2_addr_reg_927_pp0_iter2_reg[11 : 0] <= v225_2_addr_reg_927[11 : 0];
        v225_2_addr_reg_927_pp0_iter3_reg[11 : 0] <= v225_2_addr_reg_927_pp0_iter2_reg[11 : 0];
        v225_3_addr_23_reg_974[11 : 0] <= zext_ln179_fu_588_p1[11 : 0];
        v225_3_addr_23_reg_974_pp0_iter2_reg[11 : 0] <= v225_3_addr_23_reg_974[11 : 0];
        v225_3_addr_23_reg_974_pp0_iter3_reg[11 : 0] <= v225_3_addr_23_reg_974_pp0_iter2_reg[11 : 0];
        v225_3_addr_reg_933[11 : 0] <= zext_ln171_fu_568_p1[11 : 0];
        v225_3_addr_reg_933_pp0_iter2_reg[11 : 0] <= v225_3_addr_reg_933[11 : 0];
        v225_3_addr_reg_933_pp0_iter3_reg[11 : 0] <= v225_3_addr_reg_933_pp0_iter2_reg[11 : 0];
        v225_4_addr_23_reg_979[11 : 0] <= zext_ln179_fu_588_p1[11 : 0];
        v225_4_addr_23_reg_979_pp0_iter2_reg[11 : 0] <= v225_4_addr_23_reg_979[11 : 0];
        v225_4_addr_23_reg_979_pp0_iter3_reg[11 : 0] <= v225_4_addr_23_reg_979_pp0_iter2_reg[11 : 0];
        v225_4_addr_reg_938[11 : 0] <= zext_ln171_fu_568_p1[11 : 0];
        v225_4_addr_reg_938_pp0_iter2_reg[11 : 0] <= v225_4_addr_reg_938[11 : 0];
        v225_4_addr_reg_938_pp0_iter3_reg[11 : 0] <= v225_4_addr_reg_938_pp0_iter2_reg[11 : 0];
        v225_5_addr_25_reg_984[11 : 0] <= zext_ln179_fu_588_p1[11 : 0];
        v225_5_addr_25_reg_984_pp0_iter2_reg[11 : 0] <= v225_5_addr_25_reg_984[11 : 0];
        v225_5_addr_25_reg_984_pp0_iter3_reg[11 : 0] <= v225_5_addr_25_reg_984_pp0_iter2_reg[11 : 0];
        v225_5_addr_reg_943[11 : 0] <= zext_ln171_fu_568_p1[11 : 0];
        v225_5_addr_reg_943_pp0_iter2_reg[11 : 0] <= v225_5_addr_reg_943[11 : 0];
        v225_5_addr_reg_943_pp0_iter3_reg[11 : 0] <= v225_5_addr_reg_943_pp0_iter2_reg[11 : 0];
        v225_6_addr_25_reg_989[11 : 0] <= zext_ln179_fu_588_p1[11 : 0];
        v225_6_addr_25_reg_989_pp0_iter2_reg[11 : 0] <= v225_6_addr_25_reg_989[11 : 0];
        v225_6_addr_25_reg_989_pp0_iter3_reg[11 : 0] <= v225_6_addr_25_reg_989_pp0_iter2_reg[11 : 0];
        v225_6_addr_reg_948[11 : 0] <= zext_ln171_fu_568_p1[11 : 0];
        v225_6_addr_reg_948_pp0_iter2_reg[11 : 0] <= v225_6_addr_reg_948[11 : 0];
        v225_6_addr_reg_948_pp0_iter3_reg[11 : 0] <= v225_6_addr_reg_948_pp0_iter2_reg[11 : 0];
        v225_7_addr_25_reg_994[11 : 0] <= zext_ln179_fu_588_p1[11 : 0];
        v225_7_addr_25_reg_994_pp0_iter2_reg[11 : 0] <= v225_7_addr_25_reg_994[11 : 0];
        v225_7_addr_25_reg_994_pp0_iter3_reg[11 : 0] <= v225_7_addr_25_reg_994_pp0_iter2_reg[11 : 0];
        v225_7_addr_25_reg_994_pp0_iter4_reg[11 : 0] <= v225_7_addr_25_reg_994_pp0_iter3_reg[11 : 0];
        v225_7_addr_reg_953[11 : 0] <= zext_ln171_fu_568_p1[11 : 0];
        v225_7_addr_reg_953_pp0_iter2_reg[11 : 0] <= v225_7_addr_reg_953[11 : 0];
        v225_7_addr_reg_953_pp0_iter3_reg[11 : 0] <= v225_7_addr_reg_953_pp0_iter2_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_445 <= v225_0_q1;
        reg_449 <= v225_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_453 <= grp_fu_28760_p_dout0;
        reg_457 <= grp_fu_28764_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_461 <= grp_fu_28768_p_dout0;
        reg_465 <= grp_fu_28772_p_dout0;
        reg_469 <= grp_fu_28776_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_473 <= grp_fu_28760_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_899 <= v121_fu_539_p1;
        v127_reg_908 <= v127_fu_545_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_1004 <= grp_fu_28780_p_dout0;
        v128_reg_1014 <= grp_fu_28784_p_dout0;
        v134_reg_1024 <= grp_fu_28788_p_dout0;
        v139_reg_1034 <= grp_fu_28792_p_dout0;
        v145_reg_1044 <= grp_fu_28796_p_dout0;
        v225_1_load_24_reg_1029 <= v225_1_q0;
        v225_1_load_reg_1019 <= v225_1_q1;
        v225_2_load_23_reg_1049 <= v225_2_q0;
        v225_2_load_reg_1039 <= v225_2_q1;
        v225_3_load_23_reg_1059 <= v225_3_q0;
        v225_3_load_reg_1054 <= v225_3_q1;
        v225_4_load_23_reg_1069 <= v225_4_q0;
        v225_4_load_reg_1064 <= v225_4_q1;
        v225_5_load_25_reg_1079 <= v225_5_q0;
        v225_5_load_reg_1074 <= v225_5_q1;
        v225_6_load_25_reg_1089 <= v225_6_q0;
        v225_6_load_reg_1084 <= v225_6_q1;
        v225_7_load_25_reg_1099 <= v225_7_q0;
        v225_7_load_reg_1094 <= v225_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1129 <= grp_fu_28780_p_dout0;
        v156_reg_1134 <= grp_fu_28784_p_dout0;
        v161_reg_1139 <= grp_fu_28788_p_dout0;
        v167_reg_1144 <= grp_fu_28792_p_dout0;
        v172_reg_1149 <= grp_fu_28796_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1259 <= grp_fu_28764_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1179 <= grp_fu_28780_p_dout0;
        v183_reg_1184 <= grp_fu_28784_p_dout0;
        v189_reg_1189 <= grp_fu_28788_p_dout0;
        v194_reg_1194 <= grp_fu_28792_p_dout0;
        v200_reg_1199 <= grp_fu_28796_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1229 <= grp_fu_28780_p_dout0;
        v211_reg_1234 <= grp_fu_28784_p_dout0;
        v216_reg_1239 <= grp_fu_28788_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1264 <= grp_fu_28764_p_dout0;
        v217_reg_1269 <= grp_fu_28768_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_addr_22_reg_999 <= zext_ln277_fu_608_p1;
        v225_0_addr_22_reg_999_pp0_iter2_reg <= v225_0_addr_22_reg_999;
        v225_0_addr_22_reg_999_pp0_iter3_reg <= v225_0_addr_22_reg_999_pp0_iter2_reg;
        v225_0_addr_22_reg_999_pp0_iter4_reg <= v225_0_addr_22_reg_999_pp0_iter3_reg;
        v225_0_addr_24_reg_1009 <= zext_ln284_fu_621_p1;
        v225_0_addr_24_reg_1009_pp0_iter2_reg <= v225_0_addr_24_reg_1009;
        v225_0_addr_24_reg_1009_pp0_iter3_reg <= v225_0_addr_24_reg_1009_pp0_iter2_reg;
        v225_0_addr_24_reg_1009_pp0_iter4_reg <= v225_0_addr_24_reg_1009_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_2_load_8_reg_894 <= v227_2_q0;
        v227_2_load_reg_889 <= v227_2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_869 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v116_19 = v116_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p0 = v202_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p0 = v174_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p0 = v147_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p0 = v117_fu_626_p1;
    end else begin
        grp_fu_405_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p1 = v205_reg_1229;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p1 = v178_reg_1179;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p1 = v150_reg_1129;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p1 = v122_reg_1004;
    end else begin
        grp_fu_405_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p0 = v207_fu_692_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p0 = v180_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p0 = v152_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p0 = v124_fu_631_p1;
    end else begin
        grp_fu_409_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p1 = v211_reg_1234;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p1 = v183_reg_1184;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p1 = v156_reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p1 = v128_reg_1014;
    end else begin
        grp_fu_409_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_413_p0 = v213_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p0 = v185_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p0 = v158_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p0 = v130_fu_636_p1;
    end else begin
        grp_fu_413_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_413_p1 = v216_reg_1239;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p1 = v189_reg_1189;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p1 = v161_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p1 = v134_reg_1024;
    end else begin
        grp_fu_413_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p0 = v191_fu_680_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p0 = v163_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p0 = v136_fu_640_p1;
    end else begin
        grp_fu_417_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p1 = v194_reg_1194;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p1 = v167_reg_1144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p1 = v139_reg_1034;
    end else begin
        grp_fu_417_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p0 = v196_fu_684_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p0 = v169_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p0 = v141_fu_644_p1;
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p1 = v200_reg_1199;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p1 = v172_reg_1149;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p1 = v145_reg_1044;
    end else begin
        grp_fu_421_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_425_p0 = v199_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p0 = v177_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_425_p0 = v144_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p0 = v120_6;
    end else begin
        grp_fu_425_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p1 = v121_reg_899;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_425_p1 = v127_reg_908;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p1 = v121_fu_539_p1;
    end else begin
        grp_fu_425_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_429_p0 = v210_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p0 = v177_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_429_p0 = v155_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p0 = v120_6;
    end else begin
        grp_fu_429_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p1 = v127_reg_908;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_429_p1 = v121_reg_899;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p1 = v127_fu_545_p1;
    end else begin
        grp_fu_429_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_433_p0 = v210_6;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p0 = v188_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p0 = v155_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p0 = v133_6;
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p1 = v121_reg_899;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_433_p1 = v127_reg_908;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p1 = v121_fu_539_p1;
    end else begin
        grp_fu_433_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p0 = v188_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = v166_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p0 = v133_6;
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p1 = v127_reg_908;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p1 = v121_reg_899;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p1 = v127_fu_545_p1;
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p0 = v199_6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p0 = v166_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p0 = v144_6;
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p1 = v121_reg_899;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p1 = v127_reg_908;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p1 = v121_fu_539_p1;
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_24_reg_1009_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_23_reg_958_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln284_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_588_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_22_reg_999_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_reg_917_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln277_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_568_p1;
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
        v225_0_d0_local = bitcast_ln289_fu_785_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d0_local = bitcast_ln185_fu_722_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln283_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d1_local = bitcast_ln178_fu_717_p1;
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
        v225_1_address0_local = v225_1_addr_24_reg_963_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_588_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_reg_922_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_568_p1;
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
        v225_2_address0_local = v225_2_addr_reg_927_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_588_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_23_reg_968_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_568_p1;
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
        v225_3_address0_local = v225_3_addr_23_reg_974_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_588_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_reg_933_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_568_p1;
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
        v225_4_address0_local = v225_4_addr_23_reg_979_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_588_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address1_local = v225_4_addr_reg_938_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address1_local = zext_ln171_fu_568_p1;
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
        v225_5_address0_local = v225_5_addr_25_reg_984_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_588_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_address1_local = v225_5_addr_reg_943_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_568_p1;
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
        v225_6_address0_local = v225_6_addr_25_reg_989_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_588_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_address1_local = v225_6_addr_reg_948_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address1_local = zext_ln171_fu_568_p1;
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
        v225_7_address0_local = v225_7_addr_25_reg_994_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_588_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_7_address1_local = v225_7_addr_reg_953_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_568_p1;
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
assign add_ln170_fu_550_p2 = (v116_19_reg_862 + 8'd2);
assign add_ln171_fu_563_p2 = (mul_ln171_6 + zext_ln175_40_fu_560_p1);
assign add_ln175_fu_495_p2 = (mul_ln175_1 + zext_ln175_41_fu_491_p1);
assign add_ln179_fu_583_p2 = (mul_ln171_6 + zext_ln182_40_fu_580_p1);
assign add_ln182_fu_528_p2 = (mul_ln175_1 + zext_ln182_41_fu_524_p1);
assign add_ln277_fu_603_p2 = (mul_ln277_6 + zext_ln175_fu_600_p1);
assign add_ln284_fu_616_p2 = (mul_ln277_6 + zext_ln182_fu_613_p1);
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
assign bitcast_ln178_fu_717_p1 = reg_453;
assign bitcast_ln185_fu_722_p1 = reg_457;
assign bitcast_ln192_fu_702_p1 = reg_461;
assign bitcast_ln198_fu_707_p1 = reg_465;
assign bitcast_ln205_fu_712_p1 = reg_469;
assign bitcast_ln211_fu_727_p1 = reg_473;
assign bitcast_ln218_fu_732_p1 = v157_reg_1259;
assign bitcast_ln224_fu_736_p1 = reg_461;
assign bitcast_ln231_fu_741_p1 = reg_465;
assign bitcast_ln237_fu_746_p1 = reg_469;
assign bitcast_ln244_fu_751_p1 = reg_453;
assign bitcast_ln250_fu_756_p1 = reg_457;
assign bitcast_ln257_fu_761_p1 = reg_461;
assign bitcast_ln263_fu_766_p1 = reg_465;
assign bitcast_ln270_fu_771_p1 = reg_469;
assign bitcast_ln276_fu_776_p1 = reg_473;
assign bitcast_ln283_fu_781_p1 = v212_reg_1264;
assign bitcast_ln289_fu_785_p1 = v217_reg_1269;
assign grp_fu_28760_p_ce = 1'b1;
assign grp_fu_28760_p_din0 = grp_fu_405_p0;
assign grp_fu_28760_p_din1 = grp_fu_405_p1;
assign grp_fu_28760_p_opcode = 2'd0;
assign grp_fu_28764_p_ce = 1'b1;
assign grp_fu_28764_p_din0 = grp_fu_409_p0;
assign grp_fu_28764_p_din1 = grp_fu_409_p1;
assign grp_fu_28764_p_opcode = 2'd0;
assign grp_fu_28768_p_ce = 1'b1;
assign grp_fu_28768_p_din0 = grp_fu_413_p0;
assign grp_fu_28768_p_din1 = grp_fu_413_p1;
assign grp_fu_28768_p_opcode = 2'd0;
assign grp_fu_28772_p_ce = 1'b1;
assign grp_fu_28772_p_din0 = grp_fu_417_p0;
assign grp_fu_28772_p_din1 = grp_fu_417_p1;
assign grp_fu_28772_p_opcode = 2'd0;
assign grp_fu_28776_p_ce = 1'b1;
assign grp_fu_28776_p_din0 = grp_fu_421_p0;
assign grp_fu_28776_p_din1 = grp_fu_421_p1;
assign grp_fu_28776_p_opcode = 2'd0;
assign grp_fu_28780_p_ce = 1'b1;
assign grp_fu_28780_p_din0 = grp_fu_425_p0;
assign grp_fu_28780_p_din1 = grp_fu_425_p1;
assign grp_fu_28784_p_ce = 1'b1;
assign grp_fu_28784_p_din0 = grp_fu_429_p0;
assign grp_fu_28784_p_din1 = grp_fu_429_p1;
assign grp_fu_28788_p_ce = 1'b1;
assign grp_fu_28788_p_din0 = grp_fu_433_p0;
assign grp_fu_28788_p_din1 = grp_fu_433_p1;
assign grp_fu_28792_p_ce = 1'b1;
assign grp_fu_28792_p_din0 = grp_fu_437_p0;
assign grp_fu_28792_p_din1 = grp_fu_437_p1;
assign grp_fu_28796_p_ce = 1'b1;
assign grp_fu_28796_p_din0 = grp_fu_441_p0;
assign grp_fu_28796_p_din1 = grp_fu_441_p1;
assign icmp_ln170_fu_485_p2 = ((ap_sig_allocacmp_v116_19 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_s_fu_516_p3 = {{tmp_s_fu_506_p4}, {1'd1}};
assign tmp_s_fu_506_p4 = {{ap_sig_allocacmp_v116_19[7:1]}};
assign v117_fu_626_p1 = reg_445;
assign v121_fu_539_p1 = v227_2_load_reg_889;
assign v124_fu_631_p1 = reg_449;
assign v127_fu_545_p1 = v227_2_load_8_reg_894;
assign v130_fu_636_p1 = v225_1_load_reg_1019;
assign v136_fu_640_p1 = v225_1_load_24_reg_1029;
assign v141_fu_644_p1 = v225_2_load_reg_1039;
assign v147_fu_648_p1 = v225_2_load_23_reg_1049;
assign v152_fu_652_p1 = v225_3_load_reg_1054;
assign v158_fu_656_p1 = v225_3_load_23_reg_1059;
assign v163_fu_660_p1 = v225_4_load_reg_1064;
assign v169_fu_664_p1 = v225_4_load_23_reg_1069;
assign v174_fu_668_p1 = v225_5_load_reg_1074;
assign v180_fu_672_p1 = v225_5_load_25_reg_1079;
assign v185_fu_676_p1 = v225_6_load_reg_1084;
assign v191_fu_680_p1 = v225_6_load_25_reg_1089;
assign v196_fu_684_p1 = v225_7_load_reg_1094;
assign v202_fu_688_p1 = v225_7_load_25_reg_1099;
assign v207_fu_692_p1 = reg_445;
assign v213_fu_697_p1 = reg_449;
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
assign v225_1_d0 = bitcast_ln198_fu_707_p1;
assign v225_1_d1 = bitcast_ln192_fu_702_p1;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = bitcast_ln205_fu_712_p1;
assign v225_2_d1 = bitcast_ln211_fu_727_p1;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = bitcast_ln224_fu_736_p1;
assign v225_3_d1 = bitcast_ln218_fu_732_p1;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v225_4_address0 = v225_4_address0_local;
assign v225_4_address1 = v225_4_address1_local;
assign v225_4_ce0 = v225_4_ce0_local;
assign v225_4_ce1 = v225_4_ce1_local;
assign v225_4_d0 = bitcast_ln237_fu_746_p1;
assign v225_4_d1 = bitcast_ln231_fu_741_p1;
assign v225_4_we0 = v225_4_we0_local;
assign v225_4_we1 = v225_4_we1_local;
assign v225_5_address0 = v225_5_address0_local;
assign v225_5_address1 = v225_5_address1_local;
assign v225_5_ce0 = v225_5_ce0_local;
assign v225_5_ce1 = v225_5_ce1_local;
assign v225_5_d0 = bitcast_ln250_fu_756_p1;
assign v225_5_d1 = bitcast_ln244_fu_751_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln263_fu_766_p1;
assign v225_6_d1 = bitcast_ln257_fu_761_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln276_fu_776_p1;
assign v225_7_d1 = bitcast_ln270_fu_771_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_2_address0 = zext_ln182_42_fu_534_p1;
assign v227_2_address1 = zext_ln175_42_fu_501_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign zext_ln171_fu_568_p1 = add_ln171_fu_563_p2;
assign zext_ln175_40_fu_560_p1 = v116_19_reg_862;
assign zext_ln175_41_fu_491_p1 = ap_sig_allocacmp_v116_19;
assign zext_ln175_42_fu_501_p1 = add_ln175_fu_495_p2;
assign zext_ln175_fu_600_p1 = v116_19_reg_862_pp0_iter1_reg;
assign zext_ln179_fu_588_p1 = add_ln179_fu_583_p2;
assign zext_ln182_40_fu_580_p1 = or_ln179_s_reg_878;
assign zext_ln182_41_fu_524_p1 = or_ln179_s_fu_516_p3;
assign zext_ln182_42_fu_534_p1 = add_ln182_fu_528_p2;
assign zext_ln182_fu_613_p1 = or_ln179_s_reg_878_pp0_iter1_reg;
assign zext_ln277_fu_608_p1 = add_ln277_fu_603_p2;
assign zext_ln284_fu_621_p1 = add_ln284_fu_616_p2;
always @ (posedge ap_clk) begin
    or_ln179_s_reg_878[0] <= 1'b1;
    or_ln179_s_reg_878_pp0_iter1_reg[0] <= 1'b1;
    v225_0_addr_reg_917[12] <= 1'b0;
    v225_0_addr_reg_917_pp0_iter2_reg[12] <= 1'b0;
    v225_0_addr_reg_917_pp0_iter3_reg[12] <= 1'b0;
    v225_1_addr_reg_922[12] <= 1'b0;
    v225_1_addr_reg_922_pp0_iter2_reg[12] <= 1'b0;
    v225_1_addr_reg_922_pp0_iter3_reg[12] <= 1'b0;
    v225_2_addr_reg_927[12] <= 1'b0;
    v225_2_addr_reg_927_pp0_iter2_reg[12] <= 1'b0;
    v225_2_addr_reg_927_pp0_iter3_reg[12] <= 1'b0;
    v225_3_addr_reg_933[12] <= 1'b0;
    v225_3_addr_reg_933_pp0_iter2_reg[12] <= 1'b0;
    v225_3_addr_reg_933_pp0_iter3_reg[12] <= 1'b0;
    v225_4_addr_reg_938[12] <= 1'b0;
    v225_4_addr_reg_938_pp0_iter2_reg[12] <= 1'b0;
    v225_4_addr_reg_938_pp0_iter3_reg[12] <= 1'b0;
    v225_5_addr_reg_943[12] <= 1'b0;
    v225_5_addr_reg_943_pp0_iter2_reg[12] <= 1'b0;
    v225_5_addr_reg_943_pp0_iter3_reg[12] <= 1'b0;
    v225_6_addr_reg_948[12] <= 1'b0;
    v225_6_addr_reg_948_pp0_iter2_reg[12] <= 1'b0;
    v225_6_addr_reg_948_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_reg_953[12] <= 1'b0;
    v225_7_addr_reg_953_pp0_iter2_reg[12] <= 1'b0;
    v225_7_addr_reg_953_pp0_iter3_reg[12] <= 1'b0;
    v225_0_addr_23_reg_958[12] <= 1'b0;
    v225_0_addr_23_reg_958_pp0_iter2_reg[12] <= 1'b0;
    v225_0_addr_23_reg_958_pp0_iter3_reg[12] <= 1'b0;
    v225_1_addr_24_reg_963[12] <= 1'b0;
    v225_1_addr_24_reg_963_pp0_iter2_reg[12] <= 1'b0;
    v225_1_addr_24_reg_963_pp0_iter3_reg[12] <= 1'b0;
    v225_2_addr_23_reg_968[12] <= 1'b0;
    v225_2_addr_23_reg_968_pp0_iter2_reg[12] <= 1'b0;
    v225_2_addr_23_reg_968_pp0_iter3_reg[12] <= 1'b0;
    v225_3_addr_23_reg_974[12] <= 1'b0;
    v225_3_addr_23_reg_974_pp0_iter2_reg[12] <= 1'b0;
    v225_3_addr_23_reg_974_pp0_iter3_reg[12] <= 1'b0;
    v225_4_addr_23_reg_979[12] <= 1'b0;
    v225_4_addr_23_reg_979_pp0_iter2_reg[12] <= 1'b0;
    v225_4_addr_23_reg_979_pp0_iter3_reg[12] <= 1'b0;
    v225_5_addr_25_reg_984[12] <= 1'b0;
    v225_5_addr_25_reg_984_pp0_iter2_reg[12] <= 1'b0;
    v225_5_addr_25_reg_984_pp0_iter3_reg[12] <= 1'b0;
    v225_6_addr_25_reg_989[12] <= 1'b0;
    v225_6_addr_25_reg_989_pp0_iter2_reg[12] <= 1'b0;
    v225_6_addr_25_reg_989_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_25_reg_994[12] <= 1'b0;
    v225_7_addr_25_reg_994_pp0_iter2_reg[12] <= 1'b0;
    v225_7_addr_25_reg_994_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_25_reg_994_pp0_iter4_reg[12] <= 1'b0;
end
endmodule 