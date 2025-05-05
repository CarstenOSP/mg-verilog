module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,phi_mul,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,mul_ln171,mul_ln225,mul_ln277,cmp11,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_5224_p_din0,grp_fu_5224_p_din1,grp_fu_5224_p_opcode,grp_fu_5224_p_dout0,grp_fu_5224_p_ce,grp_fu_5228_p_din0,grp_fu_5228_p_din1,grp_fu_5228_p_opcode,grp_fu_5228_p_dout0,grp_fu_5228_p_ce,grp_fu_5232_p_din0,grp_fu_5232_p_din1,grp_fu_5232_p_opcode,grp_fu_5232_p_dout0,grp_fu_5232_p_ce,grp_fu_5236_p_din0,grp_fu_5236_p_din1,grp_fu_5236_p_dout0,grp_fu_5236_p_ce,grp_fu_5240_p_din0,grp_fu_5240_p_din1,grp_fu_5240_p_dout0,grp_fu_5240_p_ce,grp_fu_5244_p_din0,grp_fu_5244_p_din1,grp_fu_5244_p_dout0,grp_fu_5244_p_ce); 
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
input  [15:0] phi_mul;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
input  [12:0] mul_ln171;
input  [13:0] mul_ln225;
input  [13:0] mul_ln277;
input  [0:0] cmp11;
input  [31:0] v120;
input  [31:0] v133;
input  [31:0] v144;
input  [31:0] v155;
input  [31:0] v166;
input  [31:0] v177;
input  [31:0] v188;
input  [31:0] v199;
input  [31:0] v210;
output  [31:0] grp_fu_5224_p_din0;
output  [31:0] grp_fu_5224_p_din1;
output  [1:0] grp_fu_5224_p_opcode;
input  [31:0] grp_fu_5224_p_dout0;
output   grp_fu_5224_p_ce;
output  [31:0] grp_fu_5228_p_din0;
output  [31:0] grp_fu_5228_p_din1;
output  [1:0] grp_fu_5228_p_opcode;
input  [31:0] grp_fu_5228_p_dout0;
output   grp_fu_5228_p_ce;
output  [31:0] grp_fu_5232_p_din0;
output  [31:0] grp_fu_5232_p_din1;
output  [1:0] grp_fu_5232_p_opcode;
input  [31:0] grp_fu_5232_p_dout0;
output   grp_fu_5232_p_ce;
output  [31:0] grp_fu_5236_p_din0;
output  [31:0] grp_fu_5236_p_din1;
input  [31:0] grp_fu_5236_p_dout0;
output   grp_fu_5236_p_ce;
output  [31:0] grp_fu_5240_p_din0;
output  [31:0] grp_fu_5240_p_din1;
input  [31:0] grp_fu_5240_p_dout0;
output   grp_fu_5240_p_ce;
output  [31:0] grp_fu_5244_p_din0;
output  [31:0] grp_fu_5244_p_din1;
input  [31:0] grp_fu_5244_p_dout0;
output   grp_fu_5244_p_ce;
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
reg   [0:0] icmp_ln170_reg_977;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_400;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_404;
reg   [31:0] reg_408;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_412;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_416;
reg   [31:0] reg_420;
reg   [7:0] v116_5_reg_971;
wire   [0:0] icmp_ln170_fu_432_p2;
reg   [13:0] v225_0_addr_1_reg_986;
reg   [13:0] v225_0_addr_1_reg_986_pp0_iter1_reg;
reg   [13:0] v225_0_addr_1_reg_986_pp0_iter2_reg;
reg   [13:0] v225_1_addr_1_reg_991;
reg   [13:0] v225_1_addr_1_reg_991_pp0_iter1_reg;
reg   [13:0] v225_1_addr_1_reg_991_pp0_iter2_reg;
reg   [13:0] v225_2_addr_1_reg_996;
reg   [13:0] v225_2_addr_1_reg_996_pp0_iter1_reg;
reg   [13:0] v225_2_addr_1_reg_996_pp0_iter2_reg;
reg   [13:0] v225_3_addr_1_reg_1001;
reg   [13:0] v225_3_addr_1_reg_1001_pp0_iter1_reg;
reg   [13:0] v225_3_addr_1_reg_1001_pp0_iter2_reg;
wire   [7:0] or_ln_fu_481_p3;
reg   [7:0] or_ln_reg_1007;
reg   [7:0] or_ln_reg_1007_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1017;
reg   [13:0] v225_0_addr_2_reg_1017_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1017_pp0_iter2_reg;
reg   [13:0] v225_1_addr_2_reg_1022;
reg   [13:0] v225_1_addr_2_reg_1022_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1022_pp0_iter2_reg;
reg   [13:0] v225_2_addr_2_reg_1027;
reg   [13:0] v225_2_addr_2_reg_1027_pp0_iter1_reg;
reg   [13:0] v225_2_addr_2_reg_1027_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1032;
reg   [13:0] v225_3_addr_2_reg_1032_pp0_iter1_reg;
reg   [13:0] v225_3_addr_2_reg_1032_pp0_iter2_reg;
reg   [13:0] v225_0_addr_3_reg_1038;
reg   [13:0] v225_0_addr_3_reg_1038_pp0_iter1_reg;
reg   [13:0] v225_0_addr_3_reg_1038_pp0_iter2_reg;
wire   [13:0] add_ln277_fu_538_p2;
reg   [13:0] add_ln277_reg_1043;
reg   [13:0] add_ln277_reg_1043_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1048;
reg   [13:0] v225_1_addr_3_reg_1048_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1048_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1053;
reg   [13:0] v225_2_addr_3_reg_1053_pp0_iter1_reg;
reg   [13:0] v225_2_addr_3_reg_1053_pp0_iter2_reg;
reg   [13:0] v225_3_addr_3_reg_1058;
reg   [13:0] v225_3_addr_3_reg_1058_pp0_iter1_reg;
reg   [13:0] v225_3_addr_3_reg_1058_pp0_iter2_reg;
reg   [31:0] v225_0_load_reg_1063;
reg   [31:0] v227_load_reg_1068;
reg   [31:0] v225_0_load_1_reg_1073;
reg   [31:0] v227_load_1_reg_1078;
reg   [31:0] v225_1_load_reg_1083;
wire   [31:0] v137_fu_547_p3;
reg   [31:0] v137_reg_1088;
wire   [31:0] v142_fu_558_p3;
reg   [31:0] v142_reg_1093;
wire   [31:0] v148_fu_569_p3;
reg   [31:0] v148_reg_1098;
wire   [31:0] v121_fu_576_p1;
reg   [31:0] v121_reg_1103;
wire   [31:0] v127_fu_581_p1;
reg   [31:0] v127_reg_1110;
wire   [31:0] v164_fu_589_p3;
reg   [31:0] v164_reg_1117;
reg   [31:0] v122_reg_1122;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1127;
reg   [31:0] v134_reg_1132;
wire   [31:0] v118_fu_609_p3;
wire   [31:0] v125_fu_620_p3;
wire   [31:0] v131_fu_631_p3;
reg   [31:0] v139_reg_1152;
reg   [31:0] v145_reg_1157;
reg   [31:0] v150_reg_1162;
reg   [13:0] v225_0_addr_4_reg_1167;
reg   [13:0] v225_0_addr_4_reg_1167_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_655_p2;
reg   [13:0] add_ln284_reg_1172;
reg   [13:0] v225_1_addr_4_reg_1177;
reg   [13:0] v225_1_addr_4_reg_1177_pp0_iter2_reg;
reg   [13:0] v225_2_addr_4_reg_1182;
reg   [13:0] v225_2_addr_4_reg_1182_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1187;
reg   [13:0] v225_3_addr_4_reg_1187_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1187_pp0_iter3_reg;
wire   [31:0] v153_fu_664_p3;
reg   [31:0] v153_reg_1192;
reg   [31:0] v156_reg_1197;
wire   [31:0] v159_fu_675_p3;
reg   [31:0] v159_reg_1202;
reg   [31:0] v161_reg_1207;
reg   [31:0] v167_reg_1212;
reg   [13:0] v225_0_addr_5_reg_1217;
reg   [13:0] v225_0_addr_5_reg_1217_pp0_iter2_reg;
reg   [13:0] v225_0_addr_5_reg_1217_pp0_iter3_reg;
reg   [13:0] v225_0_addr_6_reg_1222;
reg   [13:0] v225_0_addr_6_reg_1222_pp0_iter2_reg;
reg   [13:0] v225_0_addr_6_reg_1222_pp0_iter3_reg;
wire   [31:0] v170_fu_694_p3;
reg   [31:0] v170_reg_1227;
reg   [31:0] v172_reg_1232;
wire   [31:0] v175_fu_705_p3;
reg   [31:0] v175_reg_1237;
reg   [31:0] v178_reg_1242;
wire   [31:0] v181_fu_716_p3;
reg   [31:0] v181_reg_1247;
reg   [31:0] v183_reg_1252;
wire   [31:0] v186_fu_727_p3;
reg   [31:0] v186_reg_1257;
wire   [31:0] v192_fu_738_p3;
reg   [31:0] v192_reg_1262;
wire   [31:0] v197_fu_749_p3;
reg   [31:0] v197_reg_1267;
wire   [31:0] v203_fu_760_p3;
reg   [31:0] v203_reg_1272;
reg   [31:0] v189_reg_1277;
reg   [31:0] v194_reg_1282;
reg   [31:0] v200_reg_1287;
wire   [31:0] v208_fu_771_p3;
reg   [31:0] v208_reg_1292;
wire   [31:0] v214_fu_782_p3;
reg   [31:0] v214_reg_1297;
reg   [31:0] v205_reg_1302;
reg   [31:0] v211_reg_1307;
reg   [31:0] v216_reg_1312;
reg   [31:0] v206_reg_1317;
reg   [31:0] v212_reg_1322;
reg   [31:0] v217_reg_1327;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_17_fu_452_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_463_p1;
wire   [63:0] zext_ln182_17_fu_503_p1;
wire   [63:0] zext_ln179_fu_514_p1;
wire   [63:0] zext_ln225_fu_530_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln232_fu_647_p1;
wire   [63:0] zext_ln277_fu_682_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_686_p1;
reg   [7:0] v116_fu_88;
wire   [7:0] add_ln170_fu_596_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_5;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_809_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_814_p1;
wire   [31:0] bitcast_ln231_fu_829_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_834_p1;
wire   [31:0] bitcast_ln283_fu_868_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_872_p1;
reg    v227_ce1_local;
reg    v227_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_789_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_794_p1;
wire   [31:0] bitcast_ln244_fu_839_p1;
wire   [31:0] bitcast_ln250_fu_844_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_799_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_804_p1;
wire   [31:0] bitcast_ln257_fu_849_p1;
wire   [31:0] bitcast_ln263_fu_854_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln218_fu_819_p1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln224_fu_824_p1;
wire   [31:0] bitcast_ln270_fu_859_p1;
wire   [31:0] bitcast_ln276_fu_864_p1;
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
wire   [15:0] zext_ln175_16_fu_442_p1;
wire   [15:0] add_ln175_fu_446_p2;
wire   [12:0] zext_ln175_15_fu_438_p1;
wire   [12:0] add_ln171_fu_457_p2;
wire   [6:0] tmp_s_fu_471_p4;
wire   [15:0] zext_ln182_16_fu_493_p1;
wire   [15:0] add_ln182_fu_497_p2;
wire   [12:0] zext_ln182_15_fu_489_p1;
wire   [12:0] add_ln179_fu_508_p2;
wire   [13:0] zext_ln175_fu_522_p1;
wire   [13:0] add_ln225_fu_525_p2;
wire   [31:0] v136_fu_543_p1;
wire   [31:0] v141_fu_554_p1;
wire   [31:0] v147_fu_565_p1;
wire   [31:0] v163_fu_585_p1;
wire   [31:0] v117_fu_606_p1;
wire   [31:0] v124_fu_617_p1;
wire   [31:0] v130_fu_628_p1;
wire   [13:0] zext_ln182_fu_639_p1;
wire   [13:0] add_ln232_fu_642_p2;
wire   [31:0] v152_fu_660_p1;
wire   [31:0] v158_fu_671_p1;
wire   [31:0] v169_fu_690_p1;
wire   [31:0] v174_fu_701_p1;
wire   [31:0] v180_fu_712_p1;
wire   [31:0] v185_fu_723_p1;
wire   [31:0] v191_fu_734_p1;
wire   [31:0] v196_fu_745_p1;
wire   [31:0] v202_fu_756_p1;
wire   [31:0] v207_fu_767_p1;
wire   [31:0] v213_fu_778_p1;
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
    end else if (((icmp_ln170_reg_977 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_88 <= add_ln170_fu_596_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_1043 <= add_ln277_fu_538_p2;
        add_ln277_reg_1043_pp0_iter1_reg <= add_ln277_reg_1043;
        add_ln284_reg_1172 <= add_ln284_fu_655_p2;
        v137_reg_1088 <= v137_fu_547_p3;
        v142_reg_1093 <= v142_fu_558_p3;
        v148_reg_1098 <= v148_fu_569_p3;
        v153_reg_1192 <= v153_fu_664_p3;
        v159_reg_1202 <= v159_fu_675_p3;
        v225_0_addr_3_reg_1038 <= zext_ln225_fu_530_p1;
        v225_0_addr_3_reg_1038_pp0_iter1_reg <= v225_0_addr_3_reg_1038;
        v225_0_addr_3_reg_1038_pp0_iter2_reg <= v225_0_addr_3_reg_1038_pp0_iter1_reg;
        v225_0_addr_4_reg_1167 <= zext_ln232_fu_647_p1;
        v225_0_addr_4_reg_1167_pp0_iter2_reg <= v225_0_addr_4_reg_1167;
        v225_1_addr_3_reg_1048 <= zext_ln225_fu_530_p1;
        v225_1_addr_3_reg_1048_pp0_iter1_reg <= v225_1_addr_3_reg_1048;
        v225_1_addr_3_reg_1048_pp0_iter2_reg <= v225_1_addr_3_reg_1048_pp0_iter1_reg;
        v225_1_addr_4_reg_1177 <= zext_ln232_fu_647_p1;
        v225_1_addr_4_reg_1177_pp0_iter2_reg <= v225_1_addr_4_reg_1177;
        v225_2_addr_3_reg_1053 <= zext_ln225_fu_530_p1;
        v225_2_addr_3_reg_1053_pp0_iter1_reg <= v225_2_addr_3_reg_1053;
        v225_2_addr_3_reg_1053_pp0_iter2_reg <= v225_2_addr_3_reg_1053_pp0_iter1_reg;
        v225_2_addr_4_reg_1182 <= zext_ln232_fu_647_p1;
        v225_2_addr_4_reg_1182_pp0_iter2_reg <= v225_2_addr_4_reg_1182;
        v225_3_addr_3_reg_1058 <= zext_ln225_fu_530_p1;
        v225_3_addr_3_reg_1058_pp0_iter1_reg <= v225_3_addr_3_reg_1058;
        v225_3_addr_3_reg_1058_pp0_iter2_reg <= v225_3_addr_3_reg_1058_pp0_iter1_reg;
        v225_3_addr_4_reg_1187 <= zext_ln232_fu_647_p1;
        v225_3_addr_4_reg_1187_pp0_iter2_reg <= v225_3_addr_4_reg_1187;
        v225_3_addr_4_reg_1187_pp0_iter3_reg <= v225_3_addr_4_reg_1187_pp0_iter2_reg;
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
        icmp_ln170_reg_977 <= icmp_ln170_fu_432_p2;
        or_ln_reg_1007[7 : 1] <= or_ln_fu_481_p3[7 : 1];
        or_ln_reg_1007_pp0_iter1_reg[7 : 1] <= or_ln_reg_1007[7 : 1];
        v116_5_reg_971 <= ap_sig_allocacmp_v116_5;
        v225_0_addr_1_reg_986[12 : 0] <= zext_ln171_fu_463_p1[12 : 0];
        v225_0_addr_1_reg_986_pp0_iter1_reg[12 : 0] <= v225_0_addr_1_reg_986[12 : 0];
        v225_0_addr_1_reg_986_pp0_iter2_reg[12 : 0] <= v225_0_addr_1_reg_986_pp0_iter1_reg[12 : 0];
        v225_0_addr_2_reg_1017[12 : 0] <= zext_ln179_fu_514_p1[12 : 0];
        v225_0_addr_2_reg_1017_pp0_iter1_reg[12 : 0] <= v225_0_addr_2_reg_1017[12 : 0];
        v225_0_addr_2_reg_1017_pp0_iter2_reg[12 : 0] <= v225_0_addr_2_reg_1017_pp0_iter1_reg[12 : 0];
        v225_1_addr_1_reg_991[12 : 0] <= zext_ln171_fu_463_p1[12 : 0];
        v225_1_addr_1_reg_991_pp0_iter1_reg[12 : 0] <= v225_1_addr_1_reg_991[12 : 0];
        v225_1_addr_1_reg_991_pp0_iter2_reg[12 : 0] <= v225_1_addr_1_reg_991_pp0_iter1_reg[12 : 0];
        v225_1_addr_2_reg_1022[12 : 0] <= zext_ln179_fu_514_p1[12 : 0];
        v225_1_addr_2_reg_1022_pp0_iter1_reg[12 : 0] <= v225_1_addr_2_reg_1022[12 : 0];
        v225_1_addr_2_reg_1022_pp0_iter2_reg[12 : 0] <= v225_1_addr_2_reg_1022_pp0_iter1_reg[12 : 0];
        v225_2_addr_1_reg_996[12 : 0] <= zext_ln171_fu_463_p1[12 : 0];
        v225_2_addr_1_reg_996_pp0_iter1_reg[12 : 0] <= v225_2_addr_1_reg_996[12 : 0];
        v225_2_addr_1_reg_996_pp0_iter2_reg[12 : 0] <= v225_2_addr_1_reg_996_pp0_iter1_reg[12 : 0];
        v225_2_addr_2_reg_1027[12 : 0] <= zext_ln179_fu_514_p1[12 : 0];
        v225_2_addr_2_reg_1027_pp0_iter1_reg[12 : 0] <= v225_2_addr_2_reg_1027[12 : 0];
        v225_2_addr_2_reg_1027_pp0_iter2_reg[12 : 0] <= v225_2_addr_2_reg_1027_pp0_iter1_reg[12 : 0];
        v225_3_addr_1_reg_1001[12 : 0] <= zext_ln171_fu_463_p1[12 : 0];
        v225_3_addr_1_reg_1001_pp0_iter1_reg[12 : 0] <= v225_3_addr_1_reg_1001[12 : 0];
        v225_3_addr_1_reg_1001_pp0_iter2_reg[12 : 0] <= v225_3_addr_1_reg_1001_pp0_iter1_reg[12 : 0];
        v225_3_addr_2_reg_1032[12 : 0] <= zext_ln179_fu_514_p1[12 : 0];
        v225_3_addr_2_reg_1032_pp0_iter1_reg[12 : 0] <= v225_3_addr_2_reg_1032[12 : 0];
        v225_3_addr_2_reg_1032_pp0_iter2_reg[12 : 0] <= v225_3_addr_2_reg_1032_pp0_iter1_reg[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_400 <= grp_fu_5224_p_dout0;
        reg_404 <= grp_fu_5228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_408 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_412 <= grp_fu_5224_p_dout0;
        reg_416 <= grp_fu_5228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_420 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1103 <= v121_fu_576_p1;
        v127_reg_1110 <= v127_fu_581_p1;
        v164_reg_1117 <= v164_fu_589_p3;
        v170_reg_1227 <= v170_fu_694_p3;
        v175_reg_1237 <= v175_fu_705_p3;
        v181_reg_1247 <= v181_fu_716_p3;
        v186_reg_1257 <= v186_fu_727_p3;
        v192_reg_1262 <= v192_fu_738_p3;
        v197_reg_1267 <= v197_fu_749_p3;
        v203_reg_1272 <= v203_fu_760_p3;
        v225_0_addr_5_reg_1217 <= zext_ln277_fu_682_p1;
        v225_0_addr_5_reg_1217_pp0_iter2_reg <= v225_0_addr_5_reg_1217;
        v225_0_addr_5_reg_1217_pp0_iter3_reg <= v225_0_addr_5_reg_1217_pp0_iter2_reg;
        v225_0_addr_6_reg_1222 <= zext_ln284_fu_686_p1;
        v225_0_addr_6_reg_1222_pp0_iter2_reg <= v225_0_addr_6_reg_1222;
        v225_0_addr_6_reg_1222_pp0_iter3_reg <= v225_0_addr_6_reg_1222_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1122 <= grp_fu_5236_p_dout0;
        v128_reg_1127 <= grp_fu_5240_p_dout0;
        v134_reg_1132 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1152 <= grp_fu_5236_p_dout0;
        v145_reg_1157 <= grp_fu_5240_p_dout0;
        v150_reg_1162 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1197 <= grp_fu_5236_p_dout0;
        v161_reg_1207 <= grp_fu_5240_p_dout0;
        v167_reg_1212 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1232 <= grp_fu_5236_p_dout0;
        v178_reg_1242 <= grp_fu_5240_p_dout0;
        v183_reg_1252 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1277 <= grp_fu_5236_p_dout0;
        v194_reg_1282 <= grp_fu_5240_p_dout0;
        v200_reg_1287 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1302 <= grp_fu_5236_p_dout0;
        v211_reg_1307 <= grp_fu_5240_p_dout0;
        v216_reg_1312 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1317 <= grp_fu_5224_p_dout0;
        v212_reg_1322 <= grp_fu_5228_p_dout0;
        v217_reg_1327 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1292 <= v208_fu_771_p3;
        v214_reg_1297 <= v214_fu_782_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_1_reg_1073 <= v225_0_q0;
        v225_0_load_reg_1063 <= v225_0_q1;
        v225_1_load_reg_1083 <= v225_1_q1;
        v227_load_1_reg_1078 <= v227_q0;
        v227_load_reg_1068 <= v227_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_977 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116_5 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_5 = v116_fu_88;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_376_p0 = v203_reg_1272;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_376_p0 = v186_reg_1257;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_376_p0 = v170_reg_1227;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_376_p0 = v153_reg_1192;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_376_p0 = v137_reg_1088;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_376_p0 = v118_fu_609_p3;
        end else begin
            grp_fu_376_p0 = 'bx;
        end
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_376_p1 = v205_reg_1302;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_376_p1 = v189_reg_1277;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_376_p1 = v172_reg_1232;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_376_p1 = v156_reg_1197;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_376_p1 = v139_reg_1152;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_376_p1 = v122_reg_1122;
        end else begin
            grp_fu_376_p1 = 'bx;
        end
    end else begin
        grp_fu_376_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_380_p0 = v208_reg_1292;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_380_p0 = v192_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_380_p0 = v175_reg_1237;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_380_p0 = v159_reg_1202;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_380_p0 = v142_reg_1093;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_380_p0 = v125_fu_620_p3;
        end else begin
            grp_fu_380_p0 = 'bx;
        end
    end else begin
        grp_fu_380_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_380_p1 = v211_reg_1307;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_380_p1 = v194_reg_1282;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_380_p1 = v178_reg_1242;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_380_p1 = v161_reg_1207;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_380_p1 = v145_reg_1157;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_380_p1 = v128_reg_1127;
        end else begin
            grp_fu_380_p1 = 'bx;
        end
    end else begin
        grp_fu_380_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_384_p0 = v214_reg_1297;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_384_p0 = v197_reg_1267;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_384_p0 = v181_reg_1247;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_384_p0 = v164_reg_1117;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_384_p0 = v148_reg_1098;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_384_p0 = v131_fu_631_p3;
        end else begin
            grp_fu_384_p0 = 'bx;
        end
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_384_p1 = v216_reg_1312;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_384_p1 = v200_reg_1287;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_384_p1 = v183_reg_1252;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_384_p1 = v167_reg_1212;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_384_p1 = v150_reg_1162;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_384_p1 = v134_reg_1132;
        end else begin
            grp_fu_384_p1 = 'bx;
        end
    end else begin
        grp_fu_384_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_388_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_388_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_388_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_388_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_388_p0 = v133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_388_p0 = v120;
    end else begin
        grp_fu_388_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_388_p1 = v121_reg_1103;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_388_p1 = v127_reg_1110;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_388_p1 = v121_fu_576_p1;
    end else begin
        grp_fu_388_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_392_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_392_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_392_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_392_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_392_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_392_p0 = v120;
    end else begin
        grp_fu_392_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_392_p1 = v127_reg_1110;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_392_p1 = v121_reg_1103;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_392_p1 = v127_fu_581_p1;
    end else begin
        grp_fu_392_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_396_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_396_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_396_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_396_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_396_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_396_p0 = v133;
    end else begin
        grp_fu_396_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_396_p1 = v121_reg_1103;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_396_p1 = v127_reg_1110;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_396_p1 = v121_fu_576_p1;
    end else begin
        grp_fu_396_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_6_reg_1222_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1167_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1017_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_686_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_514_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_5_reg_1217_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1038_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_1_reg_986_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_682_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_530_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_463_p1;
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
        v225_0_d0_local = bitcast_ln289_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln237_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_814_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln283_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln231_fu_829_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln178_fu_809_p1;
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
        v225_1_address0_local = v225_1_addr_4_reg_1177_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1022_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_514_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1048_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_1_reg_991_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1048;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_463_p1;
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
            v225_1_d0_local = bitcast_ln250_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln198_fu_794_p1;
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
            v225_1_d1_local = bitcast_ln244_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln192_fu_789_p1;
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
        v225_2_address0_local = v225_2_addr_4_reg_1182_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1027_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_514_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1053_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_1_reg_996_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1053;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_463_p1;
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
            v225_2_d0_local = bitcast_ln263_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln211_fu_804_p1;
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
            v225_2_d1_local = bitcast_ln257_fu_849_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln205_fu_799_p1;
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
        v225_3_address0_local = v225_3_addr_4_reg_1187_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_1_reg_1001_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1032;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1058_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1032_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1001;
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
        v225_3_d0_local = bitcast_ln276_fu_864_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln218_fu_819_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln270_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln224_fu_824_p1;
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
        v227_ce0_local = 1'b1;
    end else begin
        v227_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln170_fu_596_p2 = (v116_5_reg_971 + 8'd2);
assign add_ln171_fu_457_p2 = (mul_ln171 + zext_ln175_15_fu_438_p1);
assign add_ln175_fu_446_p2 = (phi_mul + zext_ln175_16_fu_442_p1);
assign add_ln179_fu_508_p2 = (mul_ln171 + zext_ln182_15_fu_489_p1);
assign add_ln182_fu_497_p2 = (phi_mul + zext_ln182_16_fu_493_p1);
assign add_ln225_fu_525_p2 = (mul_ln225 + zext_ln175_fu_522_p1);
assign add_ln232_fu_642_p2 = (mul_ln225 + zext_ln182_fu_639_p1);
assign add_ln277_fu_538_p2 = (mul_ln277 + zext_ln175_fu_522_p1);
assign add_ln284_fu_655_p2 = (mul_ln277 + zext_ln182_fu_639_p1);
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
assign bitcast_ln178_fu_809_p1 = reg_400;
assign bitcast_ln185_fu_814_p1 = reg_404;
assign bitcast_ln192_fu_789_p1 = reg_408;
assign bitcast_ln198_fu_794_p1 = reg_412;
assign bitcast_ln205_fu_799_p1 = reg_416;
assign bitcast_ln211_fu_804_p1 = reg_420;
assign bitcast_ln218_fu_819_p1 = reg_412;
assign bitcast_ln224_fu_824_p1 = reg_416;
assign bitcast_ln231_fu_829_p1 = reg_408;
assign bitcast_ln237_fu_834_p1 = reg_400;
assign bitcast_ln244_fu_839_p1 = reg_404;
assign bitcast_ln250_fu_844_p1 = reg_420;
assign bitcast_ln257_fu_849_p1 = reg_400;
assign bitcast_ln263_fu_854_p1 = reg_404;
assign bitcast_ln270_fu_859_p1 = reg_408;
assign bitcast_ln276_fu_864_p1 = v206_reg_1317;
assign bitcast_ln283_fu_868_p1 = v212_reg_1322;
assign bitcast_ln289_fu_872_p1 = v217_reg_1327;
assign grp_fu_5224_p_ce = 1'b1;
assign grp_fu_5224_p_din0 = grp_fu_376_p0;
assign grp_fu_5224_p_din1 = grp_fu_376_p1;
assign grp_fu_5224_p_opcode = 2'd0;
assign grp_fu_5228_p_ce = 1'b1;
assign grp_fu_5228_p_din0 = grp_fu_380_p0;
assign grp_fu_5228_p_din1 = grp_fu_380_p1;
assign grp_fu_5228_p_opcode = 2'd0;
assign grp_fu_5232_p_ce = 1'b1;
assign grp_fu_5232_p_din0 = grp_fu_384_p0;
assign grp_fu_5232_p_din1 = grp_fu_384_p1;
assign grp_fu_5232_p_opcode = 2'd0;
assign grp_fu_5236_p_ce = 1'b1;
assign grp_fu_5236_p_din0 = grp_fu_388_p0;
assign grp_fu_5236_p_din1 = grp_fu_388_p1;
assign grp_fu_5240_p_ce = 1'b1;
assign grp_fu_5240_p_din0 = grp_fu_392_p0;
assign grp_fu_5240_p_din1 = grp_fu_392_p1;
assign grp_fu_5244_p_ce = 1'b1;
assign grp_fu_5244_p_din0 = grp_fu_396_p0;
assign grp_fu_5244_p_din1 = grp_fu_396_p1;
assign icmp_ln170_fu_432_p2 = ((ap_sig_allocacmp_v116_5 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln_fu_481_p3 = {{tmp_s_fu_471_p4}, {1'd1}};
assign tmp_s_fu_471_p4 = {{ap_sig_allocacmp_v116_5[7:1]}};
assign v117_fu_606_p1 = v225_0_load_reg_1063;
assign v118_fu_609_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_606_p1);
assign v121_fu_576_p1 = v227_load_reg_1068;
assign v124_fu_617_p1 = v225_0_load_1_reg_1073;
assign v125_fu_620_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_617_p1);
assign v127_fu_581_p1 = v227_load_1_reg_1078;
assign v130_fu_628_p1 = v225_1_load_reg_1083;
assign v131_fu_631_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_628_p1);
assign v136_fu_543_p1 = v225_1_q0;
assign v137_fu_547_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_543_p1);
assign v141_fu_554_p1 = v225_2_q1;
assign v142_fu_558_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_554_p1);
assign v147_fu_565_p1 = v225_2_q0;
assign v148_fu_569_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_565_p1);
assign v152_fu_660_p1 = v225_3_q1;
assign v153_fu_664_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_660_p1);
assign v158_fu_671_p1 = v225_3_q0;
assign v159_fu_675_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_671_p1);
assign v163_fu_585_p1 = v225_0_q1;
assign v164_fu_589_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_585_p1);
assign v169_fu_690_p1 = v225_0_q0;
assign v170_fu_694_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_690_p1);
assign v174_fu_701_p1 = v225_1_q1;
assign v175_fu_705_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_701_p1);
assign v180_fu_712_p1 = v225_1_q0;
assign v181_fu_716_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_712_p1);
assign v185_fu_723_p1 = v225_2_q1;
assign v186_fu_727_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_723_p1);
assign v191_fu_734_p1 = v225_2_q0;
assign v192_fu_738_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_734_p1);
assign v196_fu_745_p1 = v225_3_q1;
assign v197_fu_749_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_745_p1);
assign v202_fu_756_p1 = v225_3_q0;
assign v203_fu_760_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_756_p1);
assign v207_fu_767_p1 = v225_0_q1;
assign v208_fu_771_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_767_p1);
assign v213_fu_778_p1 = v225_0_q0;
assign v214_fu_782_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_778_p1);
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
assign v227_address0 = zext_ln182_17_fu_503_p1;
assign v227_address1 = zext_ln175_17_fu_452_p1;
assign v227_ce0 = v227_ce0_local;
assign v227_ce1 = v227_ce1_local;
assign zext_ln171_fu_463_p1 = add_ln171_fu_457_p2;
assign zext_ln175_15_fu_438_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln175_16_fu_442_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln175_17_fu_452_p1 = add_ln175_fu_446_p2;
assign zext_ln175_fu_522_p1 = v116_5_reg_971;
assign zext_ln179_fu_514_p1 = add_ln179_fu_508_p2;
assign zext_ln182_15_fu_489_p1 = or_ln_fu_481_p3;
assign zext_ln182_16_fu_493_p1 = or_ln_fu_481_p3;
assign zext_ln182_17_fu_503_p1 = add_ln182_fu_497_p2;
assign zext_ln182_fu_639_p1 = or_ln_reg_1007_pp0_iter1_reg;
assign zext_ln225_fu_530_p1 = add_ln225_fu_525_p2;
assign zext_ln232_fu_647_p1 = add_ln232_fu_642_p2;
assign zext_ln277_fu_682_p1 = add_ln277_reg_1043_pp0_iter1_reg;
assign zext_ln284_fu_686_p1 = add_ln284_reg_1172;
always @ (posedge ap_clk) begin
    v225_0_addr_1_reg_986[13] <= 1'b0;
    v225_0_addr_1_reg_986_pp0_iter1_reg[13] <= 1'b0;
    v225_0_addr_1_reg_986_pp0_iter2_reg[13] <= 1'b0;
    v225_1_addr_1_reg_991[13] <= 1'b0;
    v225_1_addr_1_reg_991_pp0_iter1_reg[13] <= 1'b0;
    v225_1_addr_1_reg_991_pp0_iter2_reg[13] <= 1'b0;
    v225_2_addr_1_reg_996[13] <= 1'b0;
    v225_2_addr_1_reg_996_pp0_iter1_reg[13] <= 1'b0;
    v225_2_addr_1_reg_996_pp0_iter2_reg[13] <= 1'b0;
    v225_3_addr_1_reg_1001[13] <= 1'b0;
    v225_3_addr_1_reg_1001_pp0_iter1_reg[13] <= 1'b0;
    v225_3_addr_1_reg_1001_pp0_iter2_reg[13] <= 1'b0;
    or_ln_reg_1007[0] <= 1'b1;
    or_ln_reg_1007_pp0_iter1_reg[0] <= 1'b1;
    v225_0_addr_2_reg_1017[13] <= 1'b0;
    v225_0_addr_2_reg_1017_pp0_iter1_reg[13] <= 1'b0;
    v225_0_addr_2_reg_1017_pp0_iter2_reg[13] <= 1'b0;
    v225_1_addr_2_reg_1022[13] <= 1'b0;
    v225_1_addr_2_reg_1022_pp0_iter1_reg[13] <= 1'b0;
    v225_1_addr_2_reg_1022_pp0_iter2_reg[13] <= 1'b0;
    v225_2_addr_2_reg_1027[13] <= 1'b0;
    v225_2_addr_2_reg_1027_pp0_iter1_reg[13] <= 1'b0;
    v225_2_addr_2_reg_1027_pp0_iter2_reg[13] <= 1'b0;
    v225_3_addr_2_reg_1032[13] <= 1'b0;
    v225_3_addr_2_reg_1032_pp0_iter1_reg[13] <= 1'b0;
    v225_3_addr_2_reg_1032_pp0_iter2_reg[13] <= 1'b0;
end
endmodule 