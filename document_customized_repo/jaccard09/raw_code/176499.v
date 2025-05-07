module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v114,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,mul_ln171,mul_ln225,mul_ln277,cmp11_0,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_15319_p_din0,grp_fu_15319_p_din1,grp_fu_15319_p_opcode,grp_fu_15319_p_dout0,grp_fu_15319_p_ce,grp_fu_15323_p_din0,grp_fu_15323_p_din1,grp_fu_15323_p_opcode,grp_fu_15323_p_dout0,grp_fu_15323_p_ce,grp_fu_15327_p_din0,grp_fu_15327_p_din1,grp_fu_15327_p_opcode,grp_fu_15327_p_dout0,grp_fu_15327_p_ce,grp_fu_15331_p_din0,grp_fu_15331_p_din1,grp_fu_15331_p_dout0,grp_fu_15331_p_ce,grp_fu_15335_p_din0,grp_fu_15335_p_din1,grp_fu_15335_p_dout0,grp_fu_15335_p_ce,grp_fu_15339_p_din0,grp_fu_15339_p_din1,grp_fu_15339_p_dout0,grp_fu_15339_p_ce); 
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
input  [13:0] mul_ln171;
input  [13:0] mul_ln225;
input  [13:0] mul_ln277;
input  [0:0] cmp11_0;
input  [31:0] v120;
input  [31:0] v133;
input  [31:0] v144;
input  [31:0] v155;
input  [31:0] v166;
input  [31:0] v177;
input  [31:0] v188;
input  [31:0] v199;
input  [31:0] v210;
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
reg   [0:0] icmp_ln170_reg_964;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_400;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_404;
reg   [31:0] reg_408;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_412;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_416;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v116_19_reg_958;
wire   [0:0] icmp_ln170_fu_428_p2;
wire   [13:0] zext_ln175_fu_434_p1;
reg   [13:0] zext_ln175_reg_968;
reg   [13:0] zext_ln175_reg_968_pp0_iter1_reg;
wire   [15:0] mul_ln175_fu_438_p2;
reg   [15:0] mul_ln175_reg_974;
reg   [13:0] v225_0_addr_1_reg_980;
reg   [13:0] v225_0_addr_1_reg_980_pp0_iter1_reg;
reg   [13:0] v225_0_addr_1_reg_980_pp0_iter2_reg;
reg   [13:0] v225_1_addr_1_reg_985;
reg   [13:0] v225_1_addr_1_reg_985_pp0_iter1_reg;
reg   [13:0] v225_1_addr_1_reg_985_pp0_iter2_reg;
reg   [13:0] v225_2_addr_1_reg_991;
reg   [13:0] v225_2_addr_1_reg_991_pp0_iter1_reg;
reg   [13:0] v225_2_addr_1_reg_991_pp0_iter2_reg;
reg   [13:0] v225_3_addr_1_reg_996;
reg   [13:0] v225_3_addr_1_reg_996_pp0_iter1_reg;
reg   [13:0] v225_3_addr_1_reg_996_pp0_iter2_reg;
wire   [7:0] or_ln1_fu_468_p3;
reg   [7:0] or_ln1_reg_1001;
wire   [13:0] zext_ln182_fu_476_p1;
reg   [13:0] zext_ln182_reg_1006;
reg   [13:0] zext_ln182_reg_1006_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1012;
reg   [13:0] v225_0_addr_2_reg_1012_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1012_pp0_iter2_reg;
reg   [13:0] v225_1_addr_2_reg_1017;
reg   [13:0] v225_1_addr_2_reg_1017_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1017_pp0_iter2_reg;
reg   [13:0] v225_2_addr_2_reg_1023;
reg   [13:0] v225_2_addr_2_reg_1023_pp0_iter1_reg;
reg   [13:0] v225_2_addr_2_reg_1023_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1028;
reg   [13:0] v225_3_addr_2_reg_1028_pp0_iter1_reg;
reg   [13:0] v225_3_addr_2_reg_1028_pp0_iter2_reg;
reg   [31:0] v225_0_load_reg_1038;
reg   [31:0] v225_0_load_1_reg_1048;
reg   [31:0] v225_1_load_reg_1053;
reg   [31:0] v227_load_reg_1058;
reg   [31:0] v227_load_1_reg_1063;
wire   [31:0] v121_fu_520_p1;
reg   [31:0] v121_reg_1068;
wire   [31:0] v127_fu_525_p1;
reg   [31:0] v127_reg_1075;
reg   [31:0] v122_reg_1082;
reg   [31:0] v128_reg_1087;
reg   [31:0] v134_reg_1092;
reg   [13:0] v225_0_addr_3_reg_1097;
reg   [13:0] v225_0_addr_3_reg_1097_pp0_iter2_reg;
wire   [13:0] add_ln277_fu_551_p2;
reg   [13:0] add_ln277_reg_1102;
reg   [13:0] v225_1_addr_3_reg_1107;
reg   [13:0] v225_1_addr_3_reg_1107_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1112;
reg   [13:0] v225_2_addr_3_reg_1112_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1112_pp0_iter3_reg;
reg   [13:0] v225_3_addr_3_reg_1117;
reg   [13:0] v225_3_addr_3_reg_1117_pp0_iter2_reg;
reg   [13:0] v225_3_addr_3_reg_1117_pp0_iter3_reg;
wire   [31:0] v118_fu_558_p3;
reg   [13:0] v225_0_addr_4_reg_1127;
reg   [13:0] v225_0_addr_4_reg_1127_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_578_p2;
reg   [13:0] add_ln284_reg_1133;
reg   [13:0] v225_1_addr_4_reg_1138;
reg   [13:0] v225_1_addr_4_reg_1138_pp0_iter2_reg;
reg   [13:0] v225_2_addr_4_reg_1143;
reg   [13:0] v225_2_addr_4_reg_1143_pp0_iter2_reg;
reg   [13:0] v225_2_addr_4_reg_1143_pp0_iter3_reg;
reg   [13:0] v225_3_addr_4_reg_1148;
reg   [13:0] v225_3_addr_4_reg_1148_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1148_pp0_iter3_reg;
wire   [31:0] v125_fu_585_p3;
wire   [31:0] v131_fu_596_p3;
reg   [31:0] v225_1_load_1_reg_1163;
reg   [31:0] v139_reg_1168;
reg   [31:0] v225_2_load_reg_1173;
reg   [31:0] v145_reg_1178;
reg   [31:0] v225_2_load_1_reg_1183;
reg   [31:0] v150_reg_1188;
wire   [31:0] v153_fu_608_p3;
reg   [31:0] v153_reg_1193;
wire   [31:0] v159_fu_619_p3;
reg   [31:0] v159_reg_1198;
reg   [13:0] v225_0_addr_5_reg_1203;
reg   [13:0] v225_0_addr_5_reg_1203_pp0_iter2_reg;
reg   [13:0] v225_0_addr_5_reg_1203_pp0_iter3_reg;
reg   [13:0] v225_0_addr_6_reg_1209;
reg   [13:0] v225_0_addr_6_reg_1209_pp0_iter2_reg;
reg   [13:0] v225_0_addr_6_reg_1209_pp0_iter3_reg;
wire   [31:0] v137_fu_637_p3;
wire   [31:0] v142_fu_648_p3;
wire   [31:0] v148_fu_659_p3;
reg   [31:0] v156_reg_1229;
reg   [31:0] v161_reg_1234;
reg   [31:0] v225_0_load_2_reg_1239;
reg   [31:0] v167_reg_1244;
wire   [31:0] v170_fu_671_p3;
reg   [31:0] v170_reg_1249;
wire   [31:0] v175_fu_682_p3;
reg   [31:0] v175_reg_1254;
wire   [31:0] v181_fu_693_p3;
reg   [31:0] v181_reg_1259;
wire   [31:0] v186_fu_704_p3;
reg   [31:0] v186_reg_1264;
wire   [31:0] v192_fu_715_p3;
reg   [31:0] v192_reg_1269;
wire   [31:0] v197_fu_726_p3;
reg   [31:0] v197_reg_1274;
wire   [31:0] v203_fu_737_p3;
reg   [31:0] v203_reg_1279;
wire   [31:0] v164_fu_747_p3;
reg   [31:0] v172_reg_1289;
reg   [31:0] v178_reg_1294;
reg   [31:0] v183_reg_1299;
wire   [31:0] v208_fu_759_p3;
reg   [31:0] v208_reg_1304;
wire   [31:0] v214_fu_770_p3;
reg   [31:0] v214_reg_1309;
reg   [31:0] v189_reg_1314;
reg   [31:0] v194_reg_1319;
reg   [31:0] v200_reg_1324;
reg   [31:0] v205_reg_1329;
reg   [31:0] v211_reg_1334;
reg   [31:0] v216_reg_1339;
reg   [31:0] v201_reg_1344;
reg   [31:0] v206_reg_1349;
reg   [31:0] v212_reg_1354;
reg   [31:0] v217_reg_1359;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln171_fu_450_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln179_fu_486_p1;
wire   [63:0] zext_ln175_64_fu_502_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln182_64_fu_515_p1;
wire   [63:0] zext_ln225_fu_543_p1;
wire   [63:0] zext_ln232_fu_570_p1;
wire   [63:0] zext_ln277_fu_626_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_630_p1;
reg   [7:0] v116_fu_88;
wire   [7:0] add_ln170_fu_529_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_19;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_782_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_787_p1;
wire   [31:0] bitcast_ln231_fu_817_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_822_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln283_fu_855_p1;
wire   [31:0] bitcast_ln289_fu_859_p1;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln192_fu_777_p1;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln198_fu_792_p1;
wire   [31:0] bitcast_ln244_fu_827_p1;
wire   [31:0] bitcast_ln250_fu_832_p1;
reg    v227_ce1_local;
reg    v227_ce0_local;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_797_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_802_p1;
wire   [31:0] bitcast_ln257_fu_837_p1;
wire   [31:0] bitcast_ln263_fu_842_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln218_fu_807_p1;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln224_fu_812_p1;
wire   [31:0] bitcast_ln270_fu_847_p1;
wire   [31:0] bitcast_ln276_fu_851_p1;
reg   [31:0] grp_fu_376_p0;
reg   [31:0] grp_fu_376_p1;
reg   [31:0] grp_fu_380_p0;
reg   [31:0] grp_fu_380_p1;
reg   [31:0] grp_fu_384_p0;
reg   [31:0] grp_fu_384_p1;
reg   [31:0] grp_fu_388_p0;
reg   [31:0] grp_fu_388_p1;
reg   [31:0] grp_fu_392_p0;
reg   [31:0] grp_fu_392_p1;
reg   [31:0] grp_fu_396_p0;
reg   [31:0] grp_fu_396_p1;
wire   [8:0] mul_ln175_fu_438_p1;
wire   [13:0] add_ln171_fu_444_p2;
wire   [6:0] tmp_8_fu_458_p4;
wire   [13:0] add_ln179_fu_480_p2;
wire   [15:0] zext_ln175_63_fu_494_p1;
wire   [15:0] add_ln175_fu_497_p2;
wire   [15:0] zext_ln182_63_fu_507_p1;
wire   [15:0] add_ln182_fu_510_p2;
wire   [13:0] add_ln225_fu_539_p2;
wire   [31:0] v117_fu_555_p1;
wire   [13:0] add_ln232_fu_566_p2;
wire   [31:0] v124_fu_582_p1;
wire   [31:0] v130_fu_593_p1;
wire   [31:0] v152_fu_604_p1;
wire   [31:0] v158_fu_615_p1;
wire   [31:0] v136_fu_634_p1;
wire   [31:0] v141_fu_645_p1;
wire   [31:0] v147_fu_656_p1;
wire   [31:0] v169_fu_667_p1;
wire   [31:0] v174_fu_678_p1;
wire   [31:0] v180_fu_689_p1;
wire   [31:0] v185_fu_700_p1;
wire   [31:0] v191_fu_711_p1;
wire   [31:0] v196_fu_722_p1;
wire   [31:0] v202_fu_733_p1;
wire   [31:0] v163_fu_744_p1;
wire   [31:0] v207_fu_755_p1;
wire   [31:0] v213_fu_766_p1;
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
#0 v116_fu_88 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U7(.din0(v114),.din1(mul_ln175_fu_438_p1),.dout(mul_ln175_fu_438_p2));
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
        v116_fu_88 <= 8'd0;
    end else if (((icmp_ln170_reg_964 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_88 <= add_ln170_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_1102 <= add_ln277_fu_551_p2;
        add_ln284_reg_1133 <= add_ln284_fu_578_p2;
        v153_reg_1193 <= v153_fu_608_p3;
        v159_reg_1198 <= v159_fu_619_p3;
        v225_0_addr_3_reg_1097 <= zext_ln225_fu_543_p1;
        v225_0_addr_3_reg_1097_pp0_iter2_reg <= v225_0_addr_3_reg_1097;
        v225_0_addr_4_reg_1127 <= zext_ln232_fu_570_p1;
        v225_0_addr_4_reg_1127_pp0_iter2_reg <= v225_0_addr_4_reg_1127;
        v225_1_addr_3_reg_1107 <= zext_ln225_fu_543_p1;
        v225_1_addr_3_reg_1107_pp0_iter2_reg <= v225_1_addr_3_reg_1107;
        v225_1_addr_4_reg_1138 <= zext_ln232_fu_570_p1;
        v225_1_addr_4_reg_1138_pp0_iter2_reg <= v225_1_addr_4_reg_1138;
        v225_2_addr_3_reg_1112 <= zext_ln225_fu_543_p1;
        v225_2_addr_3_reg_1112_pp0_iter2_reg <= v225_2_addr_3_reg_1112;
        v225_2_addr_3_reg_1112_pp0_iter3_reg <= v225_2_addr_3_reg_1112_pp0_iter2_reg;
        v225_2_addr_4_reg_1143 <= zext_ln232_fu_570_p1;
        v225_2_addr_4_reg_1143_pp0_iter2_reg <= v225_2_addr_4_reg_1143;
        v225_2_addr_4_reg_1143_pp0_iter3_reg <= v225_2_addr_4_reg_1143_pp0_iter2_reg;
        v225_3_addr_3_reg_1117 <= zext_ln225_fu_543_p1;
        v225_3_addr_3_reg_1117_pp0_iter2_reg <= v225_3_addr_3_reg_1117;
        v225_3_addr_3_reg_1117_pp0_iter3_reg <= v225_3_addr_3_reg_1117_pp0_iter2_reg;
        v225_3_addr_4_reg_1148 <= zext_ln232_fu_570_p1;
        v225_3_addr_4_reg_1148_pp0_iter2_reg <= v225_3_addr_4_reg_1148;
        v225_3_addr_4_reg_1148_pp0_iter3_reg <= v225_3_addr_4_reg_1148_pp0_iter2_reg;
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
        icmp_ln170_reg_964 <= icmp_ln170_fu_428_p2;
        mul_ln175_reg_974 <= mul_ln175_fu_438_p2;
        or_ln1_reg_1001[7 : 1] <= or_ln1_fu_468_p3[7 : 1];
        v116_19_reg_958 <= ap_sig_allocacmp_v116_19;
        v225_0_addr_1_reg_980 <= zext_ln171_fu_450_p1;
        v225_0_addr_1_reg_980_pp0_iter1_reg <= v225_0_addr_1_reg_980;
        v225_0_addr_1_reg_980_pp0_iter2_reg <= v225_0_addr_1_reg_980_pp0_iter1_reg;
        v225_0_addr_2_reg_1012 <= zext_ln179_fu_486_p1;
        v225_0_addr_2_reg_1012_pp0_iter1_reg <= v225_0_addr_2_reg_1012;
        v225_0_addr_2_reg_1012_pp0_iter2_reg <= v225_0_addr_2_reg_1012_pp0_iter1_reg;
        v225_1_addr_1_reg_985 <= zext_ln171_fu_450_p1;
        v225_1_addr_1_reg_985_pp0_iter1_reg <= v225_1_addr_1_reg_985;
        v225_1_addr_1_reg_985_pp0_iter2_reg <= v225_1_addr_1_reg_985_pp0_iter1_reg;
        v225_1_addr_2_reg_1017 <= zext_ln179_fu_486_p1;
        v225_1_addr_2_reg_1017_pp0_iter1_reg <= v225_1_addr_2_reg_1017;
        v225_1_addr_2_reg_1017_pp0_iter2_reg <= v225_1_addr_2_reg_1017_pp0_iter1_reg;
        v225_2_addr_1_reg_991 <= zext_ln171_fu_450_p1;
        v225_2_addr_1_reg_991_pp0_iter1_reg <= v225_2_addr_1_reg_991;
        v225_2_addr_1_reg_991_pp0_iter2_reg <= v225_2_addr_1_reg_991_pp0_iter1_reg;
        v225_2_addr_2_reg_1023 <= zext_ln179_fu_486_p1;
        v225_2_addr_2_reg_1023_pp0_iter1_reg <= v225_2_addr_2_reg_1023;
        v225_2_addr_2_reg_1023_pp0_iter2_reg <= v225_2_addr_2_reg_1023_pp0_iter1_reg;
        v225_3_addr_1_reg_996 <= zext_ln171_fu_450_p1;
        v225_3_addr_1_reg_996_pp0_iter1_reg <= v225_3_addr_1_reg_996;
        v225_3_addr_1_reg_996_pp0_iter2_reg <= v225_3_addr_1_reg_996_pp0_iter1_reg;
        v225_3_addr_2_reg_1028 <= zext_ln179_fu_486_p1;
        v225_3_addr_2_reg_1028_pp0_iter1_reg <= v225_3_addr_2_reg_1028;
        v225_3_addr_2_reg_1028_pp0_iter2_reg <= v225_3_addr_2_reg_1028_pp0_iter1_reg;
        zext_ln175_reg_968[7 : 0] <= zext_ln175_fu_434_p1[7 : 0];
        zext_ln175_reg_968_pp0_iter1_reg[7 : 0] <= zext_ln175_reg_968[7 : 0];
        zext_ln182_reg_1006[7 : 1] <= zext_ln182_fu_476_p1[7 : 1];
        zext_ln182_reg_1006_pp0_iter1_reg[7 : 1] <= zext_ln182_reg_1006[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_400 <= grp_fu_15319_p_dout0;
        reg_404 <= grp_fu_15323_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_408 <= grp_fu_15327_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_412 <= grp_fu_15319_p_dout0;
        reg_416 <= grp_fu_15323_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v121_reg_1068 <= v121_fu_520_p1;
        v127_reg_1075 <= v127_fu_525_p1;
        v208_reg_1304 <= v208_fu_759_p3;
        v214_reg_1309 <= v214_fu_770_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v122_reg_1082 <= grp_fu_15331_p_dout0;
        v128_reg_1087 <= grp_fu_15335_p_dout0;
        v134_reg_1092 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v139_reg_1168 <= grp_fu_15331_p_dout0;
        v145_reg_1178 <= grp_fu_15335_p_dout0;
        v150_reg_1188 <= grp_fu_15339_p_dout0;
        v225_1_load_1_reg_1163 <= v225_1_q0;
        v225_2_load_1_reg_1183 <= v225_2_q0;
        v225_2_load_reg_1173 <= v225_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v156_reg_1229 <= grp_fu_15331_p_dout0;
        v161_reg_1234 <= grp_fu_15335_p_dout0;
        v167_reg_1244 <= grp_fu_15339_p_dout0;
        v225_0_load_2_reg_1239 <= v225_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v170_reg_1249 <= v170_fu_671_p3;
        v175_reg_1254 <= v175_fu_682_p3;
        v181_reg_1259 <= v181_fu_693_p3;
        v186_reg_1264 <= v186_fu_704_p3;
        v192_reg_1269 <= v192_fu_715_p3;
        v197_reg_1274 <= v197_fu_726_p3;
        v203_reg_1279 <= v203_fu_737_p3;
        v225_0_addr_5_reg_1203 <= zext_ln277_fu_626_p1;
        v225_0_addr_5_reg_1203_pp0_iter2_reg <= v225_0_addr_5_reg_1203;
        v225_0_addr_5_reg_1203_pp0_iter3_reg <= v225_0_addr_5_reg_1203_pp0_iter2_reg;
        v225_0_addr_6_reg_1209 <= zext_ln284_fu_630_p1;
        v225_0_addr_6_reg_1209_pp0_iter2_reg <= v225_0_addr_6_reg_1209;
        v225_0_addr_6_reg_1209_pp0_iter3_reg <= v225_0_addr_6_reg_1209_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v172_reg_1289 <= grp_fu_15331_p_dout0;
        v178_reg_1294 <= grp_fu_15335_p_dout0;
        v183_reg_1299 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v189_reg_1314 <= grp_fu_15331_p_dout0;
        v194_reg_1319 <= grp_fu_15335_p_dout0;
        v200_reg_1324 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v201_reg_1344 <= grp_fu_15327_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v205_reg_1329 <= grp_fu_15331_p_dout0;
        v211_reg_1334 <= grp_fu_15335_p_dout0;
        v216_reg_1339 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v206_reg_1349 <= grp_fu_15319_p_dout0;
        v212_reg_1354 <= grp_fu_15323_p_dout0;
        v217_reg_1359 <= grp_fu_15327_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_1_reg_1048 <= v225_0_q0;
        v225_0_load_reg_1038 <= v225_0_q1;
        v225_1_load_reg_1053 <= v225_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v227_load_1_reg_1063 <= v227_q0;
        v227_load_reg_1058 <= v227_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_964 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116_19 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_19 = v116_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p0 = v203_reg_1279;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_376_p0 = v186_reg_1264;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_376_p0 = v170_reg_1249;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_376_p0 = v153_reg_1193;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_376_p0 = v137_fu_637_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_376_p0 = v118_fu_558_p3;
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p1 = v205_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_376_p1 = v189_reg_1314;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_376_p1 = v172_reg_1289;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_376_p1 = v156_reg_1229;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_376_p1 = v139_reg_1168;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_376_p1 = v122_reg_1082;
    end else begin
        grp_fu_376_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_380_p0 = v208_reg_1304;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_380_p0 = v192_reg_1269;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_380_p0 = v175_reg_1254;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_380_p0 = v159_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_380_p0 = v142_fu_648_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_380_p0 = v125_fu_585_p3;
    end else begin
        grp_fu_380_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_380_p1 = v211_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_380_p1 = v194_reg_1319;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_380_p1 = v178_reg_1294;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_380_p1 = v161_reg_1234;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_380_p1 = v145_reg_1178;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_380_p1 = v128_reg_1087;
    end else begin
        grp_fu_380_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_384_p0 = v214_reg_1309;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_384_p0 = v197_reg_1274;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_384_p0 = v181_reg_1259;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_384_p0 = v164_fu_747_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_384_p0 = v148_fu_659_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_384_p0 = v131_fu_596_p3;
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_384_p1 = v216_reg_1339;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_384_p1 = v200_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_384_p1 = v183_reg_1299;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_384_p1 = v167_reg_1244;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_384_p1 = v150_reg_1188;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_384_p1 = v134_reg_1092;
    end else begin
        grp_fu_384_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_388_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_388_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_388_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_388_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_388_p0 = v133;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_388_p0 = v120;
    end else begin
        grp_fu_388_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_388_p1 = v121_reg_1068;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_388_p1 = v127_reg_1075;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_388_p1 = v121_fu_520_p1;
    end else begin
        grp_fu_388_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_392_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_392_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_392_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_392_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_392_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_392_p0 = v120;
    end else begin
        grp_fu_392_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_392_p1 = v127_reg_1075;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_392_p1 = v121_reg_1068;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_392_p1 = v127_fu_525_p1;
    end else begin
        grp_fu_392_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_396_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_396_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_396_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_396_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_396_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_396_p0 = v133;
    end else begin
        grp_fu_396_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_396_p1 = v121_reg_1068;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_396_p1 = v127_reg_1075;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_396_p1 = v121_fu_520_p1;
    end else begin
        grp_fu_396_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_6_reg_1209_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_5_reg_1203_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1012_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_486_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_4_reg_1127_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1097_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_1_reg_980_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_450_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d0_local = bitcast_ln289_fu_859_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln283_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_787_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_0_d1_local = bitcast_ln237_fu_822_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_0_d1_local = bitcast_ln231_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_0_d1_local = bitcast_ln178_fu_782_p1;
        end else begin
            v225_0_d1_local = 'bx;
        end
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address0_local = v225_1_addr_4_reg_1138_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_1_reg_985_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1017;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1107_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_2_reg_1017_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln225_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_450_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_1_d0_local = bitcast_ln250_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln192_fu_777_p1;
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
            v225_1_d1_local = bitcast_ln244_fu_827_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_1_d1_local = bitcast_ln198_fu_792_p1;
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
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_4_reg_1143_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1023_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1023;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1112_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_1_reg_991_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = zext_ln225_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = v225_2_addr_1_reg_991;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_d0_local = bitcast_ln263_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_d0_local = bitcast_ln211_fu_802_p1;
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_d1_local = bitcast_ln257_fu_837_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_d1_local = bitcast_ln205_fu_797_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_4_reg_1148_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1028_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1028;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1117_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address1_local = v225_3_addr_1_reg_996_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = zext_ln225_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_1_reg_996;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d0_local = bitcast_ln276_fu_851_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d0_local = bitcast_ln224_fu_812_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d1_local = bitcast_ln270_fu_847_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d1_local = bitcast_ln218_fu_807_p1;
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
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
assign add_ln170_fu_529_p2 = (v116_19_reg_958 + 8'd2);
assign add_ln171_fu_444_p2 = (mul_ln171 + zext_ln175_fu_434_p1);
assign add_ln175_fu_497_p2 = (mul_ln175_reg_974 + zext_ln175_63_fu_494_p1);
assign add_ln179_fu_480_p2 = (mul_ln171 + zext_ln182_fu_476_p1);
assign add_ln182_fu_510_p2 = (mul_ln175_reg_974 + zext_ln182_63_fu_507_p1);
assign add_ln225_fu_539_p2 = (mul_ln225 + zext_ln175_reg_968_pp0_iter1_reg);
assign add_ln232_fu_566_p2 = (mul_ln225 + zext_ln182_reg_1006_pp0_iter1_reg);
assign add_ln277_fu_551_p2 = (mul_ln277 + zext_ln175_reg_968_pp0_iter1_reg);
assign add_ln284_fu_578_p2 = (mul_ln277 + zext_ln182_reg_1006_pp0_iter1_reg);
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
assign bitcast_ln178_fu_782_p1 = reg_400;
assign bitcast_ln185_fu_787_p1 = reg_404;
assign bitcast_ln192_fu_777_p1 = reg_408;
assign bitcast_ln198_fu_792_p1 = reg_412;
assign bitcast_ln205_fu_797_p1 = reg_416;
assign bitcast_ln211_fu_802_p1 = reg_408;
assign bitcast_ln218_fu_807_p1 = reg_400;
assign bitcast_ln224_fu_812_p1 = reg_404;
assign bitcast_ln231_fu_817_p1 = reg_408;
assign bitcast_ln237_fu_822_p1 = reg_400;
assign bitcast_ln244_fu_827_p1 = reg_404;
assign bitcast_ln250_fu_832_p1 = reg_408;
assign bitcast_ln257_fu_837_p1 = reg_412;
assign bitcast_ln263_fu_842_p1 = reg_416;
assign bitcast_ln270_fu_847_p1 = v201_reg_1344;
assign bitcast_ln276_fu_851_p1 = v206_reg_1349;
assign bitcast_ln283_fu_855_p1 = v212_reg_1354;
assign bitcast_ln289_fu_859_p1 = v217_reg_1359;
assign grp_fu_15319_p_ce = 1'b1;
assign grp_fu_15319_p_din0 = grp_fu_376_p0;
assign grp_fu_15319_p_din1 = grp_fu_376_p1;
assign grp_fu_15319_p_opcode = 2'd0;
assign grp_fu_15323_p_ce = 1'b1;
assign grp_fu_15323_p_din0 = grp_fu_380_p0;
assign grp_fu_15323_p_din1 = grp_fu_380_p1;
assign grp_fu_15323_p_opcode = 2'd0;
assign grp_fu_15327_p_ce = 1'b1;
assign grp_fu_15327_p_din0 = grp_fu_384_p0;
assign grp_fu_15327_p_din1 = grp_fu_384_p1;
assign grp_fu_15327_p_opcode = 2'd0;
assign grp_fu_15331_p_ce = 1'b1;
assign grp_fu_15331_p_din0 = grp_fu_388_p0;
assign grp_fu_15331_p_din1 = grp_fu_388_p1;
assign grp_fu_15335_p_ce = 1'b1;
assign grp_fu_15335_p_din0 = grp_fu_392_p0;
assign grp_fu_15335_p_din1 = grp_fu_392_p1;
assign grp_fu_15339_p_ce = 1'b1;
assign grp_fu_15339_p_din0 = grp_fu_396_p0;
assign grp_fu_15339_p_din1 = grp_fu_396_p1;
assign icmp_ln170_fu_428_p2 = ((ap_sig_allocacmp_v116_19 < 8'd190) ? 1'b1 : 1'b0);
assign mul_ln175_fu_438_p1 = 16'd190;
assign or_ln1_fu_468_p3 = {{tmp_8_fu_458_p4}, {1'd1}};
assign tmp_8_fu_458_p4 = {{ap_sig_allocacmp_v116_19[7:1]}};
assign v117_fu_555_p1 = v225_0_load_reg_1038;
assign v118_fu_558_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v117_fu_555_p1);
assign v121_fu_520_p1 = v227_load_reg_1058;
assign v124_fu_582_p1 = v225_0_load_1_reg_1048;
assign v125_fu_585_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v124_fu_582_p1);
assign v127_fu_525_p1 = v227_load_1_reg_1063;
assign v130_fu_593_p1 = v225_1_load_reg_1053;
assign v131_fu_596_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v130_fu_593_p1);
assign v136_fu_634_p1 = v225_1_load_1_reg_1163;
assign v137_fu_637_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v136_fu_634_p1);
assign v141_fu_645_p1 = v225_2_load_reg_1173;
assign v142_fu_648_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v141_fu_645_p1);
assign v147_fu_656_p1 = v225_2_load_1_reg_1183;
assign v148_fu_659_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v147_fu_656_p1);
assign v152_fu_604_p1 = v225_3_q1;
assign v153_fu_608_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v152_fu_604_p1);
assign v158_fu_615_p1 = v225_3_q0;
assign v159_fu_619_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v158_fu_615_p1);
assign v163_fu_744_p1 = v225_0_load_2_reg_1239;
assign v164_fu_747_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v163_fu_744_p1);
assign v169_fu_667_p1 = v225_0_q0;
assign v170_fu_671_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v169_fu_667_p1);
assign v174_fu_678_p1 = v225_1_q1;
assign v175_fu_682_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v174_fu_678_p1);
assign v180_fu_689_p1 = v225_1_q0;
assign v181_fu_693_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v180_fu_689_p1);
assign v185_fu_700_p1 = v225_2_q1;
assign v186_fu_704_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v185_fu_700_p1);
assign v191_fu_711_p1 = v225_2_q0;
assign v192_fu_715_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v191_fu_711_p1);
assign v196_fu_722_p1 = v225_3_q1;
assign v197_fu_726_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v196_fu_722_p1);
assign v202_fu_733_p1 = v225_3_q0;
assign v203_fu_737_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v202_fu_733_p1);
assign v207_fu_755_p1 = v225_0_q1;
assign v208_fu_759_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v207_fu_755_p1);
assign v213_fu_766_p1 = v225_0_q0;
assign v214_fu_770_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v213_fu_766_p1);
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
assign v227_address0 = zext_ln182_64_fu_515_p1;
assign v227_address1 = zext_ln175_64_fu_502_p1;
assign v227_ce0 = v227_ce0_local;
assign v227_ce1 = v227_ce1_local;
assign zext_ln171_fu_450_p1 = add_ln171_fu_444_p2;
assign zext_ln175_63_fu_494_p1 = v116_19_reg_958;
assign zext_ln175_64_fu_502_p1 = add_ln175_fu_497_p2;
assign zext_ln175_fu_434_p1 = ap_sig_allocacmp_v116_19;
assign zext_ln179_fu_486_p1 = add_ln179_fu_480_p2;
assign zext_ln182_63_fu_507_p1 = or_ln1_reg_1001;
assign zext_ln182_64_fu_515_p1 = add_ln182_fu_510_p2;
assign zext_ln182_fu_476_p1 = or_ln1_fu_468_p3;
assign zext_ln225_fu_543_p1 = add_ln225_fu_539_p2;
assign zext_ln232_fu_570_p1 = add_ln232_fu_566_p2;
assign zext_ln277_fu_626_p1 = add_ln277_reg_1102;
assign zext_ln284_fu_630_p1 = add_ln284_reg_1133;
always @ (posedge ap_clk) begin
    zext_ln175_reg_968[13:8] <= 6'b000000;
    zext_ln175_reg_968_pp0_iter1_reg[13:8] <= 6'b000000;
    or_ln1_reg_1001[0] <= 1'b1;
    zext_ln182_reg_1006[0] <= 1'b1;
    zext_ln182_reg_1006[13:8] <= 6'b000000;
    zext_ln182_reg_1006_pp0_iter1_reg[0] <= 1'b1;
    zext_ln182_reg_1006_pp0_iter1_reg[13:8] <= 6'b000000;
end
endmodule 