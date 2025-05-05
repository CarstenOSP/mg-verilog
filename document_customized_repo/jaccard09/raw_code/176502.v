module kernel_2mm_kernel_2mm_node1_Pipeline_label_55 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v114,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,mul_ln186,mul_ln238,mul_ln251,cmp11_0,v120_10,v133_10,v144_10,v155_10,v166_10,v177_10,v188_10,v199_10,v210_10,grp_fu_15319_p_din0,grp_fu_15319_p_din1,grp_fu_15319_p_opcode,grp_fu_15319_p_dout0,grp_fu_15319_p_ce,grp_fu_15323_p_din0,grp_fu_15323_p_din1,grp_fu_15323_p_opcode,grp_fu_15323_p_dout0,grp_fu_15323_p_ce,grp_fu_15327_p_din0,grp_fu_15327_p_din1,grp_fu_15327_p_opcode,grp_fu_15327_p_dout0,grp_fu_15327_p_ce,grp_fu_15331_p_din0,grp_fu_15331_p_din1,grp_fu_15331_p_dout0,grp_fu_15331_p_ce,grp_fu_15335_p_din0,grp_fu_15335_p_din1,grp_fu_15335_p_dout0,grp_fu_15335_p_ce,grp_fu_15339_p_din0,grp_fu_15339_p_din1,grp_fu_15339_p_dout0,grp_fu_15339_p_ce); 
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
input  [13:0] mul_ln186;
input  [13:0] mul_ln238;
input  [13:0] mul_ln251;
input  [0:0] cmp11_0;
input  [31:0] v120_10;
input  [31:0] v133_10;
input  [31:0] v144_10;
input  [31:0] v155_10;
input  [31:0] v166_10;
input  [31:0] v177_10;
input  [31:0] v188_10;
input  [31:0] v199_10;
input  [31:0] v210_10;
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
reg   [31:0] reg_399;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_403;
reg   [31:0] reg_407;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_411;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_415;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v116_4_reg_958;
wire   [0:0] icmp_ln170_fu_427_p2;
wire   [13:0] zext_ln175_fu_433_p1;
reg   [13:0] zext_ln175_reg_968;
wire   [15:0] mul_ln175_fu_437_p2;
reg   [15:0] mul_ln175_reg_973;
reg   [13:0] v225_0_addr_reg_979;
reg   [13:0] v225_0_addr_reg_979_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_979_pp0_iter2_reg;
reg   [13:0] v225_1_addr_reg_985;
reg   [13:0] v225_1_addr_reg_985_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_985_pp0_iter2_reg;
reg   [13:0] v225_2_addr_reg_990;
reg   [13:0] v225_2_addr_reg_990_pp0_iter1_reg;
reg   [13:0] v225_2_addr_reg_990_pp0_iter2_reg;
reg   [13:0] v225_3_addr_reg_995;
reg   [13:0] v225_3_addr_reg_995_pp0_iter1_reg;
reg   [13:0] v225_3_addr_reg_995_pp0_iter2_reg;
reg   [13:0] v225_3_addr_12_reg_1000;
reg   [13:0] v225_3_addr_12_reg_1000_pp0_iter1_reg;
reg   [13:0] v225_3_addr_12_reg_1000_pp0_iter2_reg;
wire   [7:0] or_ln179_6_fu_478_p3;
reg   [7:0] or_ln179_6_reg_1005;
wire   [13:0] zext_ln182_fu_486_p1;
reg   [13:0] zext_ln182_reg_1010;
reg   [13:0] v225_3_addr_14_reg_1016;
reg   [13:0] v225_3_addr_14_reg_1016_pp0_iter1_reg;
reg   [13:0] v225_3_addr_14_reg_1016_pp0_iter2_reg;
reg   [31:0] v225_3_load_reg_1026;
reg   [31:0] v225_3_load_12_reg_1036;
reg   [31:0] v225_0_load_reg_1041;
reg   [31:0] v227_load_reg_1046;
reg   [31:0] v227_load_5_reg_1051;
wire   [31:0] v121_fu_527_p1;
reg   [31:0] v121_reg_1056;
wire   [31:0] v127_fu_532_p1;
reg   [31:0] v127_reg_1063;
wire   [13:0] add_ln238_fu_546_p2;
reg   [13:0] add_ln238_reg_1070;
reg   [31:0] v122_reg_1075;
reg   [13:0] v225_0_addr_16_reg_1080;
reg   [13:0] v225_0_addr_16_reg_1080_pp0_iter2_reg;
wire   [13:0] add_ln245_fu_562_p2;
reg   [13:0] add_ln245_reg_1086;
reg   [13:0] v225_1_addr_15_reg_1091;
reg   [13:0] v225_1_addr_15_reg_1091_pp0_iter2_reg;
reg   [13:0] v225_2_addr_13_reg_1096;
reg   [13:0] v225_2_addr_13_reg_1096_pp0_iter2_reg;
reg   [13:0] v225_3_addr_15_reg_1101;
reg   [13:0] v225_3_addr_15_reg_1101_pp0_iter2_reg;
reg   [31:0] v128_reg_1107;
reg   [31:0] v134_reg_1112;
reg   [13:0] v225_0_addr_15_reg_1117;
reg   [13:0] v225_0_addr_15_reg_1117_pp0_iter2_reg;
reg   [13:0] v225_1_addr_14_reg_1122;
reg   [13:0] v225_1_addr_14_reg_1122_pp0_iter2_reg;
reg   [13:0] v225_1_addr_14_reg_1122_pp0_iter3_reg;
reg   [13:0] v225_2_addr_12_reg_1127;
reg   [13:0] v225_2_addr_12_reg_1127_pp0_iter2_reg;
reg   [13:0] v225_2_addr_12_reg_1127_pp0_iter3_reg;
reg   [13:0] v225_3_addr_13_reg_1132;
reg   [13:0] v225_3_addr_13_reg_1132_pp0_iter2_reg;
reg   [13:0] v225_3_addr_13_reg_1132_pp0_iter3_reg;
wire   [31:0] v118_fu_576_p3;
reg   [13:0] v225_0_addr_17_reg_1143;
reg   [13:0] v225_0_addr_17_reg_1143_pp0_iter2_reg;
reg   [13:0] v225_1_addr_16_reg_1148;
reg   [13:0] v225_1_addr_16_reg_1148_pp0_iter2_reg;
reg   [13:0] v225_1_addr_16_reg_1148_pp0_iter3_reg;
reg   [13:0] v225_2_addr_14_reg_1153;
reg   [13:0] v225_2_addr_14_reg_1153_pp0_iter2_reg;
reg   [13:0] v225_2_addr_14_reg_1153_pp0_iter3_reg;
reg   [13:0] v225_3_addr_16_reg_1158;
reg   [13:0] v225_3_addr_16_reg_1158_pp0_iter2_reg;
reg   [13:0] v225_3_addr_16_reg_1158_pp0_iter3_reg;
wire   [31:0] v125_fu_594_p3;
wire   [31:0] v131_fu_605_p3;
reg   [31:0] v225_0_load_15_reg_1173;
reg   [31:0] v139_reg_1178;
reg   [31:0] v225_1_load_reg_1183;
reg   [31:0] v145_reg_1188;
reg   [31:0] v225_1_load_13_reg_1193;
reg   [31:0] v150_reg_1198;
wire   [31:0] v153_fu_617_p3;
reg   [31:0] v153_reg_1203;
wire   [31:0] v159_fu_628_p3;
reg   [31:0] v159_reg_1208;
wire   [31:0] v137_fu_638_p3;
wire   [31:0] v142_fu_649_p3;
wire   [31:0] v148_fu_660_p3;
reg   [31:0] v156_reg_1228;
reg   [31:0] v161_reg_1233;
wire   [31:0] v164_fu_672_p3;
reg   [31:0] v164_reg_1238;
reg   [31:0] v167_reg_1243;
wire   [31:0] v170_fu_683_p3;
reg   [31:0] v170_reg_1248;
wire   [31:0] v175_fu_694_p3;
reg   [31:0] v175_reg_1253;
wire   [31:0] v181_fu_705_p3;
reg   [31:0] v181_reg_1258;
wire   [31:0] v186_fu_716_p3;
reg   [31:0] v186_reg_1263;
wire   [31:0] v192_fu_727_p3;
reg   [31:0] v192_reg_1268;
wire   [31:0] v197_fu_738_p3;
reg   [31:0] v197_reg_1273;
wire   [31:0] v203_fu_749_p3;
reg   [31:0] v203_reg_1278;
reg   [31:0] v172_reg_1283;
reg   [31:0] v178_reg_1288;
reg   [31:0] v183_reg_1293;
wire   [31:0] v208_fu_760_p3;
reg   [31:0] v208_reg_1298;
wire   [31:0] v214_fu_771_p3;
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
wire   [63:0] zext_ln186_fu_449_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_463_p1;
wire   [63:0] zext_ln179_fu_496_p1;
wire   [63:0] zext_ln175_10_fu_509_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln182_10_fu_522_p1;
wire   [63:0] zext_ln193_fu_554_p1;
wire   [63:0] zext_ln238_fu_566_p1;
wire   [63:0] zext_ln245_fu_584_p1;
reg   [7:0] v116_fu_88;
wire   [7:0] add_ln170_fu_536_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_4;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln178_fu_783_p1;
wire    ap_block_pp0_stage3;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln185_fu_788_p1;
wire   [31:0] bitcast_ln231_fu_818_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_823_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln283_fu_856_p1;
wire   [31:0] bitcast_ln289_fu_860_p1;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln192_fu_778_p1;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln198_fu_793_p1;
wire   [31:0] bitcast_ln244_fu_828_p1;
wire   [31:0] bitcast_ln250_fu_833_p1;
reg    v227_ce1_local;
reg    v227_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln205_fu_798_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln211_fu_803_p1;
wire   [31:0] bitcast_ln257_fu_838_p1;
wire   [31:0] bitcast_ln263_fu_843_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln218_fu_808_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln224_fu_813_p1;
wire   [31:0] bitcast_ln270_fu_848_p1;
wire   [31:0] bitcast_ln276_fu_852_p1;
reg   [31:0] grp_fu_375_p0;
reg   [31:0] grp_fu_375_p1;
reg   [31:0] grp_fu_379_p0;
reg   [31:0] grp_fu_379_p1;
reg   [31:0] grp_fu_383_p0;
reg   [31:0] grp_fu_383_p1;
reg   [31:0] grp_fu_387_p0;
reg   [31:0] grp_fu_387_p1;
reg   [31:0] grp_fu_391_p0;
reg   [31:0] grp_fu_391_p1;
reg   [31:0] grp_fu_395_p0;
reg   [31:0] grp_fu_395_p1;
wire   [8:0] mul_ln175_fu_437_p1;
wire   [13:0] add_ln186_fu_443_p2;
wire   [13:0] add_ln171_fu_457_p2;
wire   [6:0] tmp_s_fu_468_p4;
wire   [13:0] add_ln179_fu_490_p2;
wire   [15:0] zext_ln175_9_fu_501_p1;
wire   [15:0] add_ln175_fu_504_p2;
wire   [15:0] zext_ln182_9_fu_514_p1;
wire   [15:0] add_ln182_fu_517_p2;
wire   [13:0] add_ln193_fu_550_p2;
wire   [31:0] v117_fu_573_p1;
wire   [31:0] v124_fu_591_p1;
wire   [31:0] v130_fu_602_p1;
wire   [31:0] v152_fu_613_p1;
wire   [31:0] v158_fu_624_p1;
wire   [31:0] v136_fu_635_p1;
wire   [31:0] v141_fu_646_p1;
wire   [31:0] v147_fu_657_p1;
wire   [31:0] v163_fu_668_p1;
wire   [31:0] v169_fu_679_p1;
wire   [31:0] v174_fu_690_p1;
wire   [31:0] v180_fu_701_p1;
wire   [31:0] v185_fu_712_p1;
wire   [31:0] v191_fu_723_p1;
wire   [31:0] v196_fu_734_p1;
wire   [31:0] v202_fu_745_p1;
wire   [31:0] v207_fu_756_p1;
wire   [31:0] v213_fu_767_p1;
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
mul_16s_9ns_16_1_1_U86(.din0(v114),.din1(mul_ln175_fu_437_p1),.dout(mul_ln175_fu_437_p2));
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
        v116_fu_88 <= add_ln170_fu_536_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln238_reg_1070 <= add_ln238_fu_546_p2;
        add_ln245_reg_1086 <= add_ln245_fu_562_p2;
        icmp_ln170_reg_964 <= icmp_ln170_fu_427_p2;
        mul_ln175_reg_973 <= mul_ln175_fu_437_p2;
        or_ln179_6_reg_1005[7 : 1] <= or_ln179_6_fu_478_p3[7 : 1];
        v116_4_reg_958 <= ap_sig_allocacmp_v116_4;
        v225_0_addr_16_reg_1080 <= zext_ln193_fu_554_p1;
        v225_0_addr_16_reg_1080_pp0_iter2_reg <= v225_0_addr_16_reg_1080;
        v225_0_addr_reg_979 <= zext_ln186_fu_449_p1;
        v225_0_addr_reg_979_pp0_iter1_reg <= v225_0_addr_reg_979;
        v225_0_addr_reg_979_pp0_iter2_reg <= v225_0_addr_reg_979_pp0_iter1_reg;
        v225_1_addr_15_reg_1091 <= zext_ln193_fu_554_p1;
        v225_1_addr_15_reg_1091_pp0_iter2_reg <= v225_1_addr_15_reg_1091;
        v225_1_addr_reg_985 <= zext_ln186_fu_449_p1;
        v225_1_addr_reg_985_pp0_iter1_reg <= v225_1_addr_reg_985;
        v225_1_addr_reg_985_pp0_iter2_reg <= v225_1_addr_reg_985_pp0_iter1_reg;
        v225_2_addr_13_reg_1096 <= zext_ln193_fu_554_p1;
        v225_2_addr_13_reg_1096_pp0_iter2_reg <= v225_2_addr_13_reg_1096;
        v225_2_addr_reg_990 <= zext_ln186_fu_449_p1;
        v225_2_addr_reg_990_pp0_iter1_reg <= v225_2_addr_reg_990;
        v225_2_addr_reg_990_pp0_iter2_reg <= v225_2_addr_reg_990_pp0_iter1_reg;
        v225_3_addr_12_reg_1000 <= zext_ln186_fu_449_p1;
        v225_3_addr_12_reg_1000_pp0_iter1_reg <= v225_3_addr_12_reg_1000;
        v225_3_addr_12_reg_1000_pp0_iter2_reg <= v225_3_addr_12_reg_1000_pp0_iter1_reg;
        v225_3_addr_14_reg_1016 <= zext_ln179_fu_496_p1;
        v225_3_addr_14_reg_1016_pp0_iter1_reg <= v225_3_addr_14_reg_1016;
        v225_3_addr_14_reg_1016_pp0_iter2_reg <= v225_3_addr_14_reg_1016_pp0_iter1_reg;
        v225_3_addr_15_reg_1101 <= zext_ln193_fu_554_p1;
        v225_3_addr_15_reg_1101_pp0_iter2_reg <= v225_3_addr_15_reg_1101;
        v225_3_addr_reg_995 <= zext_ln171_fu_463_p1;
        v225_3_addr_reg_995_pp0_iter1_reg <= v225_3_addr_reg_995;
        v225_3_addr_reg_995_pp0_iter2_reg <= v225_3_addr_reg_995_pp0_iter1_reg;
        zext_ln175_reg_968[7 : 0] <= zext_ln175_fu_433_p1[7 : 0];
        zext_ln182_reg_1010[7 : 1] <= zext_ln182_fu_486_p1[7 : 1];
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
        reg_399 <= grp_fu_15319_p_dout0;
        reg_403 <= grp_fu_15323_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_407 <= grp_fu_15327_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_411 <= grp_fu_15319_p_dout0;
        reg_415 <= grp_fu_15323_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v121_reg_1056 <= v121_fu_527_p1;
        v127_reg_1063 <= v127_fu_532_p1;
        v208_reg_1298 <= v208_fu_760_p3;
        v214_reg_1303 <= v214_fu_771_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v122_reg_1075 <= grp_fu_15331_p_dout0;
        v128_reg_1107 <= grp_fu_15335_p_dout0;
        v134_reg_1112 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v139_reg_1178 <= grp_fu_15331_p_dout0;
        v145_reg_1188 <= grp_fu_15335_p_dout0;
        v150_reg_1198 <= grp_fu_15339_p_dout0;
        v225_0_load_15_reg_1173 <= v225_0_q0;
        v225_1_load_13_reg_1193 <= v225_1_q0;
        v225_1_load_reg_1183 <= v225_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v153_reg_1203 <= v153_fu_617_p3;
        v159_reg_1208 <= v159_fu_628_p3;
        v225_0_addr_15_reg_1117 <= zext_ln238_fu_566_p1;
        v225_0_addr_15_reg_1117_pp0_iter2_reg <= v225_0_addr_15_reg_1117;
        v225_0_addr_17_reg_1143 <= zext_ln245_fu_584_p1;
        v225_0_addr_17_reg_1143_pp0_iter2_reg <= v225_0_addr_17_reg_1143;
        v225_1_addr_14_reg_1122 <= zext_ln238_fu_566_p1;
        v225_1_addr_14_reg_1122_pp0_iter2_reg <= v225_1_addr_14_reg_1122;
        v225_1_addr_14_reg_1122_pp0_iter3_reg <= v225_1_addr_14_reg_1122_pp0_iter2_reg;
        v225_1_addr_16_reg_1148 <= zext_ln245_fu_584_p1;
        v225_1_addr_16_reg_1148_pp0_iter2_reg <= v225_1_addr_16_reg_1148;
        v225_1_addr_16_reg_1148_pp0_iter3_reg <= v225_1_addr_16_reg_1148_pp0_iter2_reg;
        v225_2_addr_12_reg_1127 <= zext_ln238_fu_566_p1;
        v225_2_addr_12_reg_1127_pp0_iter2_reg <= v225_2_addr_12_reg_1127;
        v225_2_addr_12_reg_1127_pp0_iter3_reg <= v225_2_addr_12_reg_1127_pp0_iter2_reg;
        v225_2_addr_14_reg_1153 <= zext_ln245_fu_584_p1;
        v225_2_addr_14_reg_1153_pp0_iter2_reg <= v225_2_addr_14_reg_1153;
        v225_2_addr_14_reg_1153_pp0_iter3_reg <= v225_2_addr_14_reg_1153_pp0_iter2_reg;
        v225_3_addr_13_reg_1132 <= zext_ln238_fu_566_p1;
        v225_3_addr_13_reg_1132_pp0_iter2_reg <= v225_3_addr_13_reg_1132;
        v225_3_addr_13_reg_1132_pp0_iter3_reg <= v225_3_addr_13_reg_1132_pp0_iter2_reg;
        v225_3_addr_16_reg_1158 <= zext_ln245_fu_584_p1;
        v225_3_addr_16_reg_1158_pp0_iter2_reg <= v225_3_addr_16_reg_1158;
        v225_3_addr_16_reg_1158_pp0_iter3_reg <= v225_3_addr_16_reg_1158_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v156_reg_1228 <= grp_fu_15331_p_dout0;
        v161_reg_1233 <= grp_fu_15335_p_dout0;
        v167_reg_1243 <= grp_fu_15339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v164_reg_1238 <= v164_fu_672_p3;
        v170_reg_1248 <= v170_fu_683_p3;
        v175_reg_1253 <= v175_fu_694_p3;
        v181_reg_1258 <= v181_fu_705_p3;
        v186_reg_1263 <= v186_fu_716_p3;
        v192_reg_1268 <= v192_fu_727_p3;
        v197_reg_1273 <= v197_fu_738_p3;
        v203_reg_1278 <= v203_fu_749_p3;
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
        v225_0_load_reg_1041 <= v225_0_q1;
        v225_3_load_12_reg_1036 <= v225_3_q0;
        v225_3_load_reg_1026 <= v225_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v227_load_5_reg_1051 <= v227_q0;
        v227_load_reg_1046 <= v227_q1;
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
        ap_sig_allocacmp_v116_4 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_4 = v116_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p0 = v203_reg_1278;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_375_p0 = v186_reg_1263;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_375_p0 = v170_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p0 = v153_reg_1203;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p0 = v137_fu_638_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p0 = v118_fu_576_p3;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p1 = v205_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_375_p1 = v189_reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_375_p1 = v172_reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p1 = v156_reg_1228;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p1 = v139_reg_1178;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p1 = v122_reg_1075;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p0 = v208_reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_379_p0 = v192_reg_1268;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_379_p0 = v175_reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p0 = v159_reg_1208;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p0 = v142_fu_649_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p0 = v125_fu_594_p3;
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p1 = v211_reg_1328;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_379_p1 = v194_reg_1313;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_379_p1 = v178_reg_1288;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p1 = v161_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p1 = v145_reg_1188;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p1 = v128_reg_1107;
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_383_p0 = v214_reg_1303;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_383_p0 = v197_reg_1273;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_383_p0 = v181_reg_1258;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_383_p0 = v164_reg_1238;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p0 = v148_fu_660_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_383_p0 = v131_fu_605_p3;
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_383_p1 = v216_reg_1333;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_383_p1 = v200_reg_1318;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_383_p1 = v183_reg_1293;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_383_p1 = v167_reg_1243;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p1 = v150_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_383_p1 = v134_reg_1112;
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_387_p0 = v199_10;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_387_p0 = v188_10;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_387_p0 = v166_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_387_p0 = v155_10;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_387_p0 = v133_10;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_387_p0 = v120_10;
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_387_p1 = v121_reg_1056;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_387_p1 = v127_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_387_p1 = v121_fu_527_p1;
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_391_p0 = v210_10;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_391_p0 = v188_10;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_391_p0 = v177_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_391_p0 = v155_10;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_391_p0 = v144_10;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_391_p0 = v120_10;
    end else begin
        grp_fu_391_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_391_p1 = v127_reg_1063;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_391_p1 = v121_reg_1056;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_391_p1 = v127_fu_532_p1;
    end else begin
        grp_fu_391_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_395_p0 = v210_10;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_395_p0 = v199_10;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_395_p0 = v177_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_395_p0 = v166_10;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_395_p0 = v144_10;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p0 = v133_10;
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_395_p1 = v121_reg_1056;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_395_p1 = v127_reg_1063;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_395_p1 = v121_fu_527_p1;
    end else begin
        grp_fu_395_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_17_reg_1143_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_reg_979_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln245_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln193_fu_554_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_15_reg_1117_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_16_reg_1080_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln238_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln186_fu_449_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_0_d0_local = bitcast_ln250_fu_833_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d0_local = bitcast_ln192_fu_778_p1;
        end else begin
            v225_0_d0_local = 'bx;
        end
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_0_d1_local = bitcast_ln244_fu_828_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_0_d1_local = bitcast_ln198_fu_793_p1;
        end else begin
            v225_0_d1_local = 'bx;
        end
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_16_reg_1148_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_15_reg_1091_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln245_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln193_fu_554_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_14_reg_1122_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_reg_985_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln238_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = v225_1_addr_reg_985;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_d0_local = bitcast_ln263_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d0_local = bitcast_ln211_fu_803_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_d1_local = bitcast_ln257_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d1_local = bitcast_ln205_fu_798_p1;
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_14_reg_1153_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address0_local = v225_2_addr_13_reg_1096_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln245_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln193_fu_554_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_12_reg_1127_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address1_local = v225_2_addr_reg_990_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = zext_ln238_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = v225_2_addr_reg_990;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_d0_local = bitcast_ln276_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_d0_local = bitcast_ln224_fu_813_p1;
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_d1_local = bitcast_ln270_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_d1_local = bitcast_ln218_fu_808_p1;
    end else begin
        v225_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address0_local = v225_3_addr_16_reg_1158_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address0_local = v225_3_addr_13_reg_1132_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_14_reg_1016_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_16_reg_1158;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_15_reg_1101;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_496_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_15_reg_1101_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address1_local = v225_3_addr_12_reg_1000_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_reg_995_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_13_reg_1132;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_12_reg_1000_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_463_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_d0_local = bitcast_ln289_fu_860_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d0_local = bitcast_ln283_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln185_fu_788_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln237_fu_823_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_3_d1_local = bitcast_ln231_fu_818_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln178_fu_783_p1;
        end else begin
            v225_3_d1_local = 'bx;
        end
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln170_fu_536_p2 = (v116_4_reg_958 + 8'd2);
assign add_ln171_fu_457_p2 = (mul_ln251 + zext_ln175_fu_433_p1);
assign add_ln175_fu_504_p2 = (mul_ln175_reg_973 + zext_ln175_9_fu_501_p1);
assign add_ln179_fu_490_p2 = (mul_ln251 + zext_ln182_fu_486_p1);
assign add_ln182_fu_517_p2 = (mul_ln175_reg_973 + zext_ln182_9_fu_514_p1);
assign add_ln186_fu_443_p2 = (mul_ln186 + zext_ln175_fu_433_p1);
assign add_ln193_fu_550_p2 = (mul_ln186 + zext_ln182_reg_1010);
assign add_ln238_fu_546_p2 = (mul_ln238 + zext_ln175_reg_968);
assign add_ln245_fu_562_p2 = (mul_ln238 + zext_ln182_reg_1010);
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
assign bitcast_ln178_fu_783_p1 = reg_399;
assign bitcast_ln185_fu_788_p1 = reg_403;
assign bitcast_ln192_fu_778_p1 = reg_407;
assign bitcast_ln198_fu_793_p1 = reg_411;
assign bitcast_ln205_fu_798_p1 = reg_415;
assign bitcast_ln211_fu_803_p1 = reg_407;
assign bitcast_ln218_fu_808_p1 = reg_399;
assign bitcast_ln224_fu_813_p1 = reg_403;
assign bitcast_ln231_fu_818_p1 = reg_407;
assign bitcast_ln237_fu_823_p1 = reg_399;
assign bitcast_ln244_fu_828_p1 = reg_403;
assign bitcast_ln250_fu_833_p1 = reg_407;
assign bitcast_ln257_fu_838_p1 = reg_411;
assign bitcast_ln263_fu_843_p1 = reg_415;
assign bitcast_ln270_fu_848_p1 = v201_reg_1338;
assign bitcast_ln276_fu_852_p1 = v206_reg_1343;
assign bitcast_ln283_fu_856_p1 = v212_reg_1348;
assign bitcast_ln289_fu_860_p1 = v217_reg_1353;
assign grp_fu_15319_p_ce = 1'b1;
assign grp_fu_15319_p_din0 = grp_fu_375_p0;
assign grp_fu_15319_p_din1 = grp_fu_375_p1;
assign grp_fu_15319_p_opcode = 2'd0;
assign grp_fu_15323_p_ce = 1'b1;
assign grp_fu_15323_p_din0 = grp_fu_379_p0;
assign grp_fu_15323_p_din1 = grp_fu_379_p1;
assign grp_fu_15323_p_opcode = 2'd0;
assign grp_fu_15327_p_ce = 1'b1;
assign grp_fu_15327_p_din0 = grp_fu_383_p0;
assign grp_fu_15327_p_din1 = grp_fu_383_p1;
assign grp_fu_15327_p_opcode = 2'd0;
assign grp_fu_15331_p_ce = 1'b1;
assign grp_fu_15331_p_din0 = grp_fu_387_p0;
assign grp_fu_15331_p_din1 = grp_fu_387_p1;
assign grp_fu_15335_p_ce = 1'b1;
assign grp_fu_15335_p_din0 = grp_fu_391_p0;
assign grp_fu_15335_p_din1 = grp_fu_391_p1;
assign grp_fu_15339_p_ce = 1'b1;
assign grp_fu_15339_p_din0 = grp_fu_395_p0;
assign grp_fu_15339_p_din1 = grp_fu_395_p1;
assign icmp_ln170_fu_427_p2 = ((ap_sig_allocacmp_v116_4 < 8'd190) ? 1'b1 : 1'b0);
assign mul_ln175_fu_437_p1 = 16'd190;
assign or_ln179_6_fu_478_p3 = {{tmp_s_fu_468_p4}, {1'd1}};
assign tmp_s_fu_468_p4 = {{ap_sig_allocacmp_v116_4[7:1]}};
assign v117_fu_573_p1 = v225_3_load_reg_1026;
assign v118_fu_576_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v117_fu_573_p1);
assign v121_fu_527_p1 = v227_load_reg_1046;
assign v124_fu_591_p1 = v225_3_load_12_reg_1036;
assign v125_fu_594_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v124_fu_591_p1);
assign v127_fu_532_p1 = v227_load_5_reg_1051;
assign v130_fu_602_p1 = v225_0_load_reg_1041;
assign v131_fu_605_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v130_fu_602_p1);
assign v136_fu_635_p1 = v225_0_load_15_reg_1173;
assign v137_fu_638_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v136_fu_635_p1);
assign v141_fu_646_p1 = v225_1_load_reg_1183;
assign v142_fu_649_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v141_fu_646_p1);
assign v147_fu_657_p1 = v225_1_load_13_reg_1193;
assign v148_fu_660_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v147_fu_657_p1);
assign v152_fu_613_p1 = v225_2_q1;
assign v153_fu_617_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v152_fu_613_p1);
assign v158_fu_624_p1 = v225_2_q0;
assign v159_fu_628_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v158_fu_624_p1);
assign v163_fu_668_p1 = v225_3_q1;
assign v164_fu_672_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v163_fu_668_p1);
assign v169_fu_679_p1 = v225_3_q0;
assign v170_fu_683_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v169_fu_679_p1);
assign v174_fu_690_p1 = v225_0_q1;
assign v175_fu_694_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v174_fu_690_p1);
assign v180_fu_701_p1 = v225_0_q0;
assign v181_fu_705_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v180_fu_701_p1);
assign v185_fu_712_p1 = v225_1_q1;
assign v186_fu_716_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v185_fu_712_p1);
assign v191_fu_723_p1 = v225_1_q0;
assign v192_fu_727_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v191_fu_723_p1);
assign v196_fu_734_p1 = v225_2_q1;
assign v197_fu_738_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v196_fu_734_p1);
assign v202_fu_745_p1 = v225_2_q0;
assign v203_fu_749_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v202_fu_745_p1);
assign v207_fu_756_p1 = v225_3_q1;
assign v208_fu_760_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v207_fu_756_p1);
assign v213_fu_767_p1 = v225_3_q0;
assign v214_fu_771_p3 = ((cmp11_0[0:0] == 1'b1) ? 32'd0 : v213_fu_767_p1);
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
assign v227_address0 = zext_ln182_10_fu_522_p1;
assign v227_address1 = zext_ln175_10_fu_509_p1;
assign v227_ce0 = v227_ce0_local;
assign v227_ce1 = v227_ce1_local;
assign zext_ln171_fu_463_p1 = add_ln171_fu_457_p2;
assign zext_ln175_10_fu_509_p1 = add_ln175_fu_504_p2;
assign zext_ln175_9_fu_501_p1 = v116_4_reg_958;
assign zext_ln175_fu_433_p1 = ap_sig_allocacmp_v116_4;
assign zext_ln179_fu_496_p1 = add_ln179_fu_490_p2;
assign zext_ln182_10_fu_522_p1 = add_ln182_fu_517_p2;
assign zext_ln182_9_fu_514_p1 = or_ln179_6_reg_1005;
assign zext_ln182_fu_486_p1 = or_ln179_6_fu_478_p3;
assign zext_ln186_fu_449_p1 = add_ln186_fu_443_p2;
assign zext_ln193_fu_554_p1 = add_ln193_fu_550_p2;
assign zext_ln238_fu_566_p1 = add_ln238_reg_1070;
assign zext_ln245_fu_584_p1 = add_ln245_reg_1086;
always @ (posedge ap_clk) begin
    zext_ln175_reg_968[13:8] <= 6'b000000;
    or_ln179_6_reg_1005[0] <= 1'b1;
    zext_ln182_reg_1010[0] <= 1'b1;
    zext_ln182_reg_1010[13:8] <= 6'b000000;
end
endmodule 