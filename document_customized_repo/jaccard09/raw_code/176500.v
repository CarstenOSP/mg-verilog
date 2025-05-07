module kernel_2mm_kernel_2mm_node1_Pipeline_label_53 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v114,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,mul_ln212,mul_ln264,mul_ln277,cmp11_0,v120_8,v133_8,v144_8,v155_8,v166_8,v177_8,v188_8,v199_8,v210_8,grp_fu_15319_p_din0,grp_fu_15319_p_din1,grp_fu_15319_p_opcode,grp_fu_15319_p_dout0,grp_fu_15319_p_ce,grp_fu_15323_p_din0,grp_fu_15323_p_din1,grp_fu_15323_p_opcode,grp_fu_15323_p_dout0,grp_fu_15323_p_ce,grp_fu_15327_p_din0,grp_fu_15327_p_din1,grp_fu_15327_p_opcode,grp_fu_15327_p_dout0,grp_fu_15327_p_ce,grp_fu_15331_p_din0,grp_fu_15331_p_din1,grp_fu_15331_p_dout0,grp_fu_15331_p_ce,grp_fu_15335_p_din0,grp_fu_15335_p_din1,grp_fu_15335_p_dout0,grp_fu_15335_p_ce,grp_fu_15339_p_din0,grp_fu_15339_p_din1,grp_fu_15339_p_dout0,grp_fu_15339_p_ce); 
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
input  [15:0] v114;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
input  [13:0] mul_ln212;
input  [13:0] mul_ln264;
input  [13:0] mul_ln277;
input  [0:0] cmp11_0;
input  [31:0] v120_8;
input  [31:0] v133_8;
input  [31:0] v144_8;
input  [31:0] v155_8;
input  [31:0] v166_8;
input  [31:0] v177_8;
input  [31:0] v188_8;
input  [31:0] v199_8;
input  [31:0] v210_8;
output  [31:0] grp_fu_15319_p_din0;
output  [31:0] grp_fu_15319_p_din1;
output  [1:0] grp_fu_15319_p_opcode;
input  [31:0] grp_fu_15319_p_dout0;
output   grp_fu_15319_p_ce;
output  [31:0] grp_fu_15323_p_din0;
output  [31:0] grp_fu_15323_p_din1;
output  [1:0] grp_fu_15323_p_opcode;
input  [31:0] grp_fu_15323_p_dout0;
output   grp_fu_15323_p_ce;
output  [31:0] grp_fu_15327_p_din0;
output  [31:0] grp_fu_15327_p_din1;
output  [1:0] grp_fu_15327_p_opcode;
input  [31:0] grp_fu_15327_p_dout0;
output   grp_fu_15327_p_ce;
output  [31:0] grp_fu_15331_p_din0;
output  [31:0] grp_fu_15331_p_din1;
input  [31:0] grp_fu_15331_p_dout0;
output   grp_fu_15331_p_ce;
output  [31:0] grp_fu_15335_p_din0;
output  [31:0] grp_fu_15335_p_din1;
input  [31:0] grp_fu_15335_p_dout0;
output   grp_fu_15335_p_ce;
output  [31:0] grp_fu_15339_p_din0;
output  [31:0] grp_fu_15339_p_din1;
input  [31:0] grp_fu_15339_p_dout0;
output   grp_fu_15339_p_ce;
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
reg   [0:0] icmp_ln170_reg_958;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_394;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_398;
reg   [31:0] reg_402;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_406;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_410;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v116_reg_952;
wire   [0:0] icmp_ln170_fu_422_p2;
wire   [13:0] zext_ln175_fu_428_p1;
reg   [13:0] zext_ln175_reg_962;
wire   [15:0] mul_ln175_fu_432_p2;
reg   [15:0] mul_ln175_reg_968;
reg   [13:0] v225_1_addr_5_reg_974;
reg   [13:0] v225_1_addr_5_reg_974_pp0_iter1_reg;
reg   [13:0] v225_1_addr_5_reg_974_pp0_iter2_reg;
reg   [13:0] v225_2_addr_5_reg_979;
reg   [13:0] v225_2_addr_5_reg_979_pp0_iter1_reg;
reg   [13:0] v225_2_addr_5_reg_979_pp0_iter2_reg;
reg   [13:0] v225_3_addr_5_reg_985;
reg   [13:0] v225_3_addr_5_reg_985_pp0_iter1_reg;
reg   [13:0] v225_3_addr_5_reg_985_pp0_iter2_reg;
wire   [7:0] or_ln179_1_fu_461_p3;
reg   [7:0] or_ln179_1_reg_990;
wire   [13:0] zext_ln182_fu_469_p1;
reg   [13:0] zext_ln182_reg_995;
reg   [13:0] v225_1_addr_6_reg_1001;
reg   [13:0] v225_1_addr_6_reg_1001_pp0_iter1_reg;
reg   [13:0] v225_1_addr_6_reg_1001_pp0_iter2_reg;
reg   [13:0] v225_2_addr_6_reg_1006;
reg   [13:0] v225_2_addr_6_reg_1006_pp0_iter1_reg;
reg   [13:0] v225_2_addr_6_reg_1006_pp0_iter2_reg;
reg   [13:0] v225_3_addr_6_reg_1012;
reg   [13:0] v225_3_addr_6_reg_1012_pp0_iter1_reg;
reg   [13:0] v225_3_addr_6_reg_1012_pp0_iter2_reg;
reg   [31:0] v225_1_load_4_reg_1022;
reg   [31:0] v225_1_load_5_reg_1032;
reg   [31:0] v225_2_load_4_reg_1037;
reg   [31:0] v227_load_2_reg_1042;
reg   [31:0] v227_load_3_reg_1047;
wire   [31:0] v121_fu_512_p1;
reg   [31:0] v121_reg_1052;
wire   [31:0] v127_fu_517_p1;
reg   [31:0] v127_reg_1059;
reg   [13:0] v225_0_addr_7_reg_1066;
reg   [13:0] v225_0_addr_7_reg_1066_pp0_iter2_reg;
wire   [13:0] add_ln264_fu_543_p2;
reg   [13:0] add_ln264_reg_1071;
reg   [13:0] v225_1_addr_7_reg_1076;
reg   [13:0] v225_1_addr_7_reg_1076_pp0_iter2_reg;
reg   [13:0] v225_2_addr_7_reg_1081;
reg   [13:0] v225_2_addr_7_reg_1081_pp0_iter2_reg;
reg   [13:0] v225_3_addr_7_reg_1086;
reg   [13:0] v225_3_addr_7_reg_1086_pp0_iter2_reg;
reg   [13:0] v225_3_addr_7_reg_1086_pp0_iter3_reg;
reg   [31:0] v122_reg_1091;
reg   [13:0] v225_0_addr_8_reg_1096;
reg   [13:0] v225_0_addr_8_reg_1096_pp0_iter2_reg;
wire   [13:0] add_ln271_fu_559_p2;
reg   [13:0] add_ln271_reg_1101;
reg   [13:0] v225_1_addr_8_reg_1106;
reg   [13:0] v225_1_addr_8_reg_1106_pp0_iter2_reg;
reg   [13:0] v225_2_addr_8_reg_1112;
reg   [13:0] v225_2_addr_8_reg_1112_pp0_iter2_reg;
reg   [13:0] v225_3_addr_8_reg_1117;
reg   [13:0] v225_3_addr_8_reg_1117_pp0_iter2_reg;
reg   [13:0] v225_3_addr_8_reg_1117_pp0_iter3_reg;
reg   [31:0] v128_reg_1122;
reg   [31:0] v134_reg_1127;
reg   [13:0] v225_0_addr_9_reg_1132;
reg   [13:0] v225_0_addr_9_reg_1132_pp0_iter2_reg;
reg   [13:0] v225_0_addr_9_reg_1132_pp0_iter3_reg;
reg   [13:0] v225_1_addr_9_reg_1137;
reg   [13:0] v225_1_addr_9_reg_1137_pp0_iter2_reg;
reg   [13:0] v225_1_addr_9_reg_1137_pp0_iter3_reg;
wire   [31:0] v118_fu_571_p3;
reg   [13:0] v225_0_addr_10_reg_1148;
reg   [13:0] v225_0_addr_10_reg_1148_pp0_iter2_reg;
reg   [13:0] v225_0_addr_10_reg_1148_pp0_iter3_reg;
reg   [13:0] v225_1_addr_10_reg_1153;
reg   [13:0] v225_1_addr_10_reg_1153_pp0_iter2_reg;
reg   [13:0] v225_1_addr_10_reg_1153_pp0_iter3_reg;
wire   [31:0] v125_fu_587_p3;
wire   [31:0] v131_fu_598_p3;
reg   [31:0] v225_2_load_5_reg_1168;
reg   [31:0] v139_reg_1173;
reg   [31:0] v225_3_load_4_reg_1178;
reg   [31:0] v145_reg_1183;
reg   [31:0] v225_3_load_5_reg_1188;
reg   [31:0] v150_reg_1193;
wire   [31:0] v153_fu_610_p3;
reg   [31:0] v153_reg_1198;
wire   [31:0] v159_fu_621_p3;
reg   [31:0] v159_reg_1203;
wire   [31:0] v137_fu_631_p3;
wire   [31:0] v142_fu_642_p3;
wire   [31:0] v148_fu_653_p3;
reg   [31:0] v156_reg_1223;
reg   [31:0] v161_reg_1228;
reg   [31:0] v225_1_load_6_reg_1233;
reg   [31:0] v167_reg_1238;
wire   [31:0] v170_fu_665_p3;
reg   [31:0] v170_reg_1243;
wire   [31:0] v175_fu_676_p3;
reg   [31:0] v175_reg_1248;
wire   [31:0] v181_fu_687_p3;
reg   [31:0] v181_reg_1253;
wire   [31:0] v186_fu_698_p3;
reg   [31:0] v186_reg_1258;
wire   [31:0] v192_fu_709_p3;
reg   [31:0] v192_reg_1263;
wire   [31:0] v197_fu_720_p3;
reg   [31:0] v197_reg_1268;
wire   [31:0] v203_fu_731_p3;
reg   [31:0] v203_reg_1273;
wire   [31:0] v164_fu_741_p3;
reg   [31:0] v172_reg_1283;
reg   [31:0] v178_reg_1288;
reg   [31:0] v183_reg_1293;
wire   [31:0] v208_fu_753_p3;
reg   [31:0] v208_reg_1298;
wire   [31:0] v214_fu_764_p3;
reg   [31:0] v214_reg_1303;
reg   [31:0] v189_reg_1308;
reg   [31:0] v194_reg_1313;
reg   [31:0] v200_reg_1318;
reg   [31:0] v205_reg_1323;
reg   [31:0] v211_reg_1328;
reg   [31:0] v216_reg_1333;
reg   [31:0] v201_reg_1338;
reg   [31:0] v206_reg_1343;
reg   [31:0] v212_reg_1348;
reg   [31:0] v217_reg_1353;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln171_fu_444_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln179_fu_479_p1;
wire   [63:0] zext_ln175_22_fu_494_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln182_22_fu_507_p1;
wire   [63:0] zext_ln212_fu_535_p1;
wire   [63:0] zext_ln219_fu_551_p1;
wire   [63:0] zext_ln264_fu_563_p1;
wire   [63:0] zext_ln271_fu_579_p1;
reg   [7:0] v116_1_fu_88;
wire   [7:0] add_ln170_fu_521_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln178_fu_776_p1;
wire    ap_block_pp0_stage3;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln185_fu_781_p1;
wire   [31:0] bitcast_ln231_fu_811_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_816_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln283_fu_849_p1;
wire   [31:0] bitcast_ln289_fu_853_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln192_fu_771_p1;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln198_fu_786_p1;
wire   [31:0] bitcast_ln244_fu_821_p1;
wire   [31:0] bitcast_ln250_fu_826_p1;
reg    v227_ce1_local;
reg    v227_ce0_local;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln205_fu_791_p1;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln211_fu_796_p1;
wire   [31:0] bitcast_ln257_fu_831_p1;
wire   [31:0] bitcast_ln263_fu_836_p1;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln218_fu_801_p1;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln224_fu_806_p1;
wire   [31:0] bitcast_ln270_fu_841_p1;
wire   [31:0] bitcast_ln276_fu_845_p1;
reg   [31:0] grp_fu_370_p0;
reg   [31:0] grp_fu_370_p1;
reg   [31:0] grp_fu_374_p0;
reg   [31:0] grp_fu_374_p1;
reg   [31:0] grp_fu_378_p0;
reg   [31:0] grp_fu_378_p1;
reg   [31:0] grp_fu_382_p0;
reg   [31:0] grp_fu_382_p1;
reg   [31:0] grp_fu_386_p0;
reg   [31:0] grp_fu_386_p1;
reg   [31:0] grp_fu_390_p0;
reg   [31:0] grp_fu_390_p1;
wire   [8:0] mul_ln175_fu_432_p1;
wire   [13:0] add_ln171_fu_438_p2;
wire   [6:0] tmp_s_fu_451_p4;
wire   [13:0] add_ln179_fu_473_p2;
wire   [15:0] zext_ln175_21_fu_486_p1;
wire   [15:0] add_ln175_fu_489_p2;
wire   [15:0] zext_ln182_21_fu_499_p1;
wire   [15:0] add_ln182_fu_502_p2;
wire   [13:0] add_ln212_fu_531_p2;
wire   [13:0] add_ln219_fu_547_p2;
wire   [31:0] v117_fu_568_p1;
wire   [31:0] v124_fu_584_p1;
wire   [31:0] v130_fu_595_p1;
wire   [31:0] v152_fu_606_p1;
wire   [31:0] v158_fu_617_p1;
wire   [31:0] v136_fu_628_p1;
wire   [31:0] v141_fu_639_p1;
wire   [31:0] v147_fu_650_p1;
wire   [31:0] v169_fu_661_p1;
wire   [31:0] v174_fu_672_p1;
wire   [31:0] v180_fu_683_p1;
wire   [31:0] v185_fu_694_p1;
wire   [31:0] v191_fu_705_p1;
wire   [31:0] v196_fu_716_p1;
wire   [31:0] v202_fu_727_p1;
wire   [31:0] v163_fu_738_p1;
wire   [31:0] v207_fu_749_p1;
wire   [31:0] v213_fu_760_p1;
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
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_1_fu_88 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U34(.din0(v114),.din1(mul_ln175_fu_432_p1),.dout(mul_ln175_fu_432_p2));
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
        v116_1_fu_88 <= 8'd0;
    end else if (((icmp_ln170_reg_958 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_1_fu_88 <= add_ln170_fu_521_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln264_reg_1071 <= add_ln264_fu_543_p2;
        add_ln271_reg_1101 <= add_ln271_fu_559_p2;
        icmp_ln170_reg_958 <= icmp_ln170_fu_422_p2;
        mul_ln175_reg_968 <= mul_ln175_fu_432_p2;
        or_ln179_1_reg_990[7 : 1] <= or_ln179_1_fu_461_p3[7 : 1];
        v116_reg_952 <= ap_sig_allocacmp_v116;
        v225_0_addr_7_reg_1066 <= zext_ln212_fu_535_p1;
        v225_0_addr_7_reg_1066_pp0_iter2_reg <= v225_0_addr_7_reg_1066;
        v225_0_addr_8_reg_1096 <= zext_ln219_fu_551_p1;
        v225_0_addr_8_reg_1096_pp0_iter2_reg <= v225_0_addr_8_reg_1096;
        v225_1_addr_5_reg_974 <= zext_ln171_fu_444_p1;
        v225_1_addr_5_reg_974_pp0_iter1_reg <= v225_1_addr_5_reg_974;
        v225_1_addr_5_reg_974_pp0_iter2_reg <= v225_1_addr_5_reg_974_pp0_iter1_reg;
        v225_1_addr_6_reg_1001 <= zext_ln179_fu_479_p1;
        v225_1_addr_6_reg_1001_pp0_iter1_reg <= v225_1_addr_6_reg_1001;
        v225_1_addr_6_reg_1001_pp0_iter2_reg <= v225_1_addr_6_reg_1001_pp0_iter1_reg;
        v225_1_addr_7_reg_1076 <= zext_ln212_fu_535_p1;
        v225_1_addr_7_reg_1076_pp0_iter2_reg <= v225_1_addr_7_reg_1076;
        v225_1_addr_8_reg_1106 <= zext_ln219_fu_551_p1;
        v225_1_addr_8_reg_1106_pp0_iter2_reg <= v225_1_addr_8_reg_1106;
        v225_2_addr_5_reg_979 <= zext_ln171_fu_444_p1;
        v225_2_addr_5_reg_979_pp0_iter1_reg <= v225_2_addr_5_reg_979;
        v225_2_addr_5_reg_979_pp0_iter2_reg <= v225_2_addr_5_reg_979_pp0_iter1_reg;
        v225_2_addr_6_reg_1006 <= zext_ln179_fu_479_p1;
        v225_2_addr_6_reg_1006_pp0_iter1_reg <= v225_2_addr_6_reg_1006;
        v225_2_addr_6_reg_1006_pp0_iter2_reg <= v225_2_addr_6_reg_1006_pp0_iter1_reg;
        v225_2_addr_7_reg_1081 <= zext_ln212_fu_535_p1;
        v225_2_addr_7_reg_1081_pp0_iter2_reg <= v225_2_addr_7_reg_1081;
        v225_2_addr_8_reg_1112 <= zext_ln219_fu_551_p1;
        v225_2_addr_8_reg_1112_pp0_iter2_reg <= v225_2_addr_8_reg_1112;
        v225_3_addr_5_reg_985 <= zext_ln171_fu_444_p1;
        v225_3_addr_5_reg_985_pp0_iter1_reg <= v225_3_addr_5_reg_985;
        v225_3_addr_5_reg_985_pp0_iter2_reg <= v225_3_addr_5_reg_985_pp0_iter1_reg;
        v225_3_addr_6_reg_1012 <= zext_ln179_fu_479_p1;
        v225_3_addr_6_reg_1012_pp0_iter1_reg <= v225_3_addr_6_reg_1012;
        v225_3_addr_6_reg_1012_pp0_iter2_reg <= v225_3_addr_6_reg_1012_pp0_iter1_reg;
        v225_3_addr_7_reg_1086 <= zext_ln212_fu_535_p1;
        v225_3_addr_7_reg_1086_pp0_iter2_reg <= v225_3_addr_7_reg_1086;
        v225_3_addr_7_reg_1086_pp0_iter3_reg <= v225_3_addr_7_reg_1086_pp0_iter2_reg;
        v225_3_addr_8_reg_1117 <= zext_ln219_fu_551_p1;
        v225_3_addr_8_reg_1117_pp0_iter2_reg <= v225_3_addr_8_reg_1117;
        v225_3_addr_8_reg_1117_pp0_iter3_reg <= v225_3_addr_8_reg_1117_pp0_iter2_reg;
        zext_ln175_reg_962[7 : 0] <= zext_ln175_fu_428_p1[7 : 0];
        zext_ln182_reg_995[7 : 1] <= zext_ln182_fu_469_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_394 <= grp_fu_15319_p_dout0;
        reg_398 <= grp_fu_15323_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_402 <= grp_fu_15327_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_406 <= grp_fu_15319_p_dout0;
        reg_410 <= grp_fu_15323_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v121_reg_1052 <= v121_fu_512_p1;
        v127_reg_1059 <= v127_fu_517_p1;
        v208_reg_1298 <= v208_fu_753_p3;
        v214_reg_1303 <= v214_fu_764_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v122_reg_1091 <= grp_fu_15331_p_dout0;
        v128_reg_1122 <= grp_fu_15335_p_dout0;
        v134_reg_1127 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v139_reg_1173 <= grp_fu_15331_p_dout0;
        v145_reg_1183 <= grp_fu_15335_p_dout0;
        v150_reg_1193 <= grp_fu_15339_p_dout0;
        v225_2_load_5_reg_1168 <= v225_2_q0;
        v225_3_load_4_reg_1178 <= v225_3_q1;
        v225_3_load_5_reg_1188 <= v225_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v153_reg_1198 <= v153_fu_610_p3;
        v159_reg_1203 <= v159_fu_621_p3;
        v225_0_addr_10_reg_1148 <= zext_ln271_fu_579_p1;
        v225_0_addr_10_reg_1148_pp0_iter2_reg <= v225_0_addr_10_reg_1148;
        v225_0_addr_10_reg_1148_pp0_iter3_reg <= v225_0_addr_10_reg_1148_pp0_iter2_reg;
        v225_0_addr_9_reg_1132 <= zext_ln264_fu_563_p1;
        v225_0_addr_9_reg_1132_pp0_iter2_reg <= v225_0_addr_9_reg_1132;
        v225_0_addr_9_reg_1132_pp0_iter3_reg <= v225_0_addr_9_reg_1132_pp0_iter2_reg;
        v225_1_addr_10_reg_1153 <= zext_ln271_fu_579_p1;
        v225_1_addr_10_reg_1153_pp0_iter2_reg <= v225_1_addr_10_reg_1153;
        v225_1_addr_10_reg_1153_pp0_iter3_reg <= v225_1_addr_10_reg_1153_pp0_iter2_reg;
        v225_1_addr_9_reg_1137 <= zext_ln264_fu_563_p1;
        v225_1_addr_9_reg_1137_pp0_iter2_reg <= v225_1_addr_9_reg_1137;
        v225_1_addr_9_reg_1137_pp0_iter3_reg <= v225_1_addr_9_reg_1137_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v156_reg_1223 <= grp_fu_15331_p_dout0;
        v161_reg_1228 <= grp_fu_15335_p_dout0;
        v167_reg_1238 <= grp_fu_15339_p_dout0;
        v225_1_load_6_reg_1233 <= v225_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v170_reg_1243 <= v170_fu_665_p3;
        v175_reg_1248 <= v175_fu_676_p3;
        v181_reg_1253 <= v181_fu_687_p3;
        v186_reg_1258 <= v186_fu_698_p3;
        v192_reg_1263 <= v192_fu_709_p3;
        v197_reg_1268 <= v197_fu_720_p3;
        v203_reg_1273 <= v203_fu_731_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v172_reg_1283 <= grp_fu_15331_p_dout0;
        v178_reg_1288 <= grp_fu_15335_p_dout0;
        v183_reg_1293 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v189_reg_1308 <= grp_fu_15331_p_dout0;
        v194_reg_1313 <= grp_fu_15335_p_dout0;
        v200_reg_1318 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v201_reg_1338 <= grp_fu_15327_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v205_reg_1323 <= grp_fu_15331_p_dout0;
        v211_reg_1328 <= grp_fu_15335_p_dout0;
        v216_reg_1333 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v206_reg_1343 <= grp_fu_15319_p_dout0;
        v212_reg_1348 <= grp_fu_15323_p_dout0;
        v217_reg_1353 <= grp_fu_15327_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_load_4_reg_1022 <= v225_1_q1;
        v225_1_load_5_reg_1032 <= v225_1_q0;
        v225_2_load_4_reg_1037 <= v225_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v227_load_2_reg_1042 <= v227_q1;
        v227_load_3_reg_1047 <= v227_q0;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_958 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116 = v116_1_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p0 = v203_reg_1273;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_370_p0 = v186_reg_1258;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_370_p0 = v170_reg_1243;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_370_p0 = v153_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_370_p0 = v137_fu_631_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p0 = v118_fu_571_p3;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p1 = v205_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_370_p1 = v189_reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_370_p1 = v172_reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_370_p1 = v156_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_370_p1 = v139_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p1 = v122_reg_1091;
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_p0 = v208_reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_374_p0 = v192_reg_1263;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_374_p0 = v175_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_374_p0 = v159_reg_1203;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_374_p0 = v142_fu_642_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_374_p0 = v125_fu_587_p3;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_p1 = v211_reg_1328;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_374_p1 = v194_reg_1313;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_374_p1 = v178_reg_1288;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_374_p1 = v161_reg_1228;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_374_p1 = v145_reg_1183;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_374_p1 = v128_reg_1122;
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_378_p0 = v214_reg_1303;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_378_p0 = v197_reg_1268;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_378_p0 = v181_reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_378_p0 = v164_fu_741_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_378_p0 = v148_fu_653_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_378_p0 = v131_fu_598_p3;
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_378_p1 = v216_reg_1333;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_378_p1 = v200_reg_1318;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_378_p1 = v183_reg_1293;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_378_p1 = v167_reg_1238;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_378_p1 = v150_reg_1193;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_378_p1 = v134_reg_1127;
    end else begin
        grp_fu_378_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_382_p0 = v199_8;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_382_p0 = v188_8;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_382_p0 = v166_8;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_382_p0 = v155_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_382_p0 = v133_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_382_p0 = v120_8;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_382_p1 = v121_reg_1052;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_382_p1 = v127_reg_1059;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_382_p1 = v121_fu_512_p1;
    end else begin
        grp_fu_382_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_386_p0 = v210_8;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_386_p0 = v188_8;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_386_p0 = v177_8;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_386_p0 = v155_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_386_p0 = v144_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_386_p0 = v120_8;
    end else begin
        grp_fu_386_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_386_p1 = v127_reg_1059;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_386_p1 = v121_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_386_p1 = v127_fu_517_p1;
    end else begin
        grp_fu_386_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_390_p0 = v210_8;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_390_p0 = v199_8;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_390_p0 = v177_8;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_390_p0 = v166_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_390_p0 = v144_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_390_p0 = v133_8;
    end else begin
        grp_fu_390_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_390_p1 = v121_reg_1052;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_390_p1 = v127_reg_1059;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_390_p1 = v121_fu_512_p1;
    end else begin
        grp_fu_390_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_10_reg_1148_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_8_reg_1096_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln271_fu_579_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln219_fu_551_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_9_reg_1132_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_7_reg_1066_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln264_fu_563_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln212_fu_535_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d0_local = bitcast_ln276_fu_845_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln224_fu_806_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d1_local = bitcast_ln270_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln218_fu_801_p1;
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address0_local = v225_1_addr_10_reg_1153_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address0_local = v225_1_addr_9_reg_1137_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_6_reg_1001_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_10_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = v225_1_addr_8_reg_1106;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_479_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_8_reg_1106_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_7_reg_1076_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_5_reg_974_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_9_reg_1137;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_7_reg_1076;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_444_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d0_local = bitcast_ln289_fu_853_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d0_local = bitcast_ln283_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d0_local = bitcast_ln185_fu_781_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_1_d1_local = bitcast_ln237_fu_816_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_1_d1_local = bitcast_ln231_fu_811_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_1_d1_local = bitcast_ln178_fu_776_p1;
        end else begin
            v225_1_d1_local = 'bx;
        end
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address0_local = v225_2_addr_8_reg_1112_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_5_reg_979_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_8_reg_1112;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = v225_2_addr_6_reg_1006;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_7_reg_1081_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_6_reg_1006_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_7_reg_1081;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_444_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d0_local = bitcast_ln250_fu_826_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln192_fu_771_p1;
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
            v225_2_d1_local = bitcast_ln244_fu_821_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_2_d1_local = bitcast_ln198_fu_786_p1;
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
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_8_reg_1117_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_6_reg_1012_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_8_reg_1117;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_6_reg_1012;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_7_reg_1086_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_5_reg_985_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_7_reg_1086;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_5_reg_985;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d0_local = bitcast_ln263_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln211_fu_796_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d1_local = bitcast_ln257_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d1_local = bitcast_ln205_fu_791_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_3_we1_local = 1'b1;
    end else begin
        v225_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_ce0_local = 1'b1;
    end else begin
        v227_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_ce1_local = 1'b1;
    end else begin
        v227_ce1_local = 1'b0;
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
assign add_ln170_fu_521_p2 = (v116_reg_952 + 8'd2);
assign add_ln171_fu_438_p2 = (mul_ln277 + zext_ln175_fu_428_p1);
assign add_ln175_fu_489_p2 = (mul_ln175_reg_968 + zext_ln175_21_fu_486_p1);
assign add_ln179_fu_473_p2 = (mul_ln277 + zext_ln182_fu_469_p1);
assign add_ln182_fu_502_p2 = (mul_ln175_reg_968 + zext_ln182_21_fu_499_p1);
assign add_ln212_fu_531_p2 = (mul_ln212 + zext_ln175_reg_962);
assign add_ln219_fu_547_p2 = (mul_ln212 + zext_ln182_reg_995);
assign add_ln264_fu_543_p2 = (mul_ln264 + zext_ln175_reg_962);
assign add_ln271_fu_559_p2 = (mul_ln264 + zext_ln182_reg_995);
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
assign bitcast_ln178_fu_776_p1 = reg_394;
assign bitcast_ln185_fu_781_p1 = reg_398;
assign bitcast_ln192_fu_771_p1 = reg_402;
assign bitcast_ln198_fu_786_p1 = reg_406;
assign bitcast_ln205_fu_791_p1 = reg_410;
assign bitcast_ln211_fu_796_p1 = reg_402;
assign bitcast_ln218_fu_801_p1 = reg_394;
assign bitcast_ln224_fu_806_p1 = reg_398;
assign bitcast_ln231_fu_811_p1 = reg_402;
assign bitcast_ln237_fu_816_p1 = reg_394;
assign bitcast_ln244_fu_821_p1 = reg_398;
assign bitcast_ln250_fu_826_p1 = reg_402;
assign bitcast_ln257_fu_831_p1 = reg_406;
assign bitcast_ln263_fu_836_p1 = reg_410;
assign bitcast_ln270_fu_841_p1 = v201_reg_1338;
assign bitcast_ln276_fu_845_p1 = v206_reg_1343;
assign bitcast_ln283_fu_849_p1 = v212_reg_1348;
assign bitcast_ln289_fu_853_p1 = v217_reg_1353;
assign grp_fu_15319_p_ce = 1'b1;
assign grp_fu_15319_p_din0 = grp_fu_370_p0;
assign grp_fu_15319_p_din1 = grp_fu_370_p1;
assign grp_fu_15319_p_opcode = 2'd0;
assign grp_fu_15323_p_ce = 1'b1;
assign grp_fu_15323_p_din0 = grp_fu_374_p0;
assign grp_fu_15323_p_din1 = grp_fu_374_p1;
assign grp_fu_15323_p_opcode = 2'd0;
assign grp_fu_15327_p_ce = 1'b1;
assign grp_fu_15327_p_din0 = grp_fu_378_p0;
assign grp_fu_15327_p_din1 = grp_fu_378_p1;
assign grp_fu_15327_p_opcode = 2'd0;
assign grp_fu_15331_p_ce = 1'b1;
assign grp_fu_15331_p_din0 = grp_fu_382_p0;
assign grp_fu_15331_p_din1 = grp_fu_382_p1;
assign grp_fu_15335_p_ce = 1'b1;
assign grp_fu_15335_p_din0 = grp_fu_386_p0;
assign grp_fu_15335_p_din1 = grp_fu_386_p1;
assign grp_fu_15339_p_ce = 1'b1;
assign grp_fu_15339_p_din0 = grp_fu_390_p0;
assign grp_fu_15339_p_din1 = grp_fu_390_p1;
assign icmp_ln170_fu_422_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign mul_ln175_fu_432_p1 = 16'd190;
assign or_ln179_1_fu_461_p3 = {{tmp_s_fu_451_p4}, {1'd1}};
assign tmp_s_fu_451_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_568_p1 = v225_1_load_4_reg_1022;
assign v118_fu_571_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v117_fu_568_p1);
assign v121_fu_512_p1 = v227_load_2_reg_1042;
assign v124_fu_584_p1 = v225_1_load_5_reg_1032;
assign v125_fu_587_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v124_fu_584_p1);
assign v127_fu_517_p1 = v227_load_3_reg_1047;
assign v130_fu_595_p1 = v225_2_load_4_reg_1037;
assign v131_fu_598_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v130_fu_595_p1);
assign v136_fu_628_p1 = v225_2_load_5_reg_1168;
assign v137_fu_631_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v136_fu_628_p1);
assign v141_fu_639_p1 = v225_3_load_4_reg_1178;
assign v142_fu_642_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v141_fu_639_p1);
assign v147_fu_650_p1 = v225_3_load_5_reg_1188;
assign v148_fu_653_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v147_fu_650_p1);
assign v152_fu_606_p1 = v225_0_q1;
assign v153_fu_610_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v152_fu_606_p1);
assign v158_fu_617_p1 = v225_0_q0;
assign v159_fu_621_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v158_fu_617_p1);
assign v163_fu_738_p1 = v225_1_load_6_reg_1233;
assign v164_fu_741_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v163_fu_738_p1);
assign v169_fu_661_p1 = v225_1_q0;
assign v170_fu_665_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v169_fu_661_p1);
assign v174_fu_672_p1 = v225_2_q1;
assign v175_fu_676_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v174_fu_672_p1);
assign v180_fu_683_p1 = v225_2_q0;
assign v181_fu_687_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v180_fu_683_p1);
assign v185_fu_694_p1 = v225_3_q1;
assign v186_fu_698_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v185_fu_694_p1);
assign v191_fu_705_p1 = v225_3_q0;
assign v192_fu_709_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v191_fu_705_p1);
assign v196_fu_716_p1 = v225_0_q1;
assign v197_fu_720_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v196_fu_716_p1);
assign v202_fu_727_p1 = v225_0_q0;
assign v203_fu_731_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v202_fu_727_p1);
assign v207_fu_749_p1 = v225_1_q1;
assign v208_fu_753_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v207_fu_749_p1);
assign v213_fu_760_p1 = v225_1_q0;
assign v214_fu_764_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v213_fu_760_p1);
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
assign v227_address0 = zext_ln182_22_fu_507_p1;
assign v227_address1 = zext_ln175_22_fu_494_p1;
assign v227_ce0 = v227_ce0_local;
assign v227_ce1 = v227_ce1_local;
assign zext_ln171_fu_444_p1 = add_ln171_fu_438_p2;
assign zext_ln175_21_fu_486_p1 = v116_reg_952;
assign zext_ln175_22_fu_494_p1 = add_ln175_fu_489_p2;
assign zext_ln175_fu_428_p1 = ap_sig_allocacmp_v116;
assign zext_ln179_fu_479_p1 = add_ln179_fu_473_p2;
assign zext_ln182_21_fu_499_p1 = or_ln179_1_reg_990;
assign zext_ln182_22_fu_507_p1 = add_ln182_fu_502_p2;
assign zext_ln182_fu_469_p1 = or_ln179_1_fu_461_p3;
assign zext_ln212_fu_535_p1 = add_ln212_fu_531_p2;
assign zext_ln219_fu_551_p1 = add_ln219_fu_547_p2;
assign zext_ln264_fu_563_p1 = add_ln264_reg_1071;
assign zext_ln271_fu_579_p1 = add_ln271_reg_1101;
always @ (posedge ap_clk) begin
    zext_ln175_reg_962[13:8] <= 6'b000000;
    or_ln179_1_reg_990[0] <= 1'b1;
    zext_ln182_reg_995[0] <= 1'b1;
    zext_ln182_reg_995[13:8] <= 6'b000000;
end
endmodule 