
module kernel_2mm_kernel_2mm_node1_Pipeline_label_530 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,mul_ln225_3,mul_ln238_3,v120_32,v133_32,v144_32,v155_32,v166_32,v177_32,v188_32,v199_32,v210_32,grp_fu_28760_p_din0,grp_fu_28760_p_din1,grp_fu_28760_p_opcode,grp_fu_28760_p_dout0,grp_fu_28760_p_ce,grp_fu_28764_p_din0,grp_fu_28764_p_din1,grp_fu_28764_p_opcode,grp_fu_28764_p_dout0,grp_fu_28764_p_ce,grp_fu_28768_p_din0,grp_fu_28768_p_din1,grp_fu_28768_p_opcode,grp_fu_28768_p_dout0,grp_fu_28768_p_ce,grp_fu_28772_p_din0,grp_fu_28772_p_din1,grp_fu_28772_p_opcode,grp_fu_28772_p_dout0,grp_fu_28772_p_ce,grp_fu_28776_p_din0,grp_fu_28776_p_din1,grp_fu_28776_p_opcode,grp_fu_28776_p_dout0,grp_fu_28776_p_ce,grp_fu_28780_p_din0,grp_fu_28780_p_din1,grp_fu_28780_p_dout0,grp_fu_28780_p_ce,grp_fu_28784_p_din0,grp_fu_28784_p_din1,grp_fu_28784_p_dout0,grp_fu_28784_p_ce,grp_fu_28788_p_din0,grp_fu_28788_p_din1,grp_fu_28788_p_dout0,grp_fu_28788_p_ce,grp_fu_28792_p_din0,grp_fu_28792_p_din1,grp_fu_28792_p_dout0,grp_fu_28792_p_ce,grp_fu_28796_p_din0,grp_fu_28796_p_din1,grp_fu_28796_p_dout0,grp_fu_28796_p_ce);  
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
output  [13:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [13:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
input  [12:0] mul_ln225_3;
input  [12:0] mul_ln238_3;
input  [31:0] v120_32;
input  [31:0] v133_32;
input  [31:0] v144_32;
input  [31:0] v155_32;
input  [31:0] v166_32;
input  [31:0] v177_32;
input  [31:0] v188_32;
input  [31:0] v199_32;
input  [31:0] v210_32;
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
reg   [0:0] icmp_ln170_reg_858;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_441;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_445;
reg   [31:0] reg_449;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_453;
reg   [31:0] reg_457;
reg   [31:0] reg_461;
reg   [31:0] reg_465;
reg   [31:0] reg_469;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_reg_852;
wire   [0:0] icmp_ln170_fu_481_p2;
wire   [7:0] or_ln179_s_fu_512_p3;
reg   [7:0] or_ln179_s_reg_867;
reg   [31:0] v227_3_load_8_reg_877;
reg   [31:0] v227_3_load_9_reg_882;
wire   [31:0] v121_fu_535_p1;
reg   [31:0] v121_reg_887;
wire   [31:0] v127_fu_541_p1;
reg   [31:0] v127_reg_896;
reg   [12:0] v225_0_addr_reg_905;
reg   [12:0] v225_0_addr_reg_905_pp0_iter2_reg;
reg   [12:0] v225_0_addr_reg_905_pp0_iter3_reg;
reg   [12:0] v225_1_addr_reg_910;
reg   [12:0] v225_1_addr_reg_910_pp0_iter2_reg;
reg   [12:0] v225_1_addr_reg_910_pp0_iter3_reg;
reg   [12:0] v225_2_addr_reg_915;
reg   [12:0] v225_2_addr_reg_915_pp0_iter2_reg;
reg   [12:0] v225_2_addr_reg_915_pp0_iter3_reg;
reg   [12:0] v225_3_addr_reg_920;
reg   [12:0] v225_3_addr_reg_920_pp0_iter2_reg;
reg   [12:0] v225_3_addr_reg_920_pp0_iter3_reg;
reg   [12:0] v225_4_addr_reg_925;
reg   [12:0] v225_4_addr_reg_925_pp0_iter2_reg;
reg   [12:0] v225_4_addr_reg_925_pp0_iter3_reg;
reg   [12:0] v225_4_addr_47_reg_930;
reg   [12:0] v225_4_addr_47_reg_930_pp0_iter2_reg;
reg   [12:0] v225_4_addr_47_reg_930_pp0_iter3_reg;
reg   [12:0] v225_4_addr_47_reg_930_pp0_iter4_reg;
reg   [12:0] v225_5_addr_reg_935;
reg   [12:0] v225_5_addr_reg_935_pp0_iter2_reg;
reg   [12:0] v225_5_addr_reg_935_pp0_iter3_reg;
reg   [12:0] v225_6_addr_reg_940;
reg   [12:0] v225_6_addr_reg_940_pp0_iter2_reg;
reg   [12:0] v225_6_addr_reg_940_pp0_iter3_reg;
reg   [12:0] v225_7_addr_reg_946;
reg   [12:0] v225_7_addr_reg_946_pp0_iter2_reg;
reg   [12:0] v225_7_addr_reg_946_pp0_iter3_reg;
reg   [12:0] v225_0_addr_48_reg_951;
reg   [12:0] v225_0_addr_48_reg_951_pp0_iter2_reg;
reg   [12:0] v225_0_addr_48_reg_951_pp0_iter3_reg;
reg   [12:0] v225_1_addr_48_reg_956;
reg   [12:0] v225_1_addr_48_reg_956_pp0_iter2_reg;
reg   [12:0] v225_1_addr_48_reg_956_pp0_iter3_reg;
reg   [12:0] v225_2_addr_47_reg_961;
reg   [12:0] v225_2_addr_47_reg_961_pp0_iter2_reg;
reg   [12:0] v225_2_addr_47_reg_961_pp0_iter3_reg;
reg   [12:0] v225_3_addr_47_reg_966;
reg   [12:0] v225_3_addr_47_reg_966_pp0_iter2_reg;
reg   [12:0] v225_3_addr_47_reg_966_pp0_iter3_reg;
reg   [12:0] v225_3_addr_47_reg_966_pp0_iter4_reg;
reg   [12:0] v225_4_addr_48_reg_971;
reg   [12:0] v225_4_addr_48_reg_971_pp0_iter2_reg;
reg   [12:0] v225_4_addr_48_reg_971_pp0_iter3_reg;
reg   [12:0] v225_4_addr_49_reg_976;
reg   [12:0] v225_4_addr_49_reg_976_pp0_iter2_reg;
reg   [12:0] v225_4_addr_49_reg_976_pp0_iter3_reg;
reg   [12:0] v225_4_addr_49_reg_976_pp0_iter4_reg;
reg   [12:0] v225_5_addr_51_reg_981;
reg   [12:0] v225_5_addr_51_reg_981_pp0_iter2_reg;
reg   [12:0] v225_5_addr_51_reg_981_pp0_iter3_reg;
reg   [12:0] v225_6_addr_51_reg_986;
reg   [12:0] v225_6_addr_51_reg_986_pp0_iter2_reg;
reg   [12:0] v225_6_addr_51_reg_986_pp0_iter3_reg;
reg   [12:0] v225_7_addr_51_reg_992;
reg   [12:0] v225_7_addr_51_reg_992_pp0_iter2_reg;
reg   [12:0] v225_7_addr_51_reg_992_pp0_iter3_reg;
reg   [31:0] v122_reg_997;
reg   [31:0] v128_reg_1002;
reg   [31:0] v225_5_load_reg_1007;
reg   [31:0] v134_reg_1012;
reg   [31:0] v225_5_load_51_reg_1017;
reg   [31:0] v139_reg_1022;
reg   [31:0] v225_6_load_reg_1027;
reg   [31:0] v145_reg_1032;
reg   [31:0] v225_6_load_51_reg_1037;
reg   [31:0] v225_7_load_reg_1042;
reg   [31:0] v225_7_load_51_reg_1047;
reg   [31:0] v225_0_load_reg_1052;
reg   [31:0] v225_0_load_48_reg_1057;
reg   [31:0] v225_1_load_reg_1062;
reg   [31:0] v225_1_load_48_reg_1067;
reg   [31:0] v225_2_load_reg_1072;
reg   [31:0] v225_2_load_47_reg_1077;
reg   [31:0] v225_3_load_reg_1082;
reg   [31:0] v225_3_load_47_reg_1087;
wire   [31:0] v117_fu_616_p1;
wire   [31:0] v124_fu_621_p1;
wire   [31:0] v130_fu_626_p1;
wire   [31:0] v136_fu_630_p1;
wire   [31:0] v141_fu_634_p1;
reg   [31:0] v150_reg_1117;
reg   [31:0] v156_reg_1122;
reg   [31:0] v161_reg_1127;
reg   [31:0] v167_reg_1132;
reg   [31:0] v172_reg_1137;
wire   [31:0] v147_fu_638_p1;
wire   [31:0] v152_fu_642_p1;
wire   [31:0] v158_fu_646_p1;
wire   [31:0] v163_fu_650_p1;
wire   [31:0] v169_fu_654_p1;
reg   [31:0] v178_reg_1167;
reg   [31:0] v183_reg_1172;
reg   [31:0] v189_reg_1177;
reg   [31:0] v194_reg_1182;
reg   [31:0] v200_reg_1187;
wire   [31:0] v174_fu_658_p1;
wire   [31:0] v180_fu_662_p1;
wire   [31:0] v185_fu_666_p1;
wire   [31:0] v191_fu_670_p1;
wire   [31:0] v196_fu_674_p1;
reg   [31:0] v205_reg_1217;
reg   [31:0] v211_reg_1222;
reg   [31:0] v216_reg_1227;
wire   [31:0] v202_fu_678_p1;
wire   [31:0] v207_fu_682_p1;
wire   [31:0] v213_fu_687_p1;
reg   [31:0] v157_reg_1247;
reg   [31:0] v212_reg_1252;
reg   [31:0] v217_reg_1257;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_88_fu_497_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_88_fu_530_p1;
wire   [63:0] zext_ln225_fu_564_p1;
wire   [63:0] zext_ln171_fu_578_p1;
wire   [63:0] zext_ln232_fu_594_p1;
wire   [63:0] zext_ln179_fu_608_p1;
reg   [7:0] v116_28_fu_86;
wire   [7:0] add_ln170_fu_546_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
wire    ap_block_pp0_stage1;
reg    v225_4_we1_local;
reg   [31:0] v225_4_d1_local;
wire   [31:0] bitcast_ln178_fu_707_p1;
wire    ap_block_pp0_stage2;
reg    v225_4_we0_local;
reg   [31:0] v225_4_d0_local;
wire   [31:0] bitcast_ln185_fu_712_p1;
wire   [31:0] bitcast_ln283_fu_771_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_775_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln192_fu_692_p1;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln198_fu_697_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln205_fu_702_p1;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln211_fu_717_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln218_fu_722_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln224_fu_726_p1;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
wire   [31:0] bitcast_ln231_fu_731_p1;
reg    v225_0_we0_local;
wire   [31:0] bitcast_ln237_fu_736_p1;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
reg    v225_1_we1_local;
wire   [31:0] bitcast_ln244_fu_741_p1;
reg    v225_1_we0_local;
wire   [31:0] bitcast_ln250_fu_746_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln257_fu_751_p1;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln263_fu_756_p1;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
reg    v225_3_we1_local;
wire   [31:0] bitcast_ln270_fu_761_p1;
reg    v225_3_we0_local;
wire   [31:0] bitcast_ln276_fu_766_p1;
reg   [31:0] grp_fu_401_p0;
reg   [31:0] grp_fu_401_p1;
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
wire   [13:0] zext_ln175_87_fu_487_p1;
wire   [13:0] add_ln175_fu_491_p2;
wire   [6:0] tmp_s_fu_502_p4;
wire   [13:0] zext_ln182_87_fu_520_p1;
wire   [13:0] add_ln182_fu_524_p2;
wire   [12:0] zext_ln175_fu_556_p1;
wire   [12:0] add_ln225_fu_559_p2;
wire   [12:0] add_ln171_fu_573_p2;
wire   [12:0] zext_ln182_fu_586_p1;
wire   [12:0] add_ln232_fu_589_p2;
wire   [12:0] add_ln179_fu_603_p2;
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
#0 v116_28_fu_86 = 8'd0;
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
        v116_28_fu_86 <= 8'd0;
    end else if (((icmp_ln170_reg_858 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_28_fu_86 <= add_ln170_fu_546_p2;
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
        icmp_ln170_reg_858 <= icmp_ln170_fu_481_p2;
        or_ln179_s_reg_867[7 : 1] <= or_ln179_s_fu_512_p3[7 : 1];
        v116_reg_852 <= ap_sig_allocacmp_v116;
        v225_0_addr_48_reg_951 <= zext_ln232_fu_594_p1;
        v225_0_addr_48_reg_951_pp0_iter2_reg <= v225_0_addr_48_reg_951;
        v225_0_addr_48_reg_951_pp0_iter3_reg <= v225_0_addr_48_reg_951_pp0_iter2_reg;
        v225_0_addr_reg_905 <= zext_ln225_fu_564_p1;
        v225_0_addr_reg_905_pp0_iter2_reg <= v225_0_addr_reg_905;
        v225_0_addr_reg_905_pp0_iter3_reg <= v225_0_addr_reg_905_pp0_iter2_reg;
        v225_1_addr_48_reg_956 <= zext_ln232_fu_594_p1;
        v225_1_addr_48_reg_956_pp0_iter2_reg <= v225_1_addr_48_reg_956;
        v225_1_addr_48_reg_956_pp0_iter3_reg <= v225_1_addr_48_reg_956_pp0_iter2_reg;
        v225_1_addr_reg_910 <= zext_ln225_fu_564_p1;
        v225_1_addr_reg_910_pp0_iter2_reg <= v225_1_addr_reg_910;
        v225_1_addr_reg_910_pp0_iter3_reg <= v225_1_addr_reg_910_pp0_iter2_reg;
        v225_2_addr_47_reg_961 <= zext_ln232_fu_594_p1;
        v225_2_addr_47_reg_961_pp0_iter2_reg <= v225_2_addr_47_reg_961;
        v225_2_addr_47_reg_961_pp0_iter3_reg <= v225_2_addr_47_reg_961_pp0_iter2_reg;
        v225_2_addr_reg_915 <= zext_ln225_fu_564_p1;
        v225_2_addr_reg_915_pp0_iter2_reg <= v225_2_addr_reg_915;
        v225_2_addr_reg_915_pp0_iter3_reg <= v225_2_addr_reg_915_pp0_iter2_reg;
        v225_3_addr_47_reg_966 <= zext_ln232_fu_594_p1;
        v225_3_addr_47_reg_966_pp0_iter2_reg <= v225_3_addr_47_reg_966;
        v225_3_addr_47_reg_966_pp0_iter3_reg <= v225_3_addr_47_reg_966_pp0_iter2_reg;
        v225_3_addr_47_reg_966_pp0_iter4_reg <= v225_3_addr_47_reg_966_pp0_iter3_reg;
        v225_3_addr_reg_920 <= zext_ln225_fu_564_p1;
        v225_3_addr_reg_920_pp0_iter2_reg <= v225_3_addr_reg_920;
        v225_3_addr_reg_920_pp0_iter3_reg <= v225_3_addr_reg_920_pp0_iter2_reg;
        v225_4_addr_47_reg_930 <= zext_ln225_fu_564_p1;
        v225_4_addr_47_reg_930_pp0_iter2_reg <= v225_4_addr_47_reg_930;
        v225_4_addr_47_reg_930_pp0_iter3_reg <= v225_4_addr_47_reg_930_pp0_iter2_reg;
        v225_4_addr_47_reg_930_pp0_iter4_reg <= v225_4_addr_47_reg_930_pp0_iter3_reg;
        v225_4_addr_48_reg_971 <= zext_ln179_fu_608_p1;
        v225_4_addr_48_reg_971_pp0_iter2_reg <= v225_4_addr_48_reg_971;
        v225_4_addr_48_reg_971_pp0_iter3_reg <= v225_4_addr_48_reg_971_pp0_iter2_reg;
        v225_4_addr_49_reg_976 <= zext_ln232_fu_594_p1;
        v225_4_addr_49_reg_976_pp0_iter2_reg <= v225_4_addr_49_reg_976;
        v225_4_addr_49_reg_976_pp0_iter3_reg <= v225_4_addr_49_reg_976_pp0_iter2_reg;
        v225_4_addr_49_reg_976_pp0_iter4_reg <= v225_4_addr_49_reg_976_pp0_iter3_reg;
        v225_4_addr_reg_925 <= zext_ln171_fu_578_p1;
        v225_4_addr_reg_925_pp0_iter2_reg <= v225_4_addr_reg_925;
        v225_4_addr_reg_925_pp0_iter3_reg <= v225_4_addr_reg_925_pp0_iter2_reg;
        v225_5_addr_51_reg_981 <= zext_ln179_fu_608_p1;
        v225_5_addr_51_reg_981_pp0_iter2_reg <= v225_5_addr_51_reg_981;
        v225_5_addr_51_reg_981_pp0_iter3_reg <= v225_5_addr_51_reg_981_pp0_iter2_reg;
        v225_5_addr_reg_935 <= zext_ln171_fu_578_p1;
        v225_5_addr_reg_935_pp0_iter2_reg <= v225_5_addr_reg_935;
        v225_5_addr_reg_935_pp0_iter3_reg <= v225_5_addr_reg_935_pp0_iter2_reg;
        v225_6_addr_51_reg_986 <= zext_ln179_fu_608_p1;
        v225_6_addr_51_reg_986_pp0_iter2_reg <= v225_6_addr_51_reg_986;
        v225_6_addr_51_reg_986_pp0_iter3_reg <= v225_6_addr_51_reg_986_pp0_iter2_reg;
        v225_6_addr_reg_940 <= zext_ln171_fu_578_p1;
        v225_6_addr_reg_940_pp0_iter2_reg <= v225_6_addr_reg_940;
        v225_6_addr_reg_940_pp0_iter3_reg <= v225_6_addr_reg_940_pp0_iter2_reg;
        v225_7_addr_51_reg_992 <= zext_ln179_fu_608_p1;
        v225_7_addr_51_reg_992_pp0_iter2_reg <= v225_7_addr_51_reg_992;
        v225_7_addr_51_reg_992_pp0_iter3_reg <= v225_7_addr_51_reg_992_pp0_iter2_reg;
        v225_7_addr_reg_946 <= zext_ln171_fu_578_p1;
        v225_7_addr_reg_946_pp0_iter2_reg <= v225_7_addr_reg_946;
        v225_7_addr_reg_946_pp0_iter3_reg <= v225_7_addr_reg_946_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_441 <= v225_4_q1;
        reg_445 <= v225_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_449 <= grp_fu_28760_p_dout0;
        reg_453 <= grp_fu_28764_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_457 <= grp_fu_28768_p_dout0;
        reg_461 <= grp_fu_28772_p_dout0;
        reg_465 <= grp_fu_28776_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_469 <= grp_fu_28760_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_887 <= v121_fu_535_p1;
        v127_reg_896 <= v127_fu_541_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_997 <= grp_fu_28780_p_dout0;
        v128_reg_1002 <= grp_fu_28784_p_dout0;
        v134_reg_1012 <= grp_fu_28788_p_dout0;
        v139_reg_1022 <= grp_fu_28792_p_dout0;
        v145_reg_1032 <= grp_fu_28796_p_dout0;
        v225_0_load_48_reg_1057 <= v225_0_q0;
        v225_0_load_reg_1052 <= v225_0_q1;
        v225_1_load_48_reg_1067 <= v225_1_q0;
        v225_1_load_reg_1062 <= v225_1_q1;
        v225_2_load_47_reg_1077 <= v225_2_q0;
        v225_2_load_reg_1072 <= v225_2_q1;
        v225_3_load_47_reg_1087 <= v225_3_q0;
        v225_3_load_reg_1082 <= v225_3_q1;
        v225_5_load_51_reg_1017 <= v225_5_q0;
        v225_5_load_reg_1007 <= v225_5_q1;
        v225_6_load_51_reg_1037 <= v225_6_q0;
        v225_6_load_reg_1027 <= v225_6_q1;
        v225_7_load_51_reg_1047 <= v225_7_q0;
        v225_7_load_reg_1042 <= v225_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1117 <= grp_fu_28780_p_dout0;
        v156_reg_1122 <= grp_fu_28784_p_dout0;
        v161_reg_1127 <= grp_fu_28788_p_dout0;
        v167_reg_1132 <= grp_fu_28792_p_dout0;
        v172_reg_1137 <= grp_fu_28796_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1247 <= grp_fu_28764_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1167 <= grp_fu_28780_p_dout0;
        v183_reg_1172 <= grp_fu_28784_p_dout0;
        v189_reg_1177 <= grp_fu_28788_p_dout0;
        v194_reg_1182 <= grp_fu_28792_p_dout0;
        v200_reg_1187 <= grp_fu_28796_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1217 <= grp_fu_28780_p_dout0;
        v211_reg_1222 <= grp_fu_28784_p_dout0;
        v216_reg_1227 <= grp_fu_28788_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1252 <= grp_fu_28764_p_dout0;
        v217_reg_1257 <= grp_fu_28768_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_3_load_8_reg_877 <= v227_3_q1;
        v227_3_load_9_reg_882 <= v227_3_q0;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_858 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v116 = v116_28_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_401_p0 = v202_fu_678_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_401_p0 = v174_fu_658_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_401_p0 = v147_fu_638_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_401_p0 = v117_fu_616_p1;
    end else begin
        grp_fu_401_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_401_p1 = v205_reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_401_p1 = v178_reg_1167;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_401_p1 = v150_reg_1117;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_401_p1 = v122_reg_997;
    end else begin
        grp_fu_401_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p0 = v207_fu_682_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p0 = v180_fu_662_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p0 = v152_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p0 = v124_fu_621_p1;
    end else begin
        grp_fu_405_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p1 = v211_reg_1222;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p1 = v183_reg_1172;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p1 = v156_reg_1122;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p1 = v128_reg_1002;
    end else begin
        grp_fu_405_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p0 = v213_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p0 = v185_fu_666_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p0 = v158_fu_646_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p0 = v130_fu_626_p1;
    end else begin
        grp_fu_409_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p1 = v216_reg_1227;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p1 = v189_reg_1177;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p1 = v161_reg_1127;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p1 = v134_reg_1012;
    end else begin
        grp_fu_409_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p0 = v191_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p0 = v163_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p0 = v136_fu_630_p1;
    end else begin
        grp_fu_413_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p1 = v194_reg_1182;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p1 = v167_reg_1132;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p1 = v139_reg_1022;
    end else begin
        grp_fu_413_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p0 = v196_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p0 = v169_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p0 = v141_fu_634_p1;
    end else begin
        grp_fu_417_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p1 = v200_reg_1187;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p1 = v172_reg_1137;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p1 = v145_reg_1032;
    end else begin
        grp_fu_417_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_421_p0 = v199_32;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p0 = v177_32;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p0 = v144_32;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p0 = v120_32;
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p1 = v121_reg_887;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_421_p1 = v127_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p1 = v121_fu_535_p1;
    end else begin
        grp_fu_421_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_425_p0 = v210_32;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p0 = v177_32;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_425_p0 = v155_32;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p0 = v120_32;
    end else begin
        grp_fu_425_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p1 = v127_reg_896;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_425_p1 = v121_reg_887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p1 = v127_fu_541_p1;
    end else begin
        grp_fu_425_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_429_p0 = v210_32;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p0 = v188_32;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_429_p0 = v155_32;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p0 = v133_32;
    end else begin
        grp_fu_429_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p1 = v121_reg_887;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_429_p1 = v127_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p1 = v121_fu_535_p1;
    end else begin
        grp_fu_429_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p0 = v188_32;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p0 = v166_32;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p0 = v133_32;
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p1 = v127_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p1 = v121_reg_887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p1 = v127_fu_541_p1;
    end else begin
        grp_fu_433_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p0 = v199_32;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = v166_32;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p0 = v144_32;
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p1 = v121_reg_887;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p1 = v127_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p1 = v121_fu_535_p1;
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_48_reg_951_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln232_fu_594_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_reg_905_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln225_fu_564_p1;
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
        v225_1_address0_local = v225_1_addr_48_reg_956_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln232_fu_594_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_reg_910_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln225_fu_564_p1;
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
        v225_2_address0_local = v225_2_addr_47_reg_961_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln232_fu_594_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_reg_915_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln225_fu_564_p1;
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
        v225_3_address0_local = v225_3_addr_47_reg_966_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln232_fu_594_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_reg_920_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln225_fu_564_p1;
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
        v225_4_address0_local = v225_4_addr_49_reg_976_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address0_local = v225_4_addr_48_reg_971_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_address0_local = v225_4_addr_49_reg_976;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_608_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_address1_local = v225_4_addr_47_reg_930_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address1_local = v225_4_addr_reg_925_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_4_address1_local = v225_4_addr_47_reg_930;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address1_local = zext_ln171_fu_578_p1;
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
        v225_4_d0_local = bitcast_ln289_fu_775_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_d0_local = bitcast_ln185_fu_712_p1;
    end else begin
        v225_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_4_d1_local = bitcast_ln283_fu_771_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_d1_local = bitcast_ln178_fu_707_p1;
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
        v225_5_address0_local = v225_5_addr_51_reg_981_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_608_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_5_address1_local = v225_5_addr_reg_935_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_578_p1;
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
        v225_6_address0_local = v225_6_addr_reg_940_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_608_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_6_address1_local = v225_6_addr_51_reg_986_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address1_local = zext_ln171_fu_578_p1;
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
        v225_7_address0_local = v225_7_addr_51_reg_992_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_608_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_7_address1_local = v225_7_addr_reg_946_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_578_p1;
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
assign add_ln170_fu_546_p2 = (v116_reg_852 + 8'd2);
assign add_ln171_fu_573_p2 = (mul_ln238_3 + zext_ln175_fu_556_p1);
assign add_ln175_fu_491_p2 = (mul_ln175 + zext_ln175_87_fu_487_p1);
assign add_ln179_fu_603_p2 = (mul_ln238_3 + zext_ln182_fu_586_p1);
assign add_ln182_fu_524_p2 = (mul_ln175 + zext_ln182_87_fu_520_p1);
assign add_ln225_fu_559_p2 = (mul_ln225_3 + zext_ln175_fu_556_p1);
assign add_ln232_fu_589_p2 = (mul_ln225_3 + zext_ln182_fu_586_p1);
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
assign bitcast_ln178_fu_707_p1 = reg_449;
assign bitcast_ln185_fu_712_p1 = reg_453;
assign bitcast_ln192_fu_692_p1 = reg_457;
assign bitcast_ln198_fu_697_p1 = reg_461;
assign bitcast_ln205_fu_702_p1 = reg_465;
assign bitcast_ln211_fu_717_p1 = reg_469;
assign bitcast_ln218_fu_722_p1 = v157_reg_1247;
assign bitcast_ln224_fu_726_p1 = reg_457;
assign bitcast_ln231_fu_731_p1 = reg_461;
assign bitcast_ln237_fu_736_p1 = reg_465;
assign bitcast_ln244_fu_741_p1 = reg_449;
assign bitcast_ln250_fu_746_p1 = reg_453;
assign bitcast_ln257_fu_751_p1 = reg_457;
assign bitcast_ln263_fu_756_p1 = reg_461;
assign bitcast_ln270_fu_761_p1 = reg_465;
assign bitcast_ln276_fu_766_p1 = reg_469;
assign bitcast_ln283_fu_771_p1 = v212_reg_1252;
assign bitcast_ln289_fu_775_p1 = v217_reg_1257;
assign grp_fu_28760_p_ce = 1'b1;
assign grp_fu_28760_p_din0 = grp_fu_401_p0;
assign grp_fu_28760_p_din1 = grp_fu_401_p1;
assign grp_fu_28760_p_opcode = 2'd0;
assign grp_fu_28764_p_ce = 1'b1;
assign grp_fu_28764_p_din0 = grp_fu_405_p0;
assign grp_fu_28764_p_din1 = grp_fu_405_p1;
assign grp_fu_28764_p_opcode = 2'd0;
assign grp_fu_28768_p_ce = 1'b1;
assign grp_fu_28768_p_din0 = grp_fu_409_p0;
assign grp_fu_28768_p_din1 = grp_fu_409_p1;
assign grp_fu_28768_p_opcode = 2'd0;
assign grp_fu_28772_p_ce = 1'b1;
assign grp_fu_28772_p_din0 = grp_fu_413_p0;
assign grp_fu_28772_p_din1 = grp_fu_413_p1;
assign grp_fu_28772_p_opcode = 2'd0;
assign grp_fu_28776_p_ce = 1'b1;
assign grp_fu_28776_p_din0 = grp_fu_417_p0;
assign grp_fu_28776_p_din1 = grp_fu_417_p1;
assign grp_fu_28776_p_opcode = 2'd0;
assign grp_fu_28780_p_ce = 1'b1;
assign grp_fu_28780_p_din0 = grp_fu_421_p0;
assign grp_fu_28780_p_din1 = grp_fu_421_p1;
assign grp_fu_28784_p_ce = 1'b1;
assign grp_fu_28784_p_din0 = grp_fu_425_p0;
assign grp_fu_28784_p_din1 = grp_fu_425_p1;
assign grp_fu_28788_p_ce = 1'b1;
assign grp_fu_28788_p_din0 = grp_fu_429_p0;
assign grp_fu_28788_p_din1 = grp_fu_429_p1;
assign grp_fu_28792_p_ce = 1'b1;
assign grp_fu_28792_p_din0 = grp_fu_433_p0;
assign grp_fu_28792_p_din1 = grp_fu_433_p1;
assign grp_fu_28796_p_ce = 1'b1;
assign grp_fu_28796_p_din0 = grp_fu_437_p0;
assign grp_fu_28796_p_din1 = grp_fu_437_p1;
assign icmp_ln170_fu_481_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_s_fu_512_p3 = {{tmp_s_fu_502_p4}, {1'd1}};
assign tmp_s_fu_502_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_616_p1 = reg_441;
assign v121_fu_535_p1 = v227_3_load_8_reg_877;
assign v124_fu_621_p1 = reg_445;
assign v127_fu_541_p1 = v227_3_load_9_reg_882;
assign v130_fu_626_p1 = v225_5_load_reg_1007;
assign v136_fu_630_p1 = v225_5_load_51_reg_1017;
assign v141_fu_634_p1 = v225_6_load_reg_1027;
assign v147_fu_638_p1 = v225_6_load_51_reg_1037;
assign v152_fu_642_p1 = v225_7_load_reg_1042;
assign v158_fu_646_p1 = v225_7_load_51_reg_1047;
assign v163_fu_650_p1 = v225_0_load_reg_1052;
assign v169_fu_654_p1 = v225_0_load_48_reg_1057;
assign v174_fu_658_p1 = v225_1_load_reg_1062;
assign v180_fu_662_p1 = v225_1_load_48_reg_1067;
assign v185_fu_666_p1 = v225_2_load_reg_1072;
assign v191_fu_670_p1 = v225_2_load_47_reg_1077;
assign v196_fu_674_p1 = v225_3_load_reg_1082;
assign v202_fu_678_p1 = v225_3_load_47_reg_1087;
assign v207_fu_682_p1 = reg_441;
assign v213_fu_687_p1 = reg_445;
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = bitcast_ln237_fu_736_p1;
assign v225_0_d1 = bitcast_ln231_fu_731_p1;
assign v225_0_we0 = v225_0_we0_local;
assign v225_0_we1 = v225_0_we1_local;
assign v225_1_address0 = v225_1_address0_local;
assign v225_1_address1 = v225_1_address1_local;
assign v225_1_ce0 = v225_1_ce0_local;
assign v225_1_ce1 = v225_1_ce1_local;
assign v225_1_d0 = bitcast_ln250_fu_746_p1;
assign v225_1_d1 = bitcast_ln244_fu_741_p1;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = bitcast_ln263_fu_756_p1;
assign v225_2_d1 = bitcast_ln257_fu_751_p1;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = bitcast_ln276_fu_766_p1;
assign v225_3_d1 = bitcast_ln270_fu_761_p1;
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
assign v225_5_d0 = bitcast_ln198_fu_697_p1;
assign v225_5_d1 = bitcast_ln192_fu_692_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln205_fu_702_p1;
assign v225_6_d1 = bitcast_ln211_fu_717_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln224_fu_726_p1;
assign v225_7_d1 = bitcast_ln218_fu_722_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_3_address0 = zext_ln182_88_fu_530_p1;
assign v227_3_address1 = zext_ln175_88_fu_497_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign zext_ln171_fu_578_p1 = add_ln171_fu_573_p2;
assign zext_ln175_87_fu_487_p1 = ap_sig_allocacmp_v116;
assign zext_ln175_88_fu_497_p1 = add_ln175_fu_491_p2;
assign zext_ln175_fu_556_p1 = v116_reg_852;
assign zext_ln179_fu_608_p1 = add_ln179_fu_603_p2;
assign zext_ln182_87_fu_520_p1 = or_ln179_s_fu_512_p3;
assign zext_ln182_88_fu_530_p1 = add_ln182_fu_524_p2;
assign zext_ln182_fu_586_p1 = or_ln179_s_reg_867;
assign zext_ln225_fu_564_p1 = add_ln225_fu_559_p2;
assign zext_ln232_fu_594_p1 = add_ln232_fu_589_p2;
always @ (posedge ap_clk) begin
    or_ln179_s_reg_867[0] <= 1'b1;
end
endmodule 
