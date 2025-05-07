module kernel_2mm_kernel_2mm_node1_Pipeline_label_54 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,phi_mul,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,mul_ln199,mul_ln251,mul_ln264,cmp11,v120_2,v133_2,v144_2,v155_2,v166_2,v177_2,v188_2,v199_2,v210_2,grp_fu_5224_p_din0,grp_fu_5224_p_din1,grp_fu_5224_p_opcode,grp_fu_5224_p_dout0,grp_fu_5224_p_ce,grp_fu_5228_p_din0,grp_fu_5228_p_din1,grp_fu_5228_p_opcode,grp_fu_5228_p_dout0,grp_fu_5228_p_ce,grp_fu_5232_p_din0,grp_fu_5232_p_din1,grp_fu_5232_p_opcode,grp_fu_5232_p_dout0,grp_fu_5232_p_ce,grp_fu_5236_p_din0,grp_fu_5236_p_din1,grp_fu_5236_p_dout0,grp_fu_5236_p_ce,grp_fu_5240_p_din0,grp_fu_5240_p_din1,grp_fu_5240_p_dout0,grp_fu_5240_p_ce,grp_fu_5244_p_din0,grp_fu_5244_p_din1,grp_fu_5244_p_dout0,grp_fu_5244_p_ce); 
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
input  [13:0] mul_ln199;
input  [13:0] mul_ln251;
input  [13:0] mul_ln264;
input  [0:0] cmp11;
input  [31:0] v120_2;
input  [31:0] v133_2;
input  [31:0] v144_2;
input  [31:0] v155_2;
input  [31:0] v166_2;
input  [31:0] v177_2;
input  [31:0] v188_2;
input  [31:0] v199_2;
input  [31:0] v210_2;
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
reg   [0:0] icmp_ln170_reg_957;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_395;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_399;
reg   [31:0] reg_403;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_407;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_411;
reg   [31:0] reg_415;
reg   [7:0] v116_reg_952;
wire   [0:0] icmp_ln170_fu_427_p2;
reg   [13:0] v225_0_addr_11_reg_966;
reg   [13:0] v225_0_addr_11_reg_966_pp0_iter1_reg;
reg   [13:0] v225_0_addr_11_reg_966_pp0_iter2_reg;
wire   [13:0] add_ln251_fu_466_p2;
reg   [13:0] add_ln251_reg_971;
reg   [13:0] add_ln251_reg_971_pp0_iter1_reg;
reg   [13:0] v225_1_addr_11_reg_976;
reg   [13:0] v225_1_addr_11_reg_976_pp0_iter1_reg;
reg   [13:0] v225_1_addr_11_reg_976_pp0_iter2_reg;
reg   [13:0] v225_2_addr_9_reg_982;
reg   [13:0] v225_2_addr_9_reg_982_pp0_iter1_reg;
reg   [13:0] v225_2_addr_9_reg_982_pp0_iter2_reg;
reg   [13:0] v225_2_addr_11_reg_987;
reg   [13:0] v225_2_addr_11_reg_987_pp0_iter1_reg;
reg   [13:0] v225_2_addr_11_reg_987_pp0_iter2_reg;
reg   [13:0] v225_3_addr_9_reg_992;
reg   [13:0] v225_3_addr_9_reg_992_pp0_iter1_reg;
reg   [13:0] v225_3_addr_9_reg_992_pp0_iter2_reg;
reg   [13:0] v225_3_addr_11_reg_997;
reg   [13:0] v225_3_addr_11_reg_997_pp0_iter1_reg;
reg   [13:0] v225_3_addr_11_reg_997_pp0_iter2_reg;
reg   [13:0] v225_0_addr_12_reg_1007;
reg   [13:0] v225_0_addr_12_reg_1007_pp0_iter1_reg;
reg   [13:0] v225_0_addr_12_reg_1007_pp0_iter2_reg;
wire   [13:0] add_ln258_fu_535_p2;
reg   [13:0] add_ln258_reg_1012;
reg   [13:0] add_ln258_reg_1012_pp0_iter1_reg;
reg   [13:0] v225_1_addr_12_reg_1017;
reg   [13:0] v225_1_addr_12_reg_1017_pp0_iter1_reg;
reg   [13:0] v225_1_addr_12_reg_1017_pp0_iter2_reg;
reg   [13:0] v225_2_addr_10_reg_1023;
reg   [13:0] v225_2_addr_10_reg_1023_pp0_iter1_reg;
reg   [13:0] v225_2_addr_10_reg_1023_pp0_iter2_reg;
reg   [13:0] v225_2_addr_12_reg_1028;
reg   [13:0] v225_2_addr_12_reg_1028_pp0_iter1_reg;
reg   [13:0] v225_2_addr_12_reg_1028_pp0_iter2_reg;
reg   [13:0] v225_3_addr_10_reg_1033;
reg   [13:0] v225_3_addr_10_reg_1033_pp0_iter1_reg;
reg   [13:0] v225_3_addr_10_reg_1033_pp0_iter2_reg;
reg   [13:0] v225_3_addr_12_reg_1038;
reg   [13:0] v225_3_addr_12_reg_1038_pp0_iter1_reg;
reg   [13:0] v225_3_addr_12_reg_1038_pp0_iter2_reg;
reg   [31:0] v225_2_load_8_reg_1043;
reg   [31:0] v227_load_4_reg_1048;
wire   [31:0] v125_fu_557_p3;
reg   [31:0] v125_reg_1053;
wire   [31:0] v127_fu_564_p1;
reg   [31:0] v127_reg_1058;
wire   [31:0] v131_fu_572_p3;
reg   [31:0] v131_reg_1065;
wire   [31:0] v137_fu_583_p3;
reg   [31:0] v137_reg_1070;
wire   [31:0] v142_fu_594_p3;
reg   [31:0] v142_reg_1075;
wire   [31:0] v148_fu_605_p3;
reg   [31:0] v148_reg_1080;
wire   [31:0] v121_fu_612_p1;
reg   [31:0] v121_reg_1085;
wire   [31:0] v164_fu_621_p3;
reg   [31:0] v164_reg_1092;
reg   [31:0] v122_reg_1097;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1102;
reg   [31:0] v134_reg_1107;
wire   [31:0] v118_fu_641_p3;
reg   [31:0] v139_reg_1117;
reg   [31:0] v145_reg_1122;
reg   [31:0] v150_reg_1127;
reg   [13:0] v225_0_addr_13_reg_1132;
reg   [13:0] v225_0_addr_13_reg_1132_pp0_iter2_reg;
reg   [13:0] v225_1_addr_13_reg_1137;
reg   [13:0] v225_1_addr_13_reg_1137_pp0_iter2_reg;
reg   [13:0] v225_2_addr_13_reg_1142;
reg   [13:0] v225_2_addr_13_reg_1142_pp0_iter2_reg;
reg   [13:0] v225_2_addr_13_reg_1142_pp0_iter3_reg;
reg   [13:0] v225_0_addr_14_reg_1147;
reg   [13:0] v225_0_addr_14_reg_1147_pp0_iter2_reg;
reg   [13:0] v225_1_addr_14_reg_1152;
reg   [13:0] v225_1_addr_14_reg_1152_pp0_iter2_reg;
reg   [13:0] v225_1_addr_14_reg_1152_pp0_iter3_reg;
reg   [13:0] v225_2_addr_14_reg_1157;
reg   [13:0] v225_2_addr_14_reg_1157_pp0_iter2_reg;
reg   [13:0] v225_2_addr_14_reg_1157_pp0_iter3_reg;
wire   [31:0] v153_fu_665_p3;
reg   [31:0] v153_reg_1162;
reg   [31:0] v156_reg_1167;
wire   [31:0] v159_fu_676_p3;
reg   [31:0] v159_reg_1172;
reg   [31:0] v161_reg_1177;
reg   [31:0] v167_reg_1182;
wire   [31:0] v170_fu_687_p3;
reg   [31:0] v170_reg_1187;
reg   [31:0] v172_reg_1192;
wire   [31:0] v175_fu_698_p3;
reg   [31:0] v175_reg_1197;
reg   [31:0] v178_reg_1202;
wire   [31:0] v181_fu_709_p3;
reg   [31:0] v181_reg_1207;
reg   [31:0] v183_reg_1212;
wire   [31:0] v186_fu_720_p3;
reg   [31:0] v186_reg_1217;
wire   [31:0] v192_fu_731_p3;
reg   [31:0] v192_reg_1222;
wire   [31:0] v197_fu_742_p3;
reg   [31:0] v197_reg_1227;
wire   [31:0] v203_fu_753_p3;
reg   [31:0] v203_reg_1232;
reg   [31:0] v189_reg_1237;
reg   [31:0] v194_reg_1242;
reg   [31:0] v200_reg_1247;
wire   [31:0] v208_fu_764_p3;
reg   [31:0] v208_reg_1252;
wire   [31:0] v214_fu_775_p3;
reg   [31:0] v214_reg_1257;
reg   [31:0] v205_reg_1262;
reg   [31:0] v211_reg_1267;
reg   [31:0] v216_reg_1272;
reg   [31:0] v206_reg_1277;
reg   [31:0] v212_reg_1282;
reg   [31:0] v217_reg_1287;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_12_fu_447_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln199_fu_458_p1;
wire   [63:0] zext_ln171_fu_478_p1;
wire   [63:0] zext_ln182_12_fu_516_p1;
wire   [63:0] zext_ln206_fu_527_p1;
wire   [63:0] zext_ln179_fu_547_p1;
wire   [63:0] zext_ln251_fu_649_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln258_fu_655_p1;
reg   [7:0] v116_2_fu_86;
wire   [7:0] add_ln170_fu_628_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln178_fu_802_p1;
wire    ap_block_pp0_stage3;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln185_fu_807_p1;
wire   [31:0] bitcast_ln231_fu_822_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_827_p1;
wire   [31:0] bitcast_ln283_fu_861_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_865_p1;
reg    v227_ce1_local;
reg    v227_ce0_local;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln192_fu_782_p1;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln198_fu_787_p1;
wire   [31:0] bitcast_ln244_fu_832_p1;
wire   [31:0] bitcast_ln250_fu_837_p1;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln205_fu_792_p1;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln211_fu_797_p1;
wire   [31:0] bitcast_ln257_fu_842_p1;
wire   [31:0] bitcast_ln263_fu_847_p1;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln218_fu_812_p1;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln224_fu_817_p1;
wire   [31:0] bitcast_ln270_fu_852_p1;
wire   [31:0] bitcast_ln276_fu_857_p1;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
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
wire   [15:0] zext_ln175_11_fu_437_p1;
wire   [15:0] add_ln175_fu_441_p2;
wire   [13:0] zext_ln175_fu_433_p1;
wire   [13:0] add_ln199_fu_452_p2;
wire   [13:0] add_ln171_fu_472_p2;
wire   [6:0] tmp_s_fu_484_p4;
wire   [7:0] or_ln179_2_fu_494_p3;
wire   [15:0] zext_ln182_11_fu_506_p1;
wire   [15:0] add_ln182_fu_510_p2;
wire   [13:0] zext_ln182_fu_502_p1;
wire   [13:0] add_ln206_fu_521_p2;
wire   [13:0] add_ln179_fu_541_p2;
wire   [31:0] v124_fu_553_p1;
wire   [31:0] v130_fu_568_p1;
wire   [31:0] v136_fu_579_p1;
wire   [31:0] v141_fu_590_p1;
wire   [31:0] v147_fu_601_p1;
wire   [31:0] v163_fu_617_p1;
wire   [31:0] v117_fu_638_p1;
wire   [31:0] v152_fu_661_p1;
wire   [31:0] v158_fu_672_p1;
wire   [31:0] v169_fu_683_p1;
wire   [31:0] v174_fu_694_p1;
wire   [31:0] v180_fu_705_p1;
wire   [31:0] v185_fu_716_p1;
wire   [31:0] v191_fu_727_p1;
wire   [31:0] v196_fu_738_p1;
wire   [31:0] v202_fu_749_p1;
wire   [31:0] v207_fu_760_p1;
wire   [31:0] v213_fu_771_p1;
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
#0 v116_2_fu_86 = 8'd0;
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
        v116_2_fu_86 <= 8'd0;
    end else if (((icmp_ln170_reg_957 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_2_fu_86 <= add_ln170_fu_628_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln251_reg_971 <= add_ln251_fu_466_p2;
        add_ln251_reg_971_pp0_iter1_reg <= add_ln251_reg_971;
        add_ln258_reg_1012 <= add_ln258_fu_535_p2;
        add_ln258_reg_1012_pp0_iter1_reg <= add_ln258_reg_1012;
        icmp_ln170_reg_957 <= icmp_ln170_fu_427_p2;
        v116_reg_952 <= ap_sig_allocacmp_v116;
        v225_0_addr_11_reg_966 <= zext_ln199_fu_458_p1;
        v225_0_addr_11_reg_966_pp0_iter1_reg <= v225_0_addr_11_reg_966;
        v225_0_addr_11_reg_966_pp0_iter2_reg <= v225_0_addr_11_reg_966_pp0_iter1_reg;
        v225_0_addr_12_reg_1007 <= zext_ln206_fu_527_p1;
        v225_0_addr_12_reg_1007_pp0_iter1_reg <= v225_0_addr_12_reg_1007;
        v225_0_addr_12_reg_1007_pp0_iter2_reg <= v225_0_addr_12_reg_1007_pp0_iter1_reg;
        v225_1_addr_11_reg_976 <= zext_ln199_fu_458_p1;
        v225_1_addr_11_reg_976_pp0_iter1_reg <= v225_1_addr_11_reg_976;
        v225_1_addr_11_reg_976_pp0_iter2_reg <= v225_1_addr_11_reg_976_pp0_iter1_reg;
        v225_1_addr_12_reg_1017 <= zext_ln206_fu_527_p1;
        v225_1_addr_12_reg_1017_pp0_iter1_reg <= v225_1_addr_12_reg_1017;
        v225_1_addr_12_reg_1017_pp0_iter2_reg <= v225_1_addr_12_reg_1017_pp0_iter1_reg;
        v225_2_addr_10_reg_1023 <= zext_ln179_fu_547_p1;
        v225_2_addr_10_reg_1023_pp0_iter1_reg <= v225_2_addr_10_reg_1023;
        v225_2_addr_10_reg_1023_pp0_iter2_reg <= v225_2_addr_10_reg_1023_pp0_iter1_reg;
        v225_2_addr_11_reg_987 <= zext_ln199_fu_458_p1;
        v225_2_addr_11_reg_987_pp0_iter1_reg <= v225_2_addr_11_reg_987;
        v225_2_addr_11_reg_987_pp0_iter2_reg <= v225_2_addr_11_reg_987_pp0_iter1_reg;
        v225_2_addr_12_reg_1028 <= zext_ln206_fu_527_p1;
        v225_2_addr_12_reg_1028_pp0_iter1_reg <= v225_2_addr_12_reg_1028;
        v225_2_addr_12_reg_1028_pp0_iter2_reg <= v225_2_addr_12_reg_1028_pp0_iter1_reg;
        v225_2_addr_9_reg_982 <= zext_ln171_fu_478_p1;
        v225_2_addr_9_reg_982_pp0_iter1_reg <= v225_2_addr_9_reg_982;
        v225_2_addr_9_reg_982_pp0_iter2_reg <= v225_2_addr_9_reg_982_pp0_iter1_reg;
        v225_3_addr_10_reg_1033 <= zext_ln179_fu_547_p1;
        v225_3_addr_10_reg_1033_pp0_iter1_reg <= v225_3_addr_10_reg_1033;
        v225_3_addr_10_reg_1033_pp0_iter2_reg <= v225_3_addr_10_reg_1033_pp0_iter1_reg;
        v225_3_addr_11_reg_997 <= zext_ln199_fu_458_p1;
        v225_3_addr_11_reg_997_pp0_iter1_reg <= v225_3_addr_11_reg_997;
        v225_3_addr_11_reg_997_pp0_iter2_reg <= v225_3_addr_11_reg_997_pp0_iter1_reg;
        v225_3_addr_12_reg_1038 <= zext_ln206_fu_527_p1;
        v225_3_addr_12_reg_1038_pp0_iter1_reg <= v225_3_addr_12_reg_1038;
        v225_3_addr_12_reg_1038_pp0_iter2_reg <= v225_3_addr_12_reg_1038_pp0_iter1_reg;
        v225_3_addr_9_reg_992 <= zext_ln171_fu_478_p1;
        v225_3_addr_9_reg_992_pp0_iter1_reg <= v225_3_addr_9_reg_992;
        v225_3_addr_9_reg_992_pp0_iter2_reg <= v225_3_addr_9_reg_992_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_395 <= grp_fu_5224_p_dout0;
        reg_399 <= grp_fu_5228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_403 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_407 <= grp_fu_5224_p_dout0;
        reg_411 <= grp_fu_5228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_415 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1085 <= v121_fu_612_p1;
        v164_reg_1092 <= v164_fu_621_p3;
        v170_reg_1187 <= v170_fu_687_p3;
        v175_reg_1197 <= v175_fu_698_p3;
        v181_reg_1207 <= v181_fu_709_p3;
        v186_reg_1217 <= v186_fu_720_p3;
        v192_reg_1222 <= v192_fu_731_p3;
        v197_reg_1227 <= v197_fu_742_p3;
        v203_reg_1232 <= v203_fu_753_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1097 <= grp_fu_5236_p_dout0;
        v128_reg_1102 <= grp_fu_5240_p_dout0;
        v134_reg_1107 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v125_reg_1053 <= v125_fu_557_p3;
        v127_reg_1058 <= v127_fu_564_p1;
        v131_reg_1065 <= v131_fu_572_p3;
        v137_reg_1070 <= v137_fu_583_p3;
        v142_reg_1075 <= v142_fu_594_p3;
        v148_reg_1080 <= v148_fu_605_p3;
        v153_reg_1162 <= v153_fu_665_p3;
        v159_reg_1172 <= v159_fu_676_p3;
        v225_0_addr_13_reg_1132 <= zext_ln251_fu_649_p1;
        v225_0_addr_13_reg_1132_pp0_iter2_reg <= v225_0_addr_13_reg_1132;
        v225_0_addr_14_reg_1147 <= zext_ln258_fu_655_p1;
        v225_0_addr_14_reg_1147_pp0_iter2_reg <= v225_0_addr_14_reg_1147;
        v225_1_addr_13_reg_1137 <= zext_ln251_fu_649_p1;
        v225_1_addr_13_reg_1137_pp0_iter2_reg <= v225_1_addr_13_reg_1137;
        v225_1_addr_14_reg_1152 <= zext_ln258_fu_655_p1;
        v225_1_addr_14_reg_1152_pp0_iter2_reg <= v225_1_addr_14_reg_1152;
        v225_1_addr_14_reg_1152_pp0_iter3_reg <= v225_1_addr_14_reg_1152_pp0_iter2_reg;
        v225_2_addr_13_reg_1142 <= zext_ln251_fu_649_p1;
        v225_2_addr_13_reg_1142_pp0_iter2_reg <= v225_2_addr_13_reg_1142;
        v225_2_addr_13_reg_1142_pp0_iter3_reg <= v225_2_addr_13_reg_1142_pp0_iter2_reg;
        v225_2_addr_14_reg_1157 <= zext_ln258_fu_655_p1;
        v225_2_addr_14_reg_1157_pp0_iter2_reg <= v225_2_addr_14_reg_1157;
        v225_2_addr_14_reg_1157_pp0_iter3_reg <= v225_2_addr_14_reg_1157_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1117 <= grp_fu_5236_p_dout0;
        v145_reg_1122 <= grp_fu_5240_p_dout0;
        v150_reg_1127 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1167 <= grp_fu_5236_p_dout0;
        v161_reg_1177 <= grp_fu_5240_p_dout0;
        v167_reg_1182 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1192 <= grp_fu_5236_p_dout0;
        v178_reg_1202 <= grp_fu_5240_p_dout0;
        v183_reg_1212 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1237 <= grp_fu_5236_p_dout0;
        v194_reg_1242 <= grp_fu_5240_p_dout0;
        v200_reg_1247 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1262 <= grp_fu_5236_p_dout0;
        v211_reg_1267 <= grp_fu_5240_p_dout0;
        v216_reg_1272 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1277 <= grp_fu_5224_p_dout0;
        v212_reg_1282 <= grp_fu_5228_p_dout0;
        v217_reg_1287 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1252 <= v208_fu_764_p3;
        v214_reg_1257 <= v214_fu_775_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_load_8_reg_1043 <= v225_2_q1;
        v227_load_4_reg_1048 <= v227_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_957 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116 = v116_2_fu_86;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_371_p0 = v203_reg_1232;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_371_p0 = v186_reg_1217;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_371_p0 = v170_reg_1187;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_371_p0 = v153_reg_1162;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_371_p0 = v137_reg_1070;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_371_p0 = v118_fu_641_p3;
        end else begin
            grp_fu_371_p0 = 'bx;
        end
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_371_p1 = v205_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_371_p1 = v189_reg_1237;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_371_p1 = v172_reg_1192;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_371_p1 = v156_reg_1167;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_371_p1 = v139_reg_1117;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_371_p1 = v122_reg_1097;
        end else begin
            grp_fu_371_p1 = 'bx;
        end
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_375_p0 = v208_reg_1252;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_375_p0 = v192_reg_1222;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_375_p0 = v175_reg_1197;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_375_p0 = v159_reg_1172;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_375_p0 = v142_reg_1075;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_375_p0 = v125_reg_1053;
        end else begin
            grp_fu_375_p0 = 'bx;
        end
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_375_p1 = v211_reg_1267;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_375_p1 = v194_reg_1242;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_375_p1 = v178_reg_1202;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_375_p1 = v161_reg_1177;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_375_p1 = v145_reg_1122;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_375_p1 = v128_reg_1102;
        end else begin
            grp_fu_375_p1 = 'bx;
        end
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_379_p0 = v214_reg_1257;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_379_p0 = v197_reg_1227;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_379_p0 = v181_reg_1207;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_379_p0 = v164_reg_1092;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_379_p0 = v148_reg_1080;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_379_p0 = v131_reg_1065;
        end else begin
            grp_fu_379_p0 = 'bx;
        end
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_379_p1 = v216_reg_1272;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_379_p1 = v200_reg_1247;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_379_p1 = v183_reg_1212;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_379_p1 = v167_reg_1182;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_379_p1 = v150_reg_1127;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_379_p1 = v134_reg_1107;
        end else begin
            grp_fu_379_p1 = 'bx;
        end
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_383_p0 = v199_2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_383_p0 = v188_2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_383_p0 = v166_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_383_p0 = v155_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_383_p0 = v133_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p0 = v120_2;
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_383_p1 = v121_reg_1085;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_383_p1 = v127_reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p1 = v121_fu_612_p1;
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_387_p0 = v210_2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_387_p0 = v188_2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_387_p0 = v177_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_387_p0 = v155_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_387_p0 = v144_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_387_p0 = v120_2;
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_387_p1 = v121_reg_1085;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_387_p1 = v127_reg_1058;
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_391_p0 = v210_2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_391_p0 = v199_2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_391_p0 = v177_2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_391_p0 = v166_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_391_p0 = v144_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_391_p0 = v133_2;
    end else begin
        grp_fu_391_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_391_p1 = v121_reg_1085;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_391_p1 = v127_reg_1058;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_391_p1 = v121_fu_612_p1;
    end else begin
        grp_fu_391_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_14_reg_1147_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_12_reg_1007_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln258_fu_655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln206_fu_527_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_13_reg_1132_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_11_reg_966_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln251_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln199_fu_458_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_0_d0_local = bitcast_ln263_fu_847_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d0_local = bitcast_ln211_fu_797_p1;
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
            v225_0_d1_local = bitcast_ln257_fu_842_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d1_local = bitcast_ln205_fu_792_p1;
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
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_14_reg_1152_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = v225_1_addr_11_reg_976_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln258_fu_655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = v225_1_addr_12_reg_1017;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_13_reg_1137_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = v225_1_addr_12_reg_1017_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln251_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = v225_1_addr_11_reg_976;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_d0_local = bitcast_ln276_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_d0_local = bitcast_ln218_fu_812_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_1_d1_local = bitcast_ln270_fu_852_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_1_d1_local = bitcast_ln224_fu_817_p1;
        end else begin
            v225_1_d1_local = 'bx;
        end
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
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address0_local = v225_2_addr_14_reg_1157_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address0_local = v225_2_addr_12_reg_1028_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address0_local = v225_2_addr_10_reg_1023_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_14_reg_1157;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_12_reg_1028_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_547_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_13_reg_1142_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_address1_local = v225_2_addr_11_reg_987_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_9_reg_982_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_13_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_11_reg_987;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_478_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_d0_local = bitcast_ln289_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_d0_local = bitcast_ln237_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_d0_local = bitcast_ln185_fu_807_p1;
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_d1_local = bitcast_ln283_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_2_d1_local = bitcast_ln231_fu_822_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_d1_local = bitcast_ln178_fu_802_p1;
    end else begin
        v225_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address0_local = v225_3_addr_12_reg_1038_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_10_reg_1033_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_12_reg_1038_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_547_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address1_local = v225_3_addr_11_reg_997_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_9_reg_992_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_11_reg_997_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_478_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_3_d0_local = bitcast_ln250_fu_837_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_3_d0_local = bitcast_ln198_fu_787_p1;
        end else begin
            v225_3_d0_local = 'bx;
        end
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_3_d1_local = bitcast_ln244_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_3_d1_local = bitcast_ln192_fu_782_p1;
        end else begin
            v225_3_d1_local = 'bx;
        end
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
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
assign add_ln170_fu_628_p2 = (v116_reg_952 + 8'd2);
assign add_ln171_fu_472_p2 = (mul_ln264 + zext_ln175_fu_433_p1);
assign add_ln175_fu_441_p2 = (phi_mul + zext_ln175_11_fu_437_p1);
assign add_ln179_fu_541_p2 = (mul_ln264 + zext_ln182_fu_502_p1);
assign add_ln182_fu_510_p2 = (phi_mul + zext_ln182_11_fu_506_p1);
assign add_ln199_fu_452_p2 = (mul_ln199 + zext_ln175_fu_433_p1);
assign add_ln206_fu_521_p2 = (mul_ln199 + zext_ln182_fu_502_p1);
assign add_ln251_fu_466_p2 = (mul_ln251 + zext_ln175_fu_433_p1);
assign add_ln258_fu_535_p2 = (mul_ln251 + zext_ln182_fu_502_p1);
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
assign bitcast_ln178_fu_802_p1 = reg_395;
assign bitcast_ln185_fu_807_p1 = reg_399;
assign bitcast_ln192_fu_782_p1 = reg_403;
assign bitcast_ln198_fu_787_p1 = reg_407;
assign bitcast_ln205_fu_792_p1 = reg_411;
assign bitcast_ln211_fu_797_p1 = reg_415;
assign bitcast_ln218_fu_812_p1 = reg_407;
assign bitcast_ln224_fu_817_p1 = reg_411;
assign bitcast_ln231_fu_822_p1 = reg_403;
assign bitcast_ln237_fu_827_p1 = reg_395;
assign bitcast_ln244_fu_832_p1 = reg_399;
assign bitcast_ln250_fu_837_p1 = reg_415;
assign bitcast_ln257_fu_842_p1 = reg_395;
assign bitcast_ln263_fu_847_p1 = reg_399;
assign bitcast_ln270_fu_852_p1 = reg_403;
assign bitcast_ln276_fu_857_p1 = v206_reg_1277;
assign bitcast_ln283_fu_861_p1 = v212_reg_1282;
assign bitcast_ln289_fu_865_p1 = v217_reg_1287;
assign grp_fu_5224_p_ce = 1'b1;
assign grp_fu_5224_p_din0 = grp_fu_371_p0;
assign grp_fu_5224_p_din1 = grp_fu_371_p1;
assign grp_fu_5224_p_opcode = 2'd0;
assign grp_fu_5228_p_ce = 1'b1;
assign grp_fu_5228_p_din0 = grp_fu_375_p0;
assign grp_fu_5228_p_din1 = grp_fu_375_p1;
assign grp_fu_5228_p_opcode = 2'd0;
assign grp_fu_5232_p_ce = 1'b1;
assign grp_fu_5232_p_din0 = grp_fu_379_p0;
assign grp_fu_5232_p_din1 = grp_fu_379_p1;
assign grp_fu_5232_p_opcode = 2'd0;
assign grp_fu_5236_p_ce = 1'b1;
assign grp_fu_5236_p_din0 = grp_fu_383_p0;
assign grp_fu_5236_p_din1 = grp_fu_383_p1;
assign grp_fu_5240_p_ce = 1'b1;
assign grp_fu_5240_p_din0 = grp_fu_387_p0;
assign grp_fu_5240_p_din1 = grp_fu_387_p1;
assign grp_fu_5244_p_ce = 1'b1;
assign grp_fu_5244_p_din0 = grp_fu_391_p0;
assign grp_fu_5244_p_din1 = grp_fu_391_p1;
assign icmp_ln170_fu_427_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_2_fu_494_p3 = {{tmp_s_fu_484_p4}, {1'd1}};
assign tmp_s_fu_484_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_638_p1 = v225_2_load_8_reg_1043;
assign v118_fu_641_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_638_p1);
assign v121_fu_612_p1 = v227_load_4_reg_1048;
assign v124_fu_553_p1 = v225_2_q0;
assign v125_fu_557_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_553_p1);
assign v127_fu_564_p1 = v227_q0;
assign v130_fu_568_p1 = v225_3_q1;
assign v131_fu_572_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_568_p1);
assign v136_fu_579_p1 = v225_3_q0;
assign v137_fu_583_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_579_p1);
assign v141_fu_590_p1 = v225_0_q1;
assign v142_fu_594_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_590_p1);
assign v147_fu_601_p1 = v225_0_q0;
assign v148_fu_605_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_601_p1);
assign v152_fu_661_p1 = v225_1_q1;
assign v153_fu_665_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_661_p1);
assign v158_fu_672_p1 = v225_1_q0;
assign v159_fu_676_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_672_p1);
assign v163_fu_617_p1 = v225_2_q1;
assign v164_fu_621_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_617_p1);
assign v169_fu_683_p1 = v225_2_q0;
assign v170_fu_687_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_683_p1);
assign v174_fu_694_p1 = v225_3_q1;
assign v175_fu_698_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_694_p1);
assign v180_fu_705_p1 = v225_3_q0;
assign v181_fu_709_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_705_p1);
assign v185_fu_716_p1 = v225_0_q1;
assign v186_fu_720_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_716_p1);
assign v191_fu_727_p1 = v225_0_q0;
assign v192_fu_731_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_727_p1);
assign v196_fu_738_p1 = v225_1_q1;
assign v197_fu_742_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_738_p1);
assign v202_fu_749_p1 = v225_1_q0;
assign v203_fu_753_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_749_p1);
assign v207_fu_760_p1 = v225_2_q1;
assign v208_fu_764_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_760_p1);
assign v213_fu_771_p1 = v225_2_q0;
assign v214_fu_775_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_771_p1);
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
assign v227_address0 = zext_ln182_12_fu_516_p1;
assign v227_address1 = zext_ln175_12_fu_447_p1;
assign v227_ce0 = v227_ce0_local;
assign v227_ce1 = v227_ce1_local;
assign zext_ln171_fu_478_p1 = add_ln171_fu_472_p2;
assign zext_ln175_11_fu_437_p1 = ap_sig_allocacmp_v116;
assign zext_ln175_12_fu_447_p1 = add_ln175_fu_441_p2;
assign zext_ln175_fu_433_p1 = ap_sig_allocacmp_v116;
assign zext_ln179_fu_547_p1 = add_ln179_fu_541_p2;
assign zext_ln182_11_fu_506_p1 = or_ln179_2_fu_494_p3;
assign zext_ln182_12_fu_516_p1 = add_ln182_fu_510_p2;
assign zext_ln182_fu_502_p1 = or_ln179_2_fu_494_p3;
assign zext_ln199_fu_458_p1 = add_ln199_fu_452_p2;
assign zext_ln206_fu_527_p1 = add_ln206_fu_521_p2;
assign zext_ln251_fu_649_p1 = add_ln251_reg_971_pp0_iter1_reg;
assign zext_ln258_fu_655_p1 = add_ln258_reg_1012_pp0_iter1_reg;
endmodule 