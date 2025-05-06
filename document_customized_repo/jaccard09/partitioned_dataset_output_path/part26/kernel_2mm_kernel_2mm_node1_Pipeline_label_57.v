
module kernel_2mm_kernel_2mm_node1_Pipeline_label_57 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,mul_ln212_1,mul_ln264_1,mul_ln277_1,empty,v120_5,v133_5,v144_5,v155_5,v166_5,v177_5,v188_5,v199_5,v210_5,grp_fu_5266_p_din0,grp_fu_5266_p_din1,grp_fu_5266_p_opcode,grp_fu_5266_p_dout0,grp_fu_5266_p_ce,grp_fu_5270_p_din0,grp_fu_5270_p_din1,grp_fu_5270_p_opcode,grp_fu_5270_p_dout0,grp_fu_5270_p_ce,grp_fu_5274_p_din0,grp_fu_5274_p_din1,grp_fu_5274_p_opcode,grp_fu_5274_p_dout0,grp_fu_5274_p_ce,grp_fu_5278_p_din0,grp_fu_5278_p_din1,grp_fu_5278_p_dout0,grp_fu_5278_p_ce,grp_fu_5282_p_din0,grp_fu_5282_p_din1,grp_fu_5282_p_dout0,grp_fu_5282_p_ce,grp_fu_5286_p_din0,grp_fu_5286_p_din1,grp_fu_5286_p_dout0,grp_fu_5286_p_ce);  
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
input  [12:0] mul_ln175;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
input  [13:0] mul_ln212_1;
input  [13:0] mul_ln264_1;
input  [13:0] mul_ln277_1;
input  [2:0] empty;
input  [31:0] v120_5;
input  [31:0] v133_5;
input  [31:0] v144_5;
input  [31:0] v155_5;
input  [31:0] v166_5;
input  [31:0] v177_5;
input  [31:0] v188_5;
input  [31:0] v199_5;
input  [31:0] v210_5;
output  [31:0] grp_fu_5266_p_din0;
output  [31:0] grp_fu_5266_p_din1;
output  [1:0] grp_fu_5266_p_opcode;
input  [31:0] grp_fu_5266_p_dout0;
output   grp_fu_5266_p_ce;
output  [31:0] grp_fu_5270_p_din0;
output  [31:0] grp_fu_5270_p_din1;
output  [1:0] grp_fu_5270_p_opcode;
input  [31:0] grp_fu_5270_p_dout0;
output   grp_fu_5270_p_ce;
output  [31:0] grp_fu_5274_p_din0;
output  [31:0] grp_fu_5274_p_din1;
output  [1:0] grp_fu_5274_p_opcode;
input  [31:0] grp_fu_5274_p_dout0;
output   grp_fu_5274_p_ce;
output  [31:0] grp_fu_5278_p_din0;
output  [31:0] grp_fu_5278_p_din1;
input  [31:0] grp_fu_5278_p_dout0;
output   grp_fu_5278_p_ce;
output  [31:0] grp_fu_5282_p_din0;
output  [31:0] grp_fu_5282_p_din1;
input  [31:0] grp_fu_5282_p_dout0;
output   grp_fu_5282_p_ce;
output  [31:0] grp_fu_5286_p_din0;
output  [31:0] grp_fu_5286_p_din1;
input  [31:0] grp_fu_5286_p_dout0;
output   grp_fu_5286_p_ce;
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
reg   [0:0] icmp_ln170_reg_1004;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_486;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_490;
reg   [31:0] reg_494;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_499;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_503;
reg   [31:0] reg_507;
reg   [31:0] reg_511;
reg   [31:0] reg_515;
reg   [31:0] reg_519;
reg   [7:0] v116_3_reg_999;
wire   [0:0] icmp_ln170_fu_531_p2;
wire   [13:0] zext_ln175_fu_537_p1;
reg   [13:0] zext_ln175_reg_1008;
reg   [13:0] v225_1_addr_reg_1034;
reg   [13:0] v225_1_addr_reg_1034_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_1034_pp0_iter2_reg;
reg   [13:0] v225_2_addr_reg_1039;
reg   [13:0] v225_2_addr_reg_1039_pp0_iter1_reg;
reg   [13:0] v225_2_addr_reg_1039_pp0_iter2_reg;
reg   [13:0] v225_3_addr_reg_1044;
reg   [13:0] v225_3_addr_reg_1044_pp0_iter1_reg;
reg   [13:0] v225_3_addr_reg_1044_pp0_iter2_reg;
wire   [13:0] zext_ln182_fu_590_p1;
reg   [13:0] zext_ln182_reg_1049;
reg   [13:0] v225_1_addr_9_reg_1075;
reg   [13:0] v225_1_addr_9_reg_1075_pp0_iter1_reg;
reg   [13:0] v225_1_addr_9_reg_1075_pp0_iter2_reg;
reg   [13:0] v225_2_addr_10_reg_1080;
reg   [13:0] v225_2_addr_10_reg_1080_pp0_iter1_reg;
reg   [13:0] v225_2_addr_10_reg_1080_pp0_iter2_reg;
reg   [13:0] v225_3_addr_10_reg_1085;
reg   [13:0] v225_3_addr_10_reg_1085_pp0_iter1_reg;
reg   [13:0] v225_3_addr_10_reg_1085_pp0_iter2_reg;
reg   [13:0] v225_0_addr_reg_1090;
reg   [13:0] v225_0_addr_reg_1090_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_1090_pp0_iter2_reg;
wire   [13:0] add_ln264_fu_637_p2;
reg   [13:0] add_ln264_reg_1096;
reg   [13:0] v225_1_addr_7_reg_1101;
reg   [13:0] v225_1_addr_7_reg_1101_pp0_iter1_reg;
reg   [13:0] v225_1_addr_7_reg_1101_pp0_iter2_reg;
reg   [13:0] v225_2_addr_9_reg_1106;
reg   [13:0] v225_2_addr_9_reg_1106_pp0_iter1_reg;
reg   [13:0] v225_2_addr_9_reg_1106_pp0_iter2_reg;
reg   [13:0] v225_3_addr_9_reg_1111;
reg   [13:0] v225_3_addr_9_reg_1111_pp0_iter1_reg;
reg   [13:0] v225_3_addr_9_reg_1111_pp0_iter2_reg;
reg   [31:0] v225_1_load_reg_1116;
wire   [31:0] v121_fu_657_p11;
reg   [31:0] v121_reg_1121;
reg   [31:0] v225_1_load_7_reg_1128;
wire   [31:0] v127_fu_696_p11;
reg   [31:0] v127_reg_1133;
reg   [31:0] v225_2_load_reg_1140;
reg   [31:0] v225_2_load_9_reg_1145;
reg   [31:0] v225_3_load_reg_1150;
reg   [31:0] v225_3_load_9_reg_1155;
reg   [31:0] v225_1_load_8_reg_1160;
reg   [31:0] v122_reg_1165;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1170;
reg   [31:0] v134_reg_1175;
wire   [31:0] v117_fu_729_p1;
reg   [13:0] v225_0_addr_8_reg_1185;
reg   [13:0] v225_0_addr_8_reg_1185_pp0_iter2_reg;
wire   [13:0] add_ln271_fu_745_p2;
reg   [13:0] add_ln271_reg_1191;
reg   [13:0] v225_1_addr_10_reg_1196;
reg   [13:0] v225_1_addr_10_reg_1196_pp0_iter2_reg;
reg   [13:0] v225_2_addr_11_reg_1201;
reg   [13:0] v225_2_addr_11_reg_1201_pp0_iter2_reg;
reg   [13:0] v225_3_addr_11_reg_1206;
reg   [13:0] v225_3_addr_11_reg_1206_pp0_iter2_reg;
wire   [31:0] v124_fu_749_p1;
wire   [31:0] v130_fu_753_p1;
reg   [31:0] v139_reg_1221;
reg   [31:0] v145_reg_1226;
reg   [31:0] v150_reg_1231;
reg   [13:0] v225_0_addr_7_reg_1236;
reg   [13:0] v225_0_addr_7_reg_1236_pp0_iter2_reg;
reg   [13:0] v225_1_addr_8_reg_1241;
reg   [13:0] v225_1_addr_8_reg_1241_pp0_iter2_reg;
reg   [13:0] v225_1_addr_8_reg_1241_pp0_iter3_reg;
reg   [13:0] v225_0_addr_9_reg_1246;
reg   [13:0] v225_0_addr_9_reg_1246_pp0_iter2_reg;
reg   [13:0] v225_0_addr_9_reg_1246_pp0_iter3_reg;
reg   [13:0] v225_1_addr_11_reg_1251;
reg   [13:0] v225_1_addr_11_reg_1251_pp0_iter2_reg;
reg   [13:0] v225_1_addr_11_reg_1251_pp0_iter3_reg;
wire   [31:0] v136_fu_767_p1;
wire   [31:0] v141_fu_771_p1;
wire   [31:0] v147_fu_775_p1;
reg   [31:0] v156_reg_1271;
reg   [31:0] v161_reg_1276;
reg   [31:0] v167_reg_1281;
wire   [31:0] v152_fu_779_p1;
wire   [31:0] v158_fu_784_p1;
wire   [31:0] v163_fu_789_p1;
reg   [31:0] v172_reg_1301;
reg   [31:0] v225_2_load_10_reg_1306;
reg   [31:0] v178_reg_1311;
reg   [31:0] v225_2_load_11_reg_1316;
reg   [31:0] v183_reg_1321;
reg   [31:0] v225_3_load_10_reg_1326;
reg   [31:0] v225_3_load_11_reg_1331;
wire   [31:0] v169_fu_793_p1;
wire   [31:0] v174_fu_798_p1;
wire   [31:0] v180_fu_802_p1;
reg   [31:0] v189_reg_1351;
reg   [31:0] v194_reg_1356;
reg   [31:0] v200_reg_1361;
reg   [31:0] v225_1_load_11_reg_1366;
wire   [31:0] v185_fu_806_p1;
wire   [31:0] v191_fu_810_p1;
wire   [31:0] v196_fu_814_p1;
reg   [31:0] v205_reg_1386;
reg   [31:0] v211_reg_1391;
reg   [31:0] v216_reg_1396;
wire   [31:0] v202_fu_819_p1;
wire   [31:0] v207_fu_824_p1;
wire   [31:0] v213_fu_829_p1;
reg   [31:0] v206_reg_1416;
reg   [31:0] v212_reg_1421;
reg   [31:0] v217_reg_1426;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_6_fu_551_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_565_p1;
wire   [63:0] zext_ln182_6_fu_604_p1;
wire   [63:0] zext_ln179_fu_618_p1;
wire   [63:0] zext_ln212_fu_629_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln219_fu_737_p1;
wire   [63:0] zext_ln264_fu_757_p1;
wire   [63:0] zext_ln271_fu_762_p1;
reg   [7:0] v116_fu_102;
wire   [7:0] add_ln170_fu_719_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_3;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln178_fu_853_p1;
wire    ap_block_pp0_stage3;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln185_fu_858_p1;
wire   [31:0] bitcast_ln231_fu_873_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_878_p1;
wire   [31:0] bitcast_ln283_fu_912_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_916_p1;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v227_5_ce1_local;
reg    v227_5_ce0_local;
reg    v227_7_ce1_local;
reg    v227_7_ce0_local;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln192_fu_833_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln198_fu_838_p1;
wire   [31:0] bitcast_ln244_fu_883_p1;
wire   [31:0] bitcast_ln250_fu_888_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln205_fu_843_p1;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln211_fu_848_p1;
wire   [31:0] bitcast_ln257_fu_893_p1;
wire   [31:0] bitcast_ln263_fu_898_p1;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln218_fu_863_p1;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln224_fu_868_p1;
wire   [31:0] bitcast_ln270_fu_903_p1;
wire   [31:0] bitcast_ln276_fu_908_p1;
reg   [31:0] grp_fu_462_p0;
reg   [31:0] grp_fu_462_p1;
reg   [31:0] grp_fu_466_p0;
reg   [31:0] grp_fu_466_p1;
reg   [31:0] grp_fu_470_p0;
reg   [31:0] grp_fu_470_p1;
reg   [31:0] grp_fu_474_p0;
reg   [31:0] grp_fu_474_p1;
reg   [31:0] grp_fu_478_p0;
reg   [31:0] grp_fu_478_p1;
reg   [31:0] grp_fu_482_p0;
reg   [31:0] grp_fu_482_p1;
wire   [12:0] zext_ln175_5_fu_541_p1;
wire   [12:0] add_ln175_fu_545_p2;
wire   [13:0] add_ln171_fu_559_p2;
wire   [6:0] tmp_s_fu_572_p4;
wire   [7:0] or_ln179_4_fu_582_p3;
wire   [12:0] zext_ln182_5_fu_594_p1;
wire   [12:0] add_ln182_fu_598_p2;
wire   [13:0] add_ln179_fu_612_p2;
wire   [13:0] add_ln212_fu_625_p2;
wire   [31:0] v121_fu_657_p2;
wire   [31:0] v121_fu_657_p4;
wire   [31:0] v121_fu_657_p6;
wire   [31:0] v121_fu_657_p8;
wire   [31:0] v121_fu_657_p9;
wire   [31:0] v127_fu_696_p2;
wire   [31:0] v127_fu_696_p4;
wire   [31:0] v127_fu_696_p6;
wire   [31:0] v127_fu_696_p8;
wire   [31:0] v127_fu_696_p9;
wire   [13:0] add_ln219_fu_733_p2;
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
wire   [2:0] v121_fu_657_p1;
wire   [2:0] v121_fu_657_p3;
wire  signed [2:0] v121_fu_657_p5;
wire  signed [2:0] v121_fu_657_p7;
wire   [2:0] v127_fu_696_p1;
wire   [2:0] v127_fu_696_p3;
wire  signed [2:0] v127_fu_696_p5;
wire  signed [2:0] v127_fu_696_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_fu_102 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U162(.din0(v121_fu_657_p2),.din1(v121_fu_657_p4),.din2(v121_fu_657_p6),.din3(v121_fu_657_p8),.def(v121_fu_657_p9),.sel(empty),.dout(v121_fu_657_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U163(.din0(v127_fu_696_p2),.din1(v127_fu_696_p4),.din2(v127_fu_696_p6),.din3(v127_fu_696_p8),.def(v127_fu_696_p9),.sel(empty),.dout(v127_fu_696_p11));
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
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_494 <= v225_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_494 <= v225_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_fu_102 <= 8'd0;
    end else if (((icmp_ln170_reg_1004 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_102 <= add_ln170_fu_719_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln264_reg_1096 <= add_ln264_fu_637_p2;
        v121_reg_1121 <= v121_fu_657_p11;
        v127_reg_1133 <= v127_fu_696_p11;
        v225_0_addr_7_reg_1236 <= zext_ln264_fu_757_p1;
        v225_0_addr_7_reg_1236_pp0_iter2_reg <= v225_0_addr_7_reg_1236;
        v225_0_addr_9_reg_1246 <= zext_ln271_fu_762_p1;
        v225_0_addr_9_reg_1246_pp0_iter2_reg <= v225_0_addr_9_reg_1246;
        v225_0_addr_9_reg_1246_pp0_iter3_reg <= v225_0_addr_9_reg_1246_pp0_iter2_reg;
        v225_0_addr_reg_1090 <= zext_ln212_fu_629_p1;
        v225_0_addr_reg_1090_pp0_iter1_reg <= v225_0_addr_reg_1090;
        v225_0_addr_reg_1090_pp0_iter2_reg <= v225_0_addr_reg_1090_pp0_iter1_reg;
        v225_1_addr_11_reg_1251 <= zext_ln271_fu_762_p1;
        v225_1_addr_11_reg_1251_pp0_iter2_reg <= v225_1_addr_11_reg_1251;
        v225_1_addr_11_reg_1251_pp0_iter3_reg <= v225_1_addr_11_reg_1251_pp0_iter2_reg;
        v225_1_addr_7_reg_1101 <= zext_ln212_fu_629_p1;
        v225_1_addr_7_reg_1101_pp0_iter1_reg <= v225_1_addr_7_reg_1101;
        v225_1_addr_7_reg_1101_pp0_iter2_reg <= v225_1_addr_7_reg_1101_pp0_iter1_reg;
        v225_1_addr_8_reg_1241 <= zext_ln264_fu_757_p1;
        v225_1_addr_8_reg_1241_pp0_iter2_reg <= v225_1_addr_8_reg_1241;
        v225_1_addr_8_reg_1241_pp0_iter3_reg <= v225_1_addr_8_reg_1241_pp0_iter2_reg;
        v225_2_addr_9_reg_1106 <= zext_ln212_fu_629_p1;
        v225_2_addr_9_reg_1106_pp0_iter1_reg <= v225_2_addr_9_reg_1106;
        v225_2_addr_9_reg_1106_pp0_iter2_reg <= v225_2_addr_9_reg_1106_pp0_iter1_reg;
        v225_3_addr_9_reg_1111 <= zext_ln212_fu_629_p1;
        v225_3_addr_9_reg_1111_pp0_iter1_reg <= v225_3_addr_9_reg_1111;
        v225_3_addr_9_reg_1111_pp0_iter2_reg <= v225_3_addr_9_reg_1111_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln271_reg_1191 <= add_ln271_fu_745_p2;
        icmp_ln170_reg_1004 <= icmp_ln170_fu_531_p2;
        v116_3_reg_999 <= ap_sig_allocacmp_v116_3;
        v225_0_addr_8_reg_1185 <= zext_ln219_fu_737_p1;
        v225_0_addr_8_reg_1185_pp0_iter2_reg <= v225_0_addr_8_reg_1185;
        v225_1_addr_10_reg_1196 <= zext_ln219_fu_737_p1;
        v225_1_addr_10_reg_1196_pp0_iter2_reg <= v225_1_addr_10_reg_1196;
        v225_1_addr_9_reg_1075 <= zext_ln179_fu_618_p1;
        v225_1_addr_9_reg_1075_pp0_iter1_reg <= v225_1_addr_9_reg_1075;
        v225_1_addr_9_reg_1075_pp0_iter2_reg <= v225_1_addr_9_reg_1075_pp0_iter1_reg;
        v225_1_addr_reg_1034 <= zext_ln171_fu_565_p1;
        v225_1_addr_reg_1034_pp0_iter1_reg <= v225_1_addr_reg_1034;
        v225_1_addr_reg_1034_pp0_iter2_reg <= v225_1_addr_reg_1034_pp0_iter1_reg;
        v225_2_addr_10_reg_1080 <= zext_ln179_fu_618_p1;
        v225_2_addr_10_reg_1080_pp0_iter1_reg <= v225_2_addr_10_reg_1080;
        v225_2_addr_10_reg_1080_pp0_iter2_reg <= v225_2_addr_10_reg_1080_pp0_iter1_reg;
        v225_2_addr_11_reg_1201 <= zext_ln219_fu_737_p1;
        v225_2_addr_11_reg_1201_pp0_iter2_reg <= v225_2_addr_11_reg_1201;
        v225_2_addr_reg_1039 <= zext_ln171_fu_565_p1;
        v225_2_addr_reg_1039_pp0_iter1_reg <= v225_2_addr_reg_1039;
        v225_2_addr_reg_1039_pp0_iter2_reg <= v225_2_addr_reg_1039_pp0_iter1_reg;
        v225_3_addr_10_reg_1085 <= zext_ln179_fu_618_p1;
        v225_3_addr_10_reg_1085_pp0_iter1_reg <= v225_3_addr_10_reg_1085;
        v225_3_addr_10_reg_1085_pp0_iter2_reg <= v225_3_addr_10_reg_1085_pp0_iter1_reg;
        v225_3_addr_11_reg_1206 <= zext_ln219_fu_737_p1;
        v225_3_addr_11_reg_1206_pp0_iter2_reg <= v225_3_addr_11_reg_1206;
        v225_3_addr_reg_1044 <= zext_ln171_fu_565_p1;
        v225_3_addr_reg_1044_pp0_iter1_reg <= v225_3_addr_reg_1044;
        v225_3_addr_reg_1044_pp0_iter2_reg <= v225_3_addr_reg_1044_pp0_iter1_reg;
        zext_ln175_reg_1008[7 : 0] <= zext_ln175_fu_537_p1[7 : 0];
        zext_ln182_reg_1049[7 : 1] <= zext_ln182_fu_590_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_486 <= v225_0_q1;
        reg_490 <= v225_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_499 <= grp_fu_5266_p_dout0;
        reg_503 <= grp_fu_5270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_507 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_511 <= grp_fu_5266_p_dout0;
        reg_515 <= grp_fu_5270_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_519 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1165 <= grp_fu_5278_p_dout0;
        v128_reg_1170 <= grp_fu_5282_p_dout0;
        v134_reg_1175 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1221 <= grp_fu_5278_p_dout0;
        v145_reg_1226 <= grp_fu_5282_p_dout0;
        v150_reg_1231 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1271 <= grp_fu_5278_p_dout0;
        v161_reg_1276 <= grp_fu_5282_p_dout0;
        v167_reg_1281 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1301 <= grp_fu_5278_p_dout0;
        v178_reg_1311 <= grp_fu_5282_p_dout0;
        v183_reg_1321 <= grp_fu_5286_p_dout0;
        v225_2_load_10_reg_1306 <= v225_2_q1;
        v225_2_load_11_reg_1316 <= v225_2_q0;
        v225_3_load_10_reg_1326 <= v225_3_q1;
        v225_3_load_11_reg_1331 <= v225_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1351 <= grp_fu_5278_p_dout0;
        v194_reg_1356 <= grp_fu_5282_p_dout0;
        v200_reg_1361 <= grp_fu_5286_p_dout0;
        v225_1_load_11_reg_1366 <= v225_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1386 <= grp_fu_5278_p_dout0;
        v211_reg_1391 <= grp_fu_5282_p_dout0;
        v216_reg_1396 <= grp_fu_5286_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1416 <= grp_fu_5266_p_dout0;
        v212_reg_1421 <= grp_fu_5270_p_dout0;
        v217_reg_1426 <= grp_fu_5274_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_load_7_reg_1128 <= v225_1_q0;
        v225_1_load_reg_1116 <= v225_1_q1;
        v225_2_load_9_reg_1145 <= v225_2_q0;
        v225_2_load_reg_1140 <= v225_2_q1;
        v225_3_load_9_reg_1155 <= v225_3_q0;
        v225_3_load_reg_1150 <= v225_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_load_8_reg_1160 <= v225_1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1004 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v116_3 = v116_fu_102;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_462_p0 = v202_fu_819_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_462_p0 = v185_fu_806_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_462_p0 = v169_fu_793_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_462_p0 = v152_fu_779_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_462_p0 = v136_fu_767_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_462_p0 = v117_fu_729_p1;
        end else begin
            grp_fu_462_p0 = 'bx;
        end
    end else begin
        grp_fu_462_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_462_p1 = v205_reg_1386;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_462_p1 = v189_reg_1351;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_462_p1 = v172_reg_1301;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_462_p1 = v156_reg_1271;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_462_p1 = v139_reg_1221;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_462_p1 = v122_reg_1165;
        end else begin
            grp_fu_462_p1 = 'bx;
        end
    end else begin
        grp_fu_462_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_466_p0 = v207_fu_824_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_466_p0 = v191_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_466_p0 = v174_fu_798_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_466_p0 = v158_fu_784_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_466_p0 = v141_fu_771_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_466_p0 = v124_fu_749_p1;
        end else begin
            grp_fu_466_p0 = 'bx;
        end
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_466_p1 = v211_reg_1391;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_466_p1 = v194_reg_1356;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_466_p1 = v178_reg_1311;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_466_p1 = v161_reg_1276;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_466_p1 = v145_reg_1226;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_466_p1 = v128_reg_1170;
        end else begin
            grp_fu_466_p1 = 'bx;
        end
    end else begin
        grp_fu_466_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_470_p0 = v213_fu_829_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_470_p0 = v196_fu_814_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_470_p0 = v180_fu_802_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_470_p0 = v163_fu_789_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_470_p0 = v147_fu_775_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_470_p0 = v130_fu_753_p1;
        end else begin
            grp_fu_470_p0 = 'bx;
        end
    end else begin
        grp_fu_470_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_470_p1 = v216_reg_1396;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_470_p1 = v200_reg_1361;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_470_p1 = v183_reg_1321;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_470_p1 = v167_reg_1281;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_470_p1 = v150_reg_1231;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_470_p1 = v134_reg_1175;
        end else begin
            grp_fu_470_p1 = 'bx;
        end
    end else begin
        grp_fu_470_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_474_p0 = v199_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_474_p0 = v188_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_474_p0 = v166_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_474_p0 = v155_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_474_p0 = v133_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_474_p0 = v120_5;
    end else begin
        grp_fu_474_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_474_p1 = v127_reg_1133;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_474_p1 = v121_reg_1121;
    end else begin
        grp_fu_474_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_478_p0 = v210_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_478_p0 = v188_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_478_p0 = v177_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_478_p0 = v155_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_478_p0 = v144_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_478_p0 = v120_5;
    end else begin
        grp_fu_478_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_478_p1 = v121_reg_1121;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_478_p1 = v127_reg_1133;
    end else begin
        grp_fu_478_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_482_p0 = v210_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_482_p0 = v199_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_482_p0 = v177_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_482_p0 = v166_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_482_p0 = v144_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_482_p0 = v133_5;
    end else begin
        grp_fu_482_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_482_p1 = v127_reg_1133;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_482_p1 = v121_reg_1121;
    end else begin
        grp_fu_482_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_9_reg_1246_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_reg_1090_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln271_fu_762_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln219_fu_737_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_7_reg_1236_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_8_reg_1185_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln264_fu_757_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = v225_0_addr_reg_1090;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d0_local = bitcast_ln276_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln218_fu_863_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_0_d1_local = bitcast_ln270_fu_903_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_0_d1_local = bitcast_ln224_fu_868_p1;
        end else begin
            v225_0_d1_local = 'bx;
        end
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
        v225_1_address0_local = v225_1_addr_11_reg_1251_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address0_local = v225_1_addr_10_reg_1196_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_9_reg_1075_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_11_reg_1251;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = v225_1_addr_10_reg_1196;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_618_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_8_reg_1241_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_7_reg_1101_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_reg_1034_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_8_reg_1241;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln212_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_565_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d0_local = bitcast_ln289_fu_916_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d0_local = bitcast_ln237_fu_878_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d0_local = bitcast_ln185_fu_858_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d1_local = bitcast_ln283_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d1_local = bitcast_ln231_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d1_local = bitcast_ln178_fu_853_p1;
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
        v225_2_address0_local = v225_2_addr_11_reg_1201_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_10_reg_1080_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_11_reg_1201;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_618_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address1_local = v225_2_addr_9_reg_1106_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_reg_1039_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_9_reg_1106;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_565_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_2_d0_local = bitcast_ln250_fu_888_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln198_fu_838_p1;
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
            v225_2_d1_local = bitcast_ln244_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln192_fu_833_p1;
        end else begin
            v225_2_d1_local = 'bx;
        end
    end else begin
        v225_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address0_local = v225_3_addr_11_reg_1206_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_10_reg_1085_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_11_reg_1206;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_618_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_9_reg_1111_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_reg_1044_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_9_reg_1111;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_565_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d0_local = bitcast_ln263_fu_898_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_3_d0_local = bitcast_ln211_fu_848_p1;
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
            v225_3_d1_local = bitcast_ln257_fu_893_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_3_d1_local = bitcast_ln205_fu_843_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce0_local = 1'b1;
    end else begin
        v227_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce1_local = 1'b1;
    end else begin
        v227_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce0_local = 1'b1;
    end else begin
        v227_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce1_local = 1'b1;
    end else begin
        v227_7_ce1_local = 1'b0;
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
assign add_ln170_fu_719_p2 = (v116_3_reg_999 + 8'd2);
assign add_ln171_fu_559_p2 = (mul_ln277_1 + zext_ln175_fu_537_p1);
assign add_ln175_fu_545_p2 = (mul_ln175 + zext_ln175_5_fu_541_p1);
assign add_ln179_fu_612_p2 = (mul_ln277_1 + zext_ln182_fu_590_p1);
assign add_ln182_fu_598_p2 = (mul_ln175 + zext_ln182_5_fu_594_p1);
assign add_ln212_fu_625_p2 = (mul_ln212_1 + zext_ln175_reg_1008);
assign add_ln219_fu_733_p2 = (mul_ln212_1 + zext_ln182_reg_1049);
assign add_ln264_fu_637_p2 = (mul_ln264_1 + zext_ln175_reg_1008);
assign add_ln271_fu_745_p2 = (mul_ln264_1 + zext_ln182_reg_1049);
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
assign bitcast_ln178_fu_853_p1 = reg_499;
assign bitcast_ln185_fu_858_p1 = reg_503;
assign bitcast_ln192_fu_833_p1 = reg_507;
assign bitcast_ln198_fu_838_p1 = reg_511;
assign bitcast_ln205_fu_843_p1 = reg_515;
assign bitcast_ln211_fu_848_p1 = reg_519;
assign bitcast_ln218_fu_863_p1 = reg_511;
assign bitcast_ln224_fu_868_p1 = reg_515;
assign bitcast_ln231_fu_873_p1 = reg_507;
assign bitcast_ln237_fu_878_p1 = reg_499;
assign bitcast_ln244_fu_883_p1 = reg_503;
assign bitcast_ln250_fu_888_p1 = reg_519;
assign bitcast_ln257_fu_893_p1 = reg_499;
assign bitcast_ln263_fu_898_p1 = reg_503;
assign bitcast_ln270_fu_903_p1 = reg_507;
assign bitcast_ln276_fu_908_p1 = v206_reg_1416;
assign bitcast_ln283_fu_912_p1 = v212_reg_1421;
assign bitcast_ln289_fu_916_p1 = v217_reg_1426;
assign grp_fu_5266_p_ce = 1'b1;
assign grp_fu_5266_p_din0 = grp_fu_462_p0;
assign grp_fu_5266_p_din1 = grp_fu_462_p1;
assign grp_fu_5266_p_opcode = 2'd0;
assign grp_fu_5270_p_ce = 1'b1;
assign grp_fu_5270_p_din0 = grp_fu_466_p0;
assign grp_fu_5270_p_din1 = grp_fu_466_p1;
assign grp_fu_5270_p_opcode = 2'd0;
assign grp_fu_5274_p_ce = 1'b1;
assign grp_fu_5274_p_din0 = grp_fu_470_p0;
assign grp_fu_5274_p_din1 = grp_fu_470_p1;
assign grp_fu_5274_p_opcode = 2'd0;
assign grp_fu_5278_p_ce = 1'b1;
assign grp_fu_5278_p_din0 = grp_fu_474_p0;
assign grp_fu_5278_p_din1 = grp_fu_474_p1;
assign grp_fu_5282_p_ce = 1'b1;
assign grp_fu_5282_p_din0 = grp_fu_478_p0;
assign grp_fu_5282_p_din1 = grp_fu_478_p1;
assign grp_fu_5286_p_ce = 1'b1;
assign grp_fu_5286_p_din0 = grp_fu_482_p0;
assign grp_fu_5286_p_din1 = grp_fu_482_p1;
assign icmp_ln170_fu_531_p2 = ((ap_sig_allocacmp_v116_3 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_4_fu_582_p3 = {{tmp_s_fu_572_p4}, {1'd1}};
assign tmp_s_fu_572_p4 = {{ap_sig_allocacmp_v116_3[7:1]}};
assign v117_fu_729_p1 = v225_1_load_reg_1116;
assign v121_fu_657_p2 = v227_1_q1;
assign v121_fu_657_p4 = v227_3_q1;
assign v121_fu_657_p6 = v227_5_q1;
assign v121_fu_657_p8 = v227_7_q1;
assign v121_fu_657_p9 = 'bx;
assign v124_fu_749_p1 = v225_1_load_7_reg_1128;
assign v127_fu_696_p2 = v227_1_q0;
assign v127_fu_696_p4 = v227_3_q0;
assign v127_fu_696_p6 = v227_5_q0;
assign v127_fu_696_p8 = v227_7_q0;
assign v127_fu_696_p9 = 'bx;
assign v130_fu_753_p1 = v225_2_load_reg_1140;
assign v136_fu_767_p1 = v225_2_load_9_reg_1145;
assign v141_fu_771_p1 = v225_3_load_reg_1150;
assign v147_fu_775_p1 = v225_3_load_9_reg_1155;
assign v152_fu_779_p1 = reg_486;
assign v158_fu_784_p1 = reg_490;
assign v163_fu_789_p1 = v225_1_load_8_reg_1160;
assign v169_fu_793_p1 = reg_494;
assign v174_fu_798_p1 = v225_2_load_10_reg_1306;
assign v180_fu_802_p1 = v225_2_load_11_reg_1316;
assign v185_fu_806_p1 = v225_3_load_10_reg_1326;
assign v191_fu_810_p1 = v225_3_load_11_reg_1331;
assign v196_fu_814_p1 = reg_486;
assign v202_fu_819_p1 = reg_490;
assign v207_fu_824_p1 = reg_494;
assign v213_fu_829_p1 = v225_1_load_11_reg_1366;
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
assign v227_1_address0 = zext_ln182_6_fu_604_p1;
assign v227_1_address1 = zext_ln175_6_fu_551_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_3_address0 = zext_ln182_6_fu_604_p1;
assign v227_3_address1 = zext_ln175_6_fu_551_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign v227_5_address0 = zext_ln182_6_fu_604_p1;
assign v227_5_address1 = zext_ln175_6_fu_551_p1;
assign v227_5_ce0 = v227_5_ce0_local;
assign v227_5_ce1 = v227_5_ce1_local;
assign v227_7_address0 = zext_ln182_6_fu_604_p1;
assign v227_7_address1 = zext_ln175_6_fu_551_p1;
assign v227_7_ce0 = v227_7_ce0_local;
assign v227_7_ce1 = v227_7_ce1_local;
assign zext_ln171_fu_565_p1 = add_ln171_fu_559_p2;
assign zext_ln175_5_fu_541_p1 = ap_sig_allocacmp_v116_3;
assign zext_ln175_6_fu_551_p1 = add_ln175_fu_545_p2;
assign zext_ln175_fu_537_p1 = ap_sig_allocacmp_v116_3;
assign zext_ln179_fu_618_p1 = add_ln179_fu_612_p2;
assign zext_ln182_5_fu_594_p1 = or_ln179_4_fu_582_p3;
assign zext_ln182_6_fu_604_p1 = add_ln182_fu_598_p2;
assign zext_ln182_fu_590_p1 = or_ln179_4_fu_582_p3;
assign zext_ln212_fu_629_p1 = add_ln212_fu_625_p2;
assign zext_ln219_fu_737_p1 = add_ln219_fu_733_p2;
assign zext_ln264_fu_757_p1 = add_ln264_reg_1096;
assign zext_ln271_fu_762_p1 = add_ln271_reg_1191;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1008[13:8] <= 6'b000000;
    zext_ln182_reg_1049[0] <= 1'b1;
    zext_ln182_reg_1049[13:8] <= 6'b000000;
end
endmodule 
