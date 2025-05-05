module kernel_2mm_kernel_2mm_node1_Pipeline_label_56 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,phi_mul,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,mul_ln171_1,mul_ln225_1,mul_ln277_1,cmp11,v120_4,v133_4,v144_4,v155_4,v166_4,v177_4,v188_4,v199_4,v210_4,grp_fu_5224_p_din0,grp_fu_5224_p_din1,grp_fu_5224_p_opcode,grp_fu_5224_p_dout0,grp_fu_5224_p_ce,grp_fu_5228_p_din0,grp_fu_5228_p_din1,grp_fu_5228_p_opcode,grp_fu_5228_p_dout0,grp_fu_5228_p_ce,grp_fu_5232_p_din0,grp_fu_5232_p_din1,grp_fu_5232_p_opcode,grp_fu_5232_p_dout0,grp_fu_5232_p_ce,grp_fu_5236_p_din0,grp_fu_5236_p_din1,grp_fu_5236_p_dout0,grp_fu_5236_p_ce,grp_fu_5240_p_din0,grp_fu_5240_p_din1,grp_fu_5240_p_dout0,grp_fu_5240_p_ce,grp_fu_5244_p_din0,grp_fu_5244_p_din1,grp_fu_5244_p_dout0,grp_fu_5244_p_ce); 
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
input  [13:0] mul_ln171_1;
input  [13:0] mul_ln225_1;
input  [13:0] mul_ln277_1;
input  [0:0] cmp11;
input  [31:0] v120_4;
input  [31:0] v133_4;
input  [31:0] v144_4;
input  [31:0] v155_4;
input  [31:0] v166_4;
input  [31:0] v177_4;
input  [31:0] v188_4;
input  [31:0] v199_4;
input  [31:0] v210_4;
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
reg   [0:0] icmp_ln170_reg_964;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_398;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_402;
reg   [31:0] reg_406;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_410;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_414;
reg   [31:0] reg_418;
reg   [7:0] v116_4_reg_959;
wire   [0:0] icmp_ln170_fu_430_p2;
wire   [13:0] zext_ln175_fu_436_p1;
reg   [13:0] zext_ln175_reg_968;
reg   [13:0] v225_0_addr_reg_979;
reg   [13:0] v225_0_addr_reg_979_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_979_pp0_iter2_reg;
reg   [13:0] v225_1_addr_reg_984;
reg   [13:0] v225_1_addr_reg_984_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_984_pp0_iter2_reg;
reg   [13:0] v225_2_addr_reg_989;
reg   [13:0] v225_2_addr_reg_989_pp0_iter1_reg;
reg   [13:0] v225_2_addr_reg_989_pp0_iter2_reg;
reg   [13:0] v225_3_addr_reg_994;
reg   [13:0] v225_3_addr_reg_994_pp0_iter1_reg;
reg   [13:0] v225_3_addr_reg_994_pp0_iter2_reg;
wire   [13:0] zext_ln182_fu_487_p1;
reg   [13:0] zext_ln182_reg_1000;
reg   [13:0] zext_ln182_reg_1000_pp0_iter1_reg;
reg   [13:0] v225_0_addr_12_reg_1011;
reg   [13:0] v225_0_addr_12_reg_1011_pp0_iter1_reg;
reg   [13:0] v225_0_addr_12_reg_1011_pp0_iter2_reg;
reg   [13:0] v225_1_addr_13_reg_1016;
reg   [13:0] v225_1_addr_13_reg_1016_pp0_iter1_reg;
reg   [13:0] v225_1_addr_13_reg_1016_pp0_iter2_reg;
reg   [13:0] v225_2_addr_13_reg_1021;
reg   [13:0] v225_2_addr_13_reg_1021_pp0_iter1_reg;
reg   [13:0] v225_2_addr_13_reg_1021_pp0_iter2_reg;
reg   [13:0] v225_3_addr_13_reg_1026;
reg   [13:0] v225_3_addr_13_reg_1026_pp0_iter1_reg;
reg   [13:0] v225_3_addr_13_reg_1026_pp0_iter2_reg;
reg   [13:0] v225_0_addr_10_reg_1032;
reg   [13:0] v225_0_addr_10_reg_1032_pp0_iter1_reg;
reg   [13:0] v225_0_addr_10_reg_1032_pp0_iter2_reg;
wire   [13:0] add_ln277_fu_532_p2;
reg   [13:0] add_ln277_reg_1037;
reg   [13:0] add_ln277_reg_1037_pp0_iter1_reg;
reg   [13:0] v225_1_addr_12_reg_1042;
reg   [13:0] v225_1_addr_12_reg_1042_pp0_iter1_reg;
reg   [13:0] v225_1_addr_12_reg_1042_pp0_iter2_reg;
reg   [13:0] v225_2_addr_12_reg_1047;
reg   [13:0] v225_2_addr_12_reg_1047_pp0_iter1_reg;
reg   [13:0] v225_2_addr_12_reg_1047_pp0_iter2_reg;
reg   [13:0] v225_3_addr_12_reg_1052;
reg   [13:0] v225_3_addr_12_reg_1052_pp0_iter1_reg;
reg   [13:0] v225_3_addr_12_reg_1052_pp0_iter2_reg;
reg   [31:0] v225_0_load_reg_1057;
reg   [31:0] v227_load_reg_1062;
wire   [31:0] v125_fu_540_p3;
reg   [31:0] v125_reg_1067;
wire   [31:0] v127_fu_547_p1;
reg   [31:0] v127_reg_1072;
wire   [31:0] v131_fu_555_p3;
reg   [31:0] v131_reg_1079;
wire   [31:0] v137_fu_566_p3;
reg   [31:0] v137_reg_1084;
wire   [31:0] v142_fu_577_p3;
reg   [31:0] v142_reg_1089;
wire   [31:0] v148_fu_588_p3;
reg   [31:0] v148_reg_1094;
wire   [31:0] v121_fu_595_p1;
reg   [31:0] v121_reg_1099;
wire   [31:0] v164_fu_604_p3;
reg   [31:0] v164_reg_1106;
reg   [31:0] v122_reg_1111;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1116;
reg   [31:0] v134_reg_1121;
wire   [31:0] v118_fu_624_p3;
reg   [31:0] v139_reg_1131;
reg   [31:0] v145_reg_1136;
reg   [31:0] v150_reg_1141;
reg   [13:0] v225_0_addr_13_reg_1146;
reg   [13:0] v225_0_addr_13_reg_1146_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_644_p2;
reg   [13:0] add_ln284_reg_1151;
reg   [13:0] v225_1_addr_14_reg_1156;
reg   [13:0] v225_1_addr_14_reg_1156_pp0_iter2_reg;
reg   [13:0] v225_2_addr_14_reg_1161;
reg   [13:0] v225_2_addr_14_reg_1161_pp0_iter2_reg;
reg   [13:0] v225_3_addr_14_reg_1166;
reg   [13:0] v225_3_addr_14_reg_1166_pp0_iter2_reg;
reg   [13:0] v225_3_addr_14_reg_1166_pp0_iter3_reg;
wire   [31:0] v153_fu_652_p3;
reg   [31:0] v153_reg_1171;
reg   [31:0] v156_reg_1176;
wire   [31:0] v159_fu_663_p3;
reg   [31:0] v159_reg_1181;
reg   [31:0] v161_reg_1186;
reg   [31:0] v167_reg_1191;
reg   [13:0] v225_0_addr_11_reg_1196;
reg   [13:0] v225_0_addr_11_reg_1196_pp0_iter2_reg;
reg   [13:0] v225_0_addr_11_reg_1196_pp0_iter3_reg;
reg   [13:0] v225_0_addr_14_reg_1201;
reg   [13:0] v225_0_addr_14_reg_1201_pp0_iter2_reg;
reg   [13:0] v225_0_addr_14_reg_1201_pp0_iter3_reg;
wire   [31:0] v170_fu_682_p3;
reg   [31:0] v170_reg_1206;
reg   [31:0] v172_reg_1211;
wire   [31:0] v175_fu_693_p3;
reg   [31:0] v175_reg_1216;
reg   [31:0] v178_reg_1221;
wire   [31:0] v181_fu_704_p3;
reg   [31:0] v181_reg_1226;
reg   [31:0] v183_reg_1231;
wire   [31:0] v186_fu_715_p3;
reg   [31:0] v186_reg_1236;
wire   [31:0] v192_fu_726_p3;
reg   [31:0] v192_reg_1241;
wire   [31:0] v197_fu_737_p3;
reg   [31:0] v197_reg_1246;
wire   [31:0] v203_fu_748_p3;
reg   [31:0] v203_reg_1251;
reg   [31:0] v189_reg_1256;
reg   [31:0] v194_reg_1261;
reg   [31:0] v200_reg_1266;
wire   [31:0] v208_fu_759_p3;
reg   [31:0] v208_reg_1271;
wire   [31:0] v214_fu_770_p3;
reg   [31:0] v214_reg_1276;
reg   [31:0] v205_reg_1281;
reg   [31:0] v211_reg_1286;
reg   [31:0] v216_reg_1291;
reg   [31:0] v206_reg_1296;
reg   [31:0] v212_reg_1301;
reg   [31:0] v217_reg_1306;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_8_fu_450_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_461_p1;
wire   [63:0] zext_ln182_8_fu_501_p1;
wire   [63:0] zext_ln179_fu_512_p1;
wire   [63:0] zext_ln225_fu_524_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln232_fu_636_p1;
wire   [63:0] zext_ln277_fu_670_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_674_p1;
reg   [7:0] v116_fu_86;
wire   [7:0] add_ln170_fu_611_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_4;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_797_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_802_p1;
wire   [31:0] bitcast_ln231_fu_817_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_822_p1;
wire   [31:0] bitcast_ln283_fu_856_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_860_p1;
reg    v227_ce1_local;
reg    v227_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_777_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_782_p1;
wire   [31:0] bitcast_ln244_fu_827_p1;
wire   [31:0] bitcast_ln250_fu_832_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_787_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_792_p1;
wire   [31:0] bitcast_ln257_fu_837_p1;
wire   [31:0] bitcast_ln263_fu_842_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln218_fu_807_p1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln224_fu_812_p1;
wire   [31:0] bitcast_ln270_fu_847_p1;
wire   [31:0] bitcast_ln276_fu_852_p1;
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
reg   [31:0] grp_fu_394_p0;
reg   [31:0] grp_fu_394_p1;
wire   [15:0] zext_ln175_7_fu_440_p1;
wire   [15:0] add_ln175_fu_444_p2;
wire   [13:0] add_ln171_fu_455_p2;
wire   [6:0] tmp_s_fu_469_p4;
wire   [7:0] or_ln179_4_fu_479_p3;
wire   [15:0] zext_ln182_7_fu_491_p1;
wire   [15:0] add_ln182_fu_495_p2;
wire   [13:0] add_ln179_fu_506_p2;
wire   [13:0] add_ln225_fu_520_p2;
wire   [31:0] v124_fu_536_p1;
wire   [31:0] v130_fu_551_p1;
wire   [31:0] v136_fu_562_p1;
wire   [31:0] v141_fu_573_p1;
wire   [31:0] v147_fu_584_p1;
wire   [31:0] v163_fu_600_p1;
wire   [31:0] v117_fu_621_p1;
wire   [13:0] add_ln232_fu_632_p2;
wire   [31:0] v152_fu_648_p1;
wire   [31:0] v158_fu_659_p1;
wire   [31:0] v169_fu_678_p1;
wire   [31:0] v174_fu_689_p1;
wire   [31:0] v180_fu_700_p1;
wire   [31:0] v185_fu_711_p1;
wire   [31:0] v191_fu_722_p1;
wire   [31:0] v196_fu_733_p1;
wire   [31:0] v202_fu_744_p1;
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
#0 v116_fu_86 = 8'd0;
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
        v116_fu_86 <= 8'd0;
    end else if (((icmp_ln170_reg_964 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_86 <= add_ln170_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_1037 <= add_ln277_fu_532_p2;
        add_ln277_reg_1037_pp0_iter1_reg <= add_ln277_reg_1037;
        add_ln284_reg_1151 <= add_ln284_fu_644_p2;
        v125_reg_1067 <= v125_fu_540_p3;
        v127_reg_1072 <= v127_fu_547_p1;
        v131_reg_1079 <= v131_fu_555_p3;
        v137_reg_1084 <= v137_fu_566_p3;
        v142_reg_1089 <= v142_fu_577_p3;
        v148_reg_1094 <= v148_fu_588_p3;
        v153_reg_1171 <= v153_fu_652_p3;
        v159_reg_1181 <= v159_fu_663_p3;
        v225_0_addr_10_reg_1032 <= zext_ln225_fu_524_p1;
        v225_0_addr_10_reg_1032_pp0_iter1_reg <= v225_0_addr_10_reg_1032;
        v225_0_addr_10_reg_1032_pp0_iter2_reg <= v225_0_addr_10_reg_1032_pp0_iter1_reg;
        v225_0_addr_13_reg_1146 <= zext_ln232_fu_636_p1;
        v225_0_addr_13_reg_1146_pp0_iter2_reg <= v225_0_addr_13_reg_1146;
        v225_1_addr_12_reg_1042 <= zext_ln225_fu_524_p1;
        v225_1_addr_12_reg_1042_pp0_iter1_reg <= v225_1_addr_12_reg_1042;
        v225_1_addr_12_reg_1042_pp0_iter2_reg <= v225_1_addr_12_reg_1042_pp0_iter1_reg;
        v225_1_addr_14_reg_1156 <= zext_ln232_fu_636_p1;
        v225_1_addr_14_reg_1156_pp0_iter2_reg <= v225_1_addr_14_reg_1156;
        v225_2_addr_12_reg_1047 <= zext_ln225_fu_524_p1;
        v225_2_addr_12_reg_1047_pp0_iter1_reg <= v225_2_addr_12_reg_1047;
        v225_2_addr_12_reg_1047_pp0_iter2_reg <= v225_2_addr_12_reg_1047_pp0_iter1_reg;
        v225_2_addr_14_reg_1161 <= zext_ln232_fu_636_p1;
        v225_2_addr_14_reg_1161_pp0_iter2_reg <= v225_2_addr_14_reg_1161;
        v225_3_addr_12_reg_1052 <= zext_ln225_fu_524_p1;
        v225_3_addr_12_reg_1052_pp0_iter1_reg <= v225_3_addr_12_reg_1052;
        v225_3_addr_12_reg_1052_pp0_iter2_reg <= v225_3_addr_12_reg_1052_pp0_iter1_reg;
        v225_3_addr_14_reg_1166 <= zext_ln232_fu_636_p1;
        v225_3_addr_14_reg_1166_pp0_iter2_reg <= v225_3_addr_14_reg_1166;
        v225_3_addr_14_reg_1166_pp0_iter3_reg <= v225_3_addr_14_reg_1166_pp0_iter2_reg;
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
        icmp_ln170_reg_964 <= icmp_ln170_fu_430_p2;
        v116_4_reg_959 <= ap_sig_allocacmp_v116_4;
        v225_0_addr_12_reg_1011 <= zext_ln179_fu_512_p1;
        v225_0_addr_12_reg_1011_pp0_iter1_reg <= v225_0_addr_12_reg_1011;
        v225_0_addr_12_reg_1011_pp0_iter2_reg <= v225_0_addr_12_reg_1011_pp0_iter1_reg;
        v225_0_addr_reg_979 <= zext_ln171_fu_461_p1;
        v225_0_addr_reg_979_pp0_iter1_reg <= v225_0_addr_reg_979;
        v225_0_addr_reg_979_pp0_iter2_reg <= v225_0_addr_reg_979_pp0_iter1_reg;
        v225_1_addr_13_reg_1016 <= zext_ln179_fu_512_p1;
        v225_1_addr_13_reg_1016_pp0_iter1_reg <= v225_1_addr_13_reg_1016;
        v225_1_addr_13_reg_1016_pp0_iter2_reg <= v225_1_addr_13_reg_1016_pp0_iter1_reg;
        v225_1_addr_reg_984 <= zext_ln171_fu_461_p1;
        v225_1_addr_reg_984_pp0_iter1_reg <= v225_1_addr_reg_984;
        v225_1_addr_reg_984_pp0_iter2_reg <= v225_1_addr_reg_984_pp0_iter1_reg;
        v225_2_addr_13_reg_1021 <= zext_ln179_fu_512_p1;
        v225_2_addr_13_reg_1021_pp0_iter1_reg <= v225_2_addr_13_reg_1021;
        v225_2_addr_13_reg_1021_pp0_iter2_reg <= v225_2_addr_13_reg_1021_pp0_iter1_reg;
        v225_2_addr_reg_989 <= zext_ln171_fu_461_p1;
        v225_2_addr_reg_989_pp0_iter1_reg <= v225_2_addr_reg_989;
        v225_2_addr_reg_989_pp0_iter2_reg <= v225_2_addr_reg_989_pp0_iter1_reg;
        v225_3_addr_13_reg_1026 <= zext_ln179_fu_512_p1;
        v225_3_addr_13_reg_1026_pp0_iter1_reg <= v225_3_addr_13_reg_1026;
        v225_3_addr_13_reg_1026_pp0_iter2_reg <= v225_3_addr_13_reg_1026_pp0_iter1_reg;
        v225_3_addr_reg_994 <= zext_ln171_fu_461_p1;
        v225_3_addr_reg_994_pp0_iter1_reg <= v225_3_addr_reg_994;
        v225_3_addr_reg_994_pp0_iter2_reg <= v225_3_addr_reg_994_pp0_iter1_reg;
        zext_ln175_reg_968[7 : 0] <= zext_ln175_fu_436_p1[7 : 0];
        zext_ln182_reg_1000[7 : 1] <= zext_ln182_fu_487_p1[7 : 1];
        zext_ln182_reg_1000_pp0_iter1_reg[7 : 1] <= zext_ln182_reg_1000[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_398 <= grp_fu_5224_p_dout0;
        reg_402 <= grp_fu_5228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_406 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_410 <= grp_fu_5224_p_dout0;
        reg_414 <= grp_fu_5228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_418 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1099 <= v121_fu_595_p1;
        v164_reg_1106 <= v164_fu_604_p3;
        v170_reg_1206 <= v170_fu_682_p3;
        v175_reg_1216 <= v175_fu_693_p3;
        v181_reg_1226 <= v181_fu_704_p3;
        v186_reg_1236 <= v186_fu_715_p3;
        v192_reg_1241 <= v192_fu_726_p3;
        v197_reg_1246 <= v197_fu_737_p3;
        v203_reg_1251 <= v203_fu_748_p3;
        v225_0_addr_11_reg_1196 <= zext_ln277_fu_670_p1;
        v225_0_addr_11_reg_1196_pp0_iter2_reg <= v225_0_addr_11_reg_1196;
        v225_0_addr_11_reg_1196_pp0_iter3_reg <= v225_0_addr_11_reg_1196_pp0_iter2_reg;
        v225_0_addr_14_reg_1201 <= zext_ln284_fu_674_p1;
        v225_0_addr_14_reg_1201_pp0_iter2_reg <= v225_0_addr_14_reg_1201;
        v225_0_addr_14_reg_1201_pp0_iter3_reg <= v225_0_addr_14_reg_1201_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1111 <= grp_fu_5236_p_dout0;
        v128_reg_1116 <= grp_fu_5240_p_dout0;
        v134_reg_1121 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1131 <= grp_fu_5236_p_dout0;
        v145_reg_1136 <= grp_fu_5240_p_dout0;
        v150_reg_1141 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1176 <= grp_fu_5236_p_dout0;
        v161_reg_1186 <= grp_fu_5240_p_dout0;
        v167_reg_1191 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1211 <= grp_fu_5236_p_dout0;
        v178_reg_1221 <= grp_fu_5240_p_dout0;
        v183_reg_1231 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1256 <= grp_fu_5236_p_dout0;
        v194_reg_1261 <= grp_fu_5240_p_dout0;
        v200_reg_1266 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1281 <= grp_fu_5236_p_dout0;
        v211_reg_1286 <= grp_fu_5240_p_dout0;
        v216_reg_1291 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1296 <= grp_fu_5224_p_dout0;
        v212_reg_1301 <= grp_fu_5228_p_dout0;
        v217_reg_1306 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1271 <= v208_fu_759_p3;
        v214_reg_1276 <= v214_fu_770_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_reg_1057 <= v225_0_q1;
        v227_load_reg_1062 <= v227_q1;
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
        ap_sig_allocacmp_v116_4 = v116_fu_86;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_374_p0 = v203_reg_1251;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_374_p0 = v186_reg_1236;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_374_p0 = v170_reg_1206;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_374_p0 = v153_reg_1171;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_374_p0 = v137_reg_1084;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_374_p0 = v118_fu_624_p3;
        end else begin
            grp_fu_374_p0 = 'bx;
        end
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_374_p1 = v205_reg_1281;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_374_p1 = v189_reg_1256;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_374_p1 = v172_reg_1211;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_374_p1 = v156_reg_1176;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_374_p1 = v139_reg_1131;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_374_p1 = v122_reg_1111;
        end else begin
            grp_fu_374_p1 = 'bx;
        end
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_378_p0 = v208_reg_1271;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_378_p0 = v192_reg_1241;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_378_p0 = v175_reg_1216;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_378_p0 = v159_reg_1181;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_378_p0 = v142_reg_1089;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_378_p0 = v125_reg_1067;
        end else begin
            grp_fu_378_p0 = 'bx;
        end
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_378_p1 = v211_reg_1286;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_378_p1 = v194_reg_1261;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_378_p1 = v178_reg_1221;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_378_p1 = v161_reg_1186;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_378_p1 = v145_reg_1136;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_378_p1 = v128_reg_1116;
        end else begin
            grp_fu_378_p1 = 'bx;
        end
    end else begin
        grp_fu_378_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_382_p0 = v214_reg_1276;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_382_p0 = v197_reg_1246;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_382_p0 = v181_reg_1226;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_382_p0 = v164_reg_1106;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_382_p0 = v148_reg_1094;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_382_p0 = v131_reg_1079;
        end else begin
            grp_fu_382_p0 = 'bx;
        end
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_382_p1 = v216_reg_1291;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_382_p1 = v200_reg_1266;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_382_p1 = v183_reg_1231;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_382_p1 = v167_reg_1191;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_382_p1 = v150_reg_1141;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_382_p1 = v134_reg_1121;
        end else begin
            grp_fu_382_p1 = 'bx;
        end
    end else begin
        grp_fu_382_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_386_p0 = v199_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_386_p0 = v188_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_386_p0 = v166_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_386_p0 = v155_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_386_p0 = v133_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_386_p0 = v120_4;
    end else begin
        grp_fu_386_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_386_p1 = v121_reg_1099;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_386_p1 = v127_reg_1072;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_386_p1 = v121_fu_595_p1;
    end else begin
        grp_fu_386_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_390_p0 = v210_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_390_p0 = v188_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_390_p0 = v177_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_390_p0 = v155_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_390_p0 = v144_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_390_p0 = v120_4;
    end else begin
        grp_fu_390_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_390_p1 = v121_reg_1099;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_390_p1 = v127_reg_1072;
    end else begin
        grp_fu_390_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_394_p0 = v210_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_394_p0 = v199_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_394_p0 = v177_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_394_p0 = v166_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_394_p0 = v144_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_394_p0 = v133_4;
    end else begin
        grp_fu_394_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_394_p1 = v121_reg_1099;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_394_p1 = v127_reg_1072;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_394_p1 = v121_fu_595_p1;
    end else begin
        grp_fu_394_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_14_reg_1201_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_13_reg_1146_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_12_reg_1011_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_512_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_11_reg_1196_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_10_reg_1032_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_reg_979_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_461_p1;
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
        v225_0_d0_local = bitcast_ln289_fu_860_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln237_fu_822_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_802_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln283_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln231_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln178_fu_797_p1;
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
        v225_1_address0_local = v225_1_addr_14_reg_1156_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_13_reg_1016_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_512_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_12_reg_1042_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_reg_984_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_12_reg_1042;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_461_p1;
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
            v225_1_d0_local = bitcast_ln250_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln198_fu_782_p1;
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
            v225_1_d1_local = bitcast_ln244_fu_827_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln192_fu_777_p1;
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
        v225_2_address0_local = v225_2_addr_14_reg_1161_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_13_reg_1021_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_512_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_12_reg_1047_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_reg_989_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_12_reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_461_p1;
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
            v225_2_d0_local = bitcast_ln263_fu_842_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln211_fu_792_p1;
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
            v225_2_d1_local = bitcast_ln257_fu_837_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln205_fu_787_p1;
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
        v225_3_address0_local = v225_3_addr_14_reg_1166_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_reg_994_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_13_reg_1026;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_12_reg_1052_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_13_reg_1026_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_12_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_reg_994;
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
        v225_3_d0_local = bitcast_ln276_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln218_fu_807_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln270_fu_847_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln224_fu_812_p1;
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
assign add_ln170_fu_611_p2 = (v116_4_reg_959 + 8'd2);
assign add_ln171_fu_455_p2 = (mul_ln171_1 + zext_ln175_fu_436_p1);
assign add_ln175_fu_444_p2 = (phi_mul + zext_ln175_7_fu_440_p1);
assign add_ln179_fu_506_p2 = (mul_ln171_1 + zext_ln182_fu_487_p1);
assign add_ln182_fu_495_p2 = (phi_mul + zext_ln182_7_fu_491_p1);
assign add_ln225_fu_520_p2 = (mul_ln225_1 + zext_ln175_reg_968);
assign add_ln232_fu_632_p2 = (mul_ln225_1 + zext_ln182_reg_1000_pp0_iter1_reg);
assign add_ln277_fu_532_p2 = (mul_ln277_1 + zext_ln175_reg_968);
assign add_ln284_fu_644_p2 = (mul_ln277_1 + zext_ln182_reg_1000_pp0_iter1_reg);
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
assign bitcast_ln178_fu_797_p1 = reg_398;
assign bitcast_ln185_fu_802_p1 = reg_402;
assign bitcast_ln192_fu_777_p1 = reg_406;
assign bitcast_ln198_fu_782_p1 = reg_410;
assign bitcast_ln205_fu_787_p1 = reg_414;
assign bitcast_ln211_fu_792_p1 = reg_418;
assign bitcast_ln218_fu_807_p1 = reg_410;
assign bitcast_ln224_fu_812_p1 = reg_414;
assign bitcast_ln231_fu_817_p1 = reg_406;
assign bitcast_ln237_fu_822_p1 = reg_398;
assign bitcast_ln244_fu_827_p1 = reg_402;
assign bitcast_ln250_fu_832_p1 = reg_418;
assign bitcast_ln257_fu_837_p1 = reg_398;
assign bitcast_ln263_fu_842_p1 = reg_402;
assign bitcast_ln270_fu_847_p1 = reg_406;
assign bitcast_ln276_fu_852_p1 = v206_reg_1296;
assign bitcast_ln283_fu_856_p1 = v212_reg_1301;
assign bitcast_ln289_fu_860_p1 = v217_reg_1306;
assign grp_fu_5224_p_ce = 1'b1;
assign grp_fu_5224_p_din0 = grp_fu_374_p0;
assign grp_fu_5224_p_din1 = grp_fu_374_p1;
assign grp_fu_5224_p_opcode = 2'd0;
assign grp_fu_5228_p_ce = 1'b1;
assign grp_fu_5228_p_din0 = grp_fu_378_p0;
assign grp_fu_5228_p_din1 = grp_fu_378_p1;
assign grp_fu_5228_p_opcode = 2'd0;
assign grp_fu_5232_p_ce = 1'b1;
assign grp_fu_5232_p_din0 = grp_fu_382_p0;
assign grp_fu_5232_p_din1 = grp_fu_382_p1;
assign grp_fu_5232_p_opcode = 2'd0;
assign grp_fu_5236_p_ce = 1'b1;
assign grp_fu_5236_p_din0 = grp_fu_386_p0;
assign grp_fu_5236_p_din1 = grp_fu_386_p1;
assign grp_fu_5240_p_ce = 1'b1;
assign grp_fu_5240_p_din0 = grp_fu_390_p0;
assign grp_fu_5240_p_din1 = grp_fu_390_p1;
assign grp_fu_5244_p_ce = 1'b1;
assign grp_fu_5244_p_din0 = grp_fu_394_p0;
assign grp_fu_5244_p_din1 = grp_fu_394_p1;
assign icmp_ln170_fu_430_p2 = ((ap_sig_allocacmp_v116_4 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_4_fu_479_p3 = {{tmp_s_fu_469_p4}, {1'd1}};
assign tmp_s_fu_469_p4 = {{ap_sig_allocacmp_v116_4[7:1]}};
assign v117_fu_621_p1 = v225_0_load_reg_1057;
assign v118_fu_624_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_621_p1);
assign v121_fu_595_p1 = v227_load_reg_1062;
assign v124_fu_536_p1 = v225_0_q0;
assign v125_fu_540_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_536_p1);
assign v127_fu_547_p1 = v227_q0;
assign v130_fu_551_p1 = v225_1_q1;
assign v131_fu_555_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_551_p1);
assign v136_fu_562_p1 = v225_1_q0;
assign v137_fu_566_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_562_p1);
assign v141_fu_573_p1 = v225_2_q1;
assign v142_fu_577_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_573_p1);
assign v147_fu_584_p1 = v225_2_q0;
assign v148_fu_588_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_584_p1);
assign v152_fu_648_p1 = v225_3_q1;
assign v153_fu_652_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_648_p1);
assign v158_fu_659_p1 = v225_3_q0;
assign v159_fu_663_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_659_p1);
assign v163_fu_600_p1 = v225_0_q1;
assign v164_fu_604_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_600_p1);
assign v169_fu_678_p1 = v225_0_q0;
assign v170_fu_682_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_678_p1);
assign v174_fu_689_p1 = v225_1_q1;
assign v175_fu_693_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_689_p1);
assign v180_fu_700_p1 = v225_1_q0;
assign v181_fu_704_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_700_p1);
assign v185_fu_711_p1 = v225_2_q1;
assign v186_fu_715_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_711_p1);
assign v191_fu_722_p1 = v225_2_q0;
assign v192_fu_726_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_722_p1);
assign v196_fu_733_p1 = v225_3_q1;
assign v197_fu_737_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_733_p1);
assign v202_fu_744_p1 = v225_3_q0;
assign v203_fu_748_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_744_p1);
assign v207_fu_755_p1 = v225_0_q1;
assign v208_fu_759_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_755_p1);
assign v213_fu_766_p1 = v225_0_q0;
assign v214_fu_770_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_766_p1);
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
assign v227_address0 = zext_ln182_8_fu_501_p1;
assign v227_address1 = zext_ln175_8_fu_450_p1;
assign v227_ce0 = v227_ce0_local;
assign v227_ce1 = v227_ce1_local;
assign zext_ln171_fu_461_p1 = add_ln171_fu_455_p2;
assign zext_ln175_7_fu_440_p1 = ap_sig_allocacmp_v116_4;
assign zext_ln175_8_fu_450_p1 = add_ln175_fu_444_p2;
assign zext_ln175_fu_436_p1 = ap_sig_allocacmp_v116_4;
assign zext_ln179_fu_512_p1 = add_ln179_fu_506_p2;
assign zext_ln182_7_fu_491_p1 = or_ln179_4_fu_479_p3;
assign zext_ln182_8_fu_501_p1 = add_ln182_fu_495_p2;
assign zext_ln182_fu_487_p1 = or_ln179_4_fu_479_p3;
assign zext_ln225_fu_524_p1 = add_ln225_fu_520_p2;
assign zext_ln232_fu_636_p1 = add_ln232_fu_632_p2;
assign zext_ln277_fu_670_p1 = add_ln277_reg_1037_pp0_iter1_reg;
assign zext_ln284_fu_674_p1 = add_ln284_reg_1151;
always @ (posedge ap_clk) begin
    zext_ln175_reg_968[13:8] <= 6'b000000;
    zext_ln182_reg_1000[0] <= 1'b1;
    zext_ln182_reg_1000[13:8] <= 6'b000000;
    zext_ln182_reg_1000_pp0_iter1_reg[0] <= 1'b1;
    zext_ln182_reg_1000_pp0_iter1_reg[13:8] <= 6'b000000;
end
endmodule 