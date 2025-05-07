module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,phi_mul,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,mul_ln171,mul_ln199,mul_ln225,mul_ln251,mul_ln277,cmp11,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_4587_p_din0,grp_fu_4587_p_din1,grp_fu_4587_p_opcode,grp_fu_4587_p_dout0,grp_fu_4587_p_ce,grp_fu_4591_p_din0,grp_fu_4591_p_din1,grp_fu_4591_p_opcode,grp_fu_4591_p_dout0,grp_fu_4591_p_ce,grp_fu_4595_p_din0,grp_fu_4595_p_din1,grp_fu_4595_p_dout0,grp_fu_4595_p_ce,grp_fu_4599_p_din0,grp_fu_4599_p_din1,grp_fu_4599_p_dout0,grp_fu_4599_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [14:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [14:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [14:0] v225_0_address1;
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
input  [13:0] mul_ln171;
input  [14:0] mul_ln199;
input  [14:0] mul_ln225;
input  [14:0] mul_ln251;
input  [14:0] mul_ln277;
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
output  [31:0] grp_fu_4587_p_din0;
output  [31:0] grp_fu_4587_p_din1;
output  [1:0] grp_fu_4587_p_opcode;
input  [31:0] grp_fu_4587_p_dout0;
output   grp_fu_4587_p_ce;
output  [31:0] grp_fu_4591_p_din0;
output  [31:0] grp_fu_4591_p_din1;
output  [1:0] grp_fu_4591_p_opcode;
input  [31:0] grp_fu_4591_p_dout0;
output   grp_fu_4591_p_ce;
output  [31:0] grp_fu_4595_p_din0;
output  [31:0] grp_fu_4595_p_din1;
input  [31:0] grp_fu_4595_p_dout0;
output   grp_fu_4595_p_ce;
output  [31:0] grp_fu_4599_p_din0;
output  [31:0] grp_fu_4599_p_din1;
input  [31:0] grp_fu_4599_p_dout0;
output   grp_fu_4599_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] icmp_ln170_reg_993;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_391;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [31:0] reg_395;
reg   [31:0] reg_399;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_403;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v116_5_reg_987;
wire   [0:0] icmp_ln170_fu_415_p2;
reg   [0:0] icmp_ln170_reg_993_pp0_iter1_reg;
reg   [14:0] v225_0_addr_1_reg_1002;
reg   [14:0] v225_0_addr_1_reg_1002_pp0_iter1_reg;
reg   [14:0] v225_1_addr_1_reg_1007;
reg   [14:0] v225_1_addr_1_reg_1007_pp0_iter1_reg;
wire   [7:0] or_ln_fu_462_p3;
reg   [7:0] or_ln_reg_1012;
reg   [14:0] v225_0_addr_2_reg_1022;
reg   [14:0] v225_0_addr_2_reg_1022_pp0_iter1_reg;
reg   [14:0] v225_1_addr_2_reg_1027;
reg   [14:0] v225_1_addr_2_reg_1027_pp0_iter1_reg;
wire   [14:0] zext_ln175_fu_501_p1;
reg   [14:0] zext_ln175_reg_1032;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [14:0] v225_0_addr_3_reg_1039;
reg   [14:0] v225_0_addr_3_reg_1039_pp0_iter1_reg;
reg   [14:0] v225_1_addr_3_reg_1044;
reg   [14:0] v225_1_addr_3_reg_1044_pp0_iter1_reg;
reg   [31:0] v225_0_load_reg_1049;
reg   [31:0] v227_load_reg_1054;
wire   [14:0] zext_ln182_fu_515_p1;
reg   [14:0] zext_ln182_reg_1059;
reg   [14:0] v225_0_addr_4_reg_1066;
reg   [14:0] v225_0_addr_4_reg_1066_pp0_iter1_reg;
reg   [14:0] v225_1_addr_4_reg_1071;
reg   [14:0] v225_1_addr_4_reg_1071_pp0_iter1_reg;
reg   [31:0] v225_0_load_1_reg_1076;
reg   [31:0] v227_load_1_reg_1081;
reg   [31:0] v225_1_load_reg_1086;
reg   [31:0] v225_1_load_1_reg_1091;
reg   [14:0] v225_0_addr_5_reg_1096;
reg   [14:0] v225_0_addr_5_reg_1096_pp0_iter1_reg;
reg   [14:0] v225_1_addr_5_reg_1101;
reg   [14:0] v225_1_addr_5_reg_1101_pp0_iter1_reg;
wire   [31:0] v121_fu_539_p1;
reg   [31:0] v121_reg_1106;
reg   [14:0] v225_0_addr_6_reg_1111;
reg   [14:0] v225_0_addr_6_reg_1111_pp0_iter1_reg;
reg   [14:0] v225_1_addr_6_reg_1116;
reg   [14:0] v225_1_addr_6_reg_1116_pp0_iter1_reg;
wire   [31:0] v127_fu_553_p1;
reg   [31:0] v127_reg_1121;
reg   [31:0] v225_0_load_2_reg_1126;
reg   [31:0] v225_0_load_3_reg_1131;
reg   [31:0] v225_1_load_2_reg_1136;
wire   [31:0] v159_fu_561_p3;
reg   [31:0] v159_reg_1141;
reg   [14:0] v225_0_addr_7_reg_1146;
reg   [14:0] v225_0_addr_7_reg_1146_pp0_iter1_reg;
wire   [14:0] add_ln277_fu_578_p2;
reg   [14:0] add_ln277_reg_1151;
reg   [14:0] v225_1_addr_7_reg_1156;
reg   [14:0] v225_1_addr_7_reg_1156_pp0_iter1_reg;
reg   [14:0] v225_1_addr_7_reg_1156_pp0_iter2_reg;
reg   [14:0] v225_0_addr_8_reg_1161;
reg   [14:0] v225_0_addr_8_reg_1161_pp0_iter1_reg;
wire   [14:0] add_ln284_fu_592_p2;
reg   [14:0] add_ln284_reg_1166;
reg   [14:0] v225_1_addr_8_reg_1171;
reg   [14:0] v225_1_addr_8_reg_1171_pp0_iter1_reg;
reg   [14:0] v225_1_addr_8_reg_1171_pp0_iter2_reg;
wire   [31:0] v164_fu_600_p3;
reg   [31:0] v164_reg_1176;
wire   [31:0] v170_fu_611_p3;
reg   [31:0] v170_reg_1181;
wire   [31:0] v175_fu_622_p3;
reg   [31:0] v175_reg_1186;
wire   [31:0] v181_fu_633_p3;
reg   [31:0] v181_reg_1191;
reg   [14:0] v225_0_addr_9_reg_1196;
reg   [14:0] v225_0_addr_9_reg_1196_pp0_iter1_reg;
reg   [14:0] v225_0_addr_9_reg_1196_pp0_iter2_reg;
reg   [14:0] v225_0_addr_10_reg_1201;
reg   [14:0] v225_0_addr_10_reg_1201_pp0_iter1_reg;
reg   [14:0] v225_0_addr_10_reg_1201_pp0_iter2_reg;
wire   [31:0] v186_fu_652_p3;
reg   [31:0] v186_reg_1206;
wire   [31:0] v192_fu_663_p3;
reg   [31:0] v192_reg_1211;
wire   [31:0] v197_fu_674_p3;
reg   [31:0] v197_reg_1216;
wire   [31:0] v203_fu_685_p3;
reg   [31:0] v203_reg_1221;
wire   [31:0] v118_fu_695_p3;
reg   [31:0] v118_reg_1226;
reg   [31:0] v122_reg_1231;
wire   [31:0] v125_fu_705_p3;
reg   [31:0] v125_reg_1236;
reg   [31:0] v128_reg_1241;
wire   [31:0] v131_fu_715_p3;
reg   [31:0] v131_reg_1246;
wire   [31:0] v137_fu_725_p3;
reg   [31:0] v137_reg_1251;
wire   [31:0] v142_fu_735_p3;
reg   [31:0] v142_reg_1256;
wire   [31:0] v148_fu_745_p3;
reg   [31:0] v148_reg_1261;
wire   [31:0] v153_fu_755_p3;
reg   [31:0] v153_reg_1266;
wire   [31:0] v208_fu_766_p3;
reg   [31:0] v208_reg_1271;
wire   [31:0] v214_fu_777_p3;
reg   [31:0] v214_reg_1276;
reg   [31:0] v134_reg_1281;
reg   [31:0] v139_reg_1286;
reg   [31:0] v145_reg_1291;
reg   [31:0] v150_reg_1296;
reg   [31:0] v156_reg_1301;
reg   [31:0] v161_reg_1306;
reg   [31:0] v167_reg_1311;
wire    ap_block_pp0_stage9_11001;
reg   [31:0] v172_reg_1316;
reg   [31:0] v178_reg_1321;
reg   [31:0] v183_reg_1326;
reg   [31:0] v189_reg_1331;
reg   [31:0] v194_reg_1336;
reg   [31:0] v200_reg_1341;
reg   [31:0] v205_reg_1346;
reg   [31:0] v211_reg_1351;
reg   [31:0] v216_reg_1356;
reg   [31:0] v201_reg_1361;
reg   [31:0] v206_reg_1366;
reg   [31:0] v212_reg_1371;
reg   [31:0] v217_reg_1376;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln175_17_fu_435_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_446_p1;
wire   [63:0] zext_ln182_17_fu_484_p1;
wire   [63:0] zext_ln179_fu_495_p1;
wire   [63:0] zext_ln199_fu_509_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln206_fu_523_p1;
wire   [63:0] zext_ln225_fu_533_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln232_fu_547_p1;
wire   [63:0] zext_ln251_fu_572_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln258_fu_586_p1;
wire   [63:0] zext_ln277_fu_640_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln284_fu_644_p1;
reg   [7:0] v116_fu_88;
wire   [7:0] add_ln170_fu_784_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_5;
reg    v225_0_ce1_local;
reg   [14:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [14:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_804_p1;
wire    ap_block_pp0_stage5;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_809_p1;
wire   [31:0] bitcast_ln205_fu_814_p1;
wire    ap_block_pp0_stage6;
wire   [31:0] bitcast_ln211_fu_819_p1;
wire   [31:0] bitcast_ln231_fu_834_p1;
wire    ap_block_pp0_stage7;
wire   [31:0] bitcast_ln237_fu_839_p1;
wire   [31:0] bitcast_ln257_fu_854_p1;
wire    ap_block_pp0_stage9;
wire   [31:0] bitcast_ln263_fu_859_p1;
wire   [31:0] bitcast_ln283_fu_872_p1;
wire    ap_block_pp0_stage8;
wire   [31:0] bitcast_ln289_fu_876_p1;
reg    v227_ce1_local;
reg    v227_ce0_local;
reg    v225_1_ce1_local;
reg   [14:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [14:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_794_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_799_p1;
wire   [31:0] bitcast_ln218_fu_824_p1;
wire   [31:0] bitcast_ln224_fu_829_p1;
wire   [31:0] bitcast_ln244_fu_844_p1;
wire   [31:0] bitcast_ln250_fu_849_p1;
wire   [31:0] bitcast_ln270_fu_864_p1;
wire   [31:0] bitcast_ln276_fu_868_p1;
reg   [31:0] grp_fu_375_p0;
reg   [31:0] grp_fu_375_p1;
reg   [31:0] grp_fu_379_p0;
reg   [31:0] grp_fu_379_p1;
reg   [31:0] grp_fu_383_p0;
reg   [31:0] grp_fu_383_p1;
reg   [31:0] grp_fu_387_p0;
reg   [31:0] grp_fu_387_p1;
wire   [15:0] zext_ln175_16_fu_425_p1;
wire   [15:0] add_ln175_fu_429_p2;
wire   [13:0] zext_ln175_15_fu_421_p1;
wire   [13:0] add_ln171_fu_440_p2;
wire   [6:0] tmp_s_fu_452_p4;
wire   [15:0] zext_ln182_16_fu_474_p1;
wire   [15:0] add_ln182_fu_478_p2;
wire   [13:0] zext_ln182_15_fu_470_p1;
wire   [13:0] add_ln179_fu_489_p2;
wire   [14:0] add_ln199_fu_504_p2;
wire   [14:0] add_ln206_fu_518_p2;
wire   [14:0] add_ln225_fu_529_p2;
wire   [14:0] add_ln232_fu_543_p2;
wire   [31:0] v158_fu_557_p1;
wire   [14:0] add_ln251_fu_568_p2;
wire   [14:0] add_ln258_fu_582_p2;
wire   [31:0] v163_fu_596_p1;
wire   [31:0] v169_fu_607_p1;
wire   [31:0] v174_fu_618_p1;
wire   [31:0] v180_fu_629_p1;
wire   [31:0] v185_fu_648_p1;
wire   [31:0] v191_fu_659_p1;
wire   [31:0] v196_fu_670_p1;
wire   [31:0] v202_fu_681_p1;
wire   [31:0] v117_fu_692_p1;
wire   [31:0] v124_fu_702_p1;
wire   [31:0] v130_fu_712_p1;
wire   [31:0] v136_fu_722_p1;
wire   [31:0] v141_fu_732_p1;
wire   [31:0] v147_fu_742_p1;
wire   [31:0] v152_fu_752_p1;
wire   [31:0] v207_fu_762_p1;
wire   [31:0] v213_fu_773_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage8;
reg    ap_idle_pp0_0to0;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_fu_88 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_fu_88 <= 8'd0;
    end else if (((icmp_ln170_reg_993 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v116_fu_88 <= add_ln170_fu_784_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln277_reg_1151 <= add_ln277_fu_578_p2;
        add_ln284_reg_1166 <= add_ln284_fu_592_p2;
        v164_reg_1176 <= v164_fu_600_p3;
        v170_reg_1181 <= v170_fu_611_p3;
        v175_reg_1186 <= v175_fu_622_p3;
        v181_reg_1191 <= v181_fu_633_p3;
        v225_0_addr_7_reg_1146 <= zext_ln251_fu_572_p1;
        v225_0_addr_7_reg_1146_pp0_iter1_reg <= v225_0_addr_7_reg_1146;
        v225_0_addr_8_reg_1161 <= zext_ln258_fu_586_p1;
        v225_0_addr_8_reg_1161_pp0_iter1_reg <= v225_0_addr_8_reg_1161;
        v225_1_addr_7_reg_1156 <= zext_ln251_fu_572_p1;
        v225_1_addr_7_reg_1156_pp0_iter1_reg <= v225_1_addr_7_reg_1156;
        v225_1_addr_7_reg_1156_pp0_iter2_reg <= v225_1_addr_7_reg_1156_pp0_iter1_reg;
        v225_1_addr_8_reg_1171 <= zext_ln258_fu_586_p1;
        v225_1_addr_8_reg_1171_pp0_iter1_reg <= v225_1_addr_8_reg_1171;
        v225_1_addr_8_reg_1171_pp0_iter2_reg <= v225_1_addr_8_reg_1171_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln170_reg_993 <= icmp_ln170_fu_415_p2;
        icmp_ln170_reg_993_pp0_iter1_reg <= icmp_ln170_reg_993;
        or_ln_reg_1012[7 : 1] <= or_ln_fu_462_p3[7 : 1];
        v116_5_reg_987 <= ap_sig_allocacmp_v116_5;
        v225_0_addr_1_reg_1002[13 : 0] <= zext_ln171_fu_446_p1[13 : 0];
        v225_0_addr_1_reg_1002_pp0_iter1_reg[13 : 0] <= v225_0_addr_1_reg_1002[13 : 0];
        v225_0_addr_2_reg_1022[13 : 0] <= zext_ln179_fu_495_p1[13 : 0];
        v225_0_addr_2_reg_1022_pp0_iter1_reg[13 : 0] <= v225_0_addr_2_reg_1022[13 : 0];
        v225_1_addr_1_reg_1007[13 : 0] <= zext_ln171_fu_446_p1[13 : 0];
        v225_1_addr_1_reg_1007_pp0_iter1_reg[13 : 0] <= v225_1_addr_1_reg_1007[13 : 0];
        v225_1_addr_2_reg_1027[13 : 0] <= zext_ln179_fu_495_p1[13 : 0];
        v225_1_addr_2_reg_1027_pp0_iter1_reg[13 : 0] <= v225_1_addr_2_reg_1027[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_391 <= grp_fu_4587_p_dout0;
        reg_395 <= grp_fu_4591_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_399 <= grp_fu_4587_p_dout0;
        reg_403 <= grp_fu_4591_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v118_reg_1226 <= v118_fu_695_p3;
        v125_reg_1236 <= v125_fu_705_p3;
        v131_reg_1246 <= v131_fu_715_p3;
        v137_reg_1251 <= v137_fu_725_p3;
        v142_reg_1256 <= v142_fu_735_p3;
        v148_reg_1261 <= v148_fu_745_p3;
        v153_reg_1266 <= v153_fu_755_p3;
        v208_reg_1271 <= v208_fu_766_p3;
        v214_reg_1276 <= v214_fu_777_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1106 <= v121_fu_539_p1;
        v127_reg_1121 <= v127_fu_553_p1;
        v159_reg_1141 <= v159_fu_561_p3;
        v225_0_addr_5_reg_1096 <= zext_ln225_fu_533_p1;
        v225_0_addr_5_reg_1096_pp0_iter1_reg <= v225_0_addr_5_reg_1096;
        v225_0_addr_6_reg_1111 <= zext_ln232_fu_547_p1;
        v225_0_addr_6_reg_1111_pp0_iter1_reg <= v225_0_addr_6_reg_1111;
        v225_1_addr_5_reg_1101 <= zext_ln225_fu_533_p1;
        v225_1_addr_5_reg_1101_pp0_iter1_reg <= v225_1_addr_5_reg_1101;
        v225_1_addr_6_reg_1116 <= zext_ln232_fu_547_p1;
        v225_1_addr_6_reg_1116_pp0_iter1_reg <= v225_1_addr_6_reg_1116;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1231 <= grp_fu_4595_p_dout0;
        v128_reg_1241 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v134_reg_1281 <= grp_fu_4595_p_dout0;
        v139_reg_1286 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v145_reg_1291 <= grp_fu_4595_p_dout0;
        v150_reg_1296 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v156_reg_1301 <= grp_fu_4595_p_dout0;
        v161_reg_1306 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v167_reg_1311 <= grp_fu_4595_p_dout0;
        v172_reg_1316 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v178_reg_1321 <= grp_fu_4595_p_dout0;
        v183_reg_1326 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v186_reg_1206 <= v186_fu_652_p3;
        v192_reg_1211 <= v192_fu_663_p3;
        v197_reg_1216 <= v197_fu_674_p3;
        v203_reg_1221 <= v203_fu_685_p3;
        v225_0_addr_10_reg_1201 <= zext_ln284_fu_644_p1;
        v225_0_addr_10_reg_1201_pp0_iter1_reg <= v225_0_addr_10_reg_1201;
        v225_0_addr_10_reg_1201_pp0_iter2_reg <= v225_0_addr_10_reg_1201_pp0_iter1_reg;
        v225_0_addr_9_reg_1196 <= zext_ln277_fu_640_p1;
        v225_0_addr_9_reg_1196_pp0_iter1_reg <= v225_0_addr_9_reg_1196;
        v225_0_addr_9_reg_1196_pp0_iter2_reg <= v225_0_addr_9_reg_1196_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v189_reg_1331 <= grp_fu_4595_p_dout0;
        v194_reg_1336 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v200_reg_1341 <= grp_fu_4595_p_dout0;
        v205_reg_1346 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v201_reg_1361 <= grp_fu_4587_p_dout0;
        v206_reg_1366 <= grp_fu_4591_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v211_reg_1351 <= grp_fu_4595_p_dout0;
        v216_reg_1356 <= grp_fu_4599_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v212_reg_1371 <= grp_fu_4587_p_dout0;
        v217_reg_1376 <= grp_fu_4591_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_addr_3_reg_1039 <= zext_ln199_fu_509_p1;
        v225_0_addr_3_reg_1039_pp0_iter1_reg <= v225_0_addr_3_reg_1039;
        v225_0_addr_4_reg_1066 <= zext_ln206_fu_523_p1;
        v225_0_addr_4_reg_1066_pp0_iter1_reg <= v225_0_addr_4_reg_1066;
        v225_1_addr_3_reg_1044 <= zext_ln199_fu_509_p1;
        v225_1_addr_3_reg_1044_pp0_iter1_reg <= v225_1_addr_3_reg_1044;
        v225_1_addr_4_reg_1071 <= zext_ln206_fu_523_p1;
        v225_1_addr_4_reg_1071_pp0_iter1_reg <= v225_1_addr_4_reg_1071;
        zext_ln175_reg_1032[7 : 0] <= zext_ln175_fu_501_p1[7 : 0];
        zext_ln182_reg_1059[7 : 1] <= zext_ln182_fu_515_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_1_reg_1076 <= v225_0_q0;
        v225_0_load_reg_1049 <= v225_0_q1;
        v225_1_load_1_reg_1091 <= v225_1_q0;
        v225_1_load_reg_1086 <= v225_1_q1;
        v227_load_1_reg_1081 <= v227_q0;
        v227_load_reg_1054 <= v227_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_load_2_reg_1126 <= v225_0_q1;
        v225_0_load_3_reg_1131 <= v225_0_q0;
        v225_1_load_2_reg_1136 <= v225_1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_993 == 1'd0) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln170_reg_993_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_375_p0 = v208_reg_1271;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p0 = v197_reg_1216;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p0 = v186_reg_1206;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p0 = v175_reg_1186;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p0 = v164_reg_1176;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_375_p0 = v153_reg_1266;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_375_p0 = v142_reg_1256;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_375_p0 = v131_reg_1246;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_375_p0 = v118_reg_1226;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_375_p1 = v211_reg_1351;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_375_p1 = v200_reg_1341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_375_p1 = v189_reg_1331;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_375_p1 = v178_reg_1321;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_375_p1 = v167_reg_1311;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_375_p1 = v156_reg_1301;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_375_p1 = v145_reg_1291;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_375_p1 = v134_reg_1281;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_375_p1 = v122_reg_1231;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_379_p0 = v214_reg_1276;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p0 = v203_reg_1221;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p0 = v192_reg_1211;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p0 = v181_reg_1191;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p0 = v170_reg_1181;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_379_p0 = v159_reg_1141;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_379_p0 = v148_reg_1261;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_379_p0 = v137_reg_1251;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_379_p0 = v125_reg_1236;
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_379_p1 = v216_reg_1356;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_379_p1 = v205_reg_1346;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_379_p1 = v194_reg_1336;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_379_p1 = v183_reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_379_p1 = v172_reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_379_p1 = v161_reg_1306;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_379_p1 = v150_reg_1296;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_379_p1 = v139_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_379_p1 = v128_reg_1241;
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_383_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_383_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_383_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_383_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_383_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_383_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_383_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_383_p0 = v133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p0 = v120;
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_383_p1 = v121_reg_1106;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_383_p1 = v121_fu_539_p1;
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_387_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_387_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_387_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_387_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_387_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_387_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_387_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_387_p0 = v133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_387_p0 = v120;
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_387_p1 = v127_reg_1121;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_387_p1 = v127_fu_553_p1;
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_0_address0_local = v225_0_addr_10_reg_1201_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v225_0_address0_local = v225_0_addr_8_reg_1161_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v225_0_address0_local = v225_0_addr_6_reg_1111_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1066_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1022_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = zext_ln284_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = zext_ln258_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln232_fu_547_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln206_fu_523_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_495_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_0_address1_local = v225_0_addr_9_reg_1196_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v225_0_address1_local = v225_0_addr_7_reg_1146_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v225_0_address1_local = v225_0_addr_5_reg_1096_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1039_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1002_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = zext_ln277_fu_640_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = zext_ln251_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln225_fu_533_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln199_fu_509_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_446_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_0_d0_local = bitcast_ln289_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v225_0_d0_local = bitcast_ln263_fu_859_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v225_0_d0_local = bitcast_ln237_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v225_0_d0_local = bitcast_ln211_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d0_local = bitcast_ln185_fu_809_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_0_d1_local = bitcast_ln283_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v225_0_d1_local = bitcast_ln257_fu_854_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v225_0_d1_local = bitcast_ln231_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v225_0_d1_local = bitcast_ln205_fu_814_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln178_fu_804_p1;
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address0_local = v225_1_addr_8_reg_1171_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_1_address0_local = v225_1_addr_6_reg_1116_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v225_1_address0_local = v225_1_addr_4_reg_1071_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1027_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address0_local = zext_ln258_fu_586_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = zext_ln232_fu_547_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln206_fu_523_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_495_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_7_reg_1156_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_1_address1_local = v225_1_addr_5_reg_1101_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1044_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1007_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_1_address1_local = zext_ln251_fu_572_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = zext_ln225_fu_533_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln199_fu_509_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_446_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d0_local = bitcast_ln276_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_1_d0_local = bitcast_ln250_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v225_1_d0_local = bitcast_ln224_fu_829_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d0_local = bitcast_ln198_fu_799_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_d1_local = bitcast_ln270_fu_864_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_1_d1_local = bitcast_ln244_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v225_1_d1_local = bitcast_ln218_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_d1_local = bitcast_ln192_fu_794_p1;
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
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
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln170_fu_784_p2 = (v116_5_reg_987 + 8'd2);
assign add_ln171_fu_440_p2 = (mul_ln171 + zext_ln175_15_fu_421_p1);
assign add_ln175_fu_429_p2 = (phi_mul + zext_ln175_16_fu_425_p1);
assign add_ln179_fu_489_p2 = (mul_ln171 + zext_ln182_15_fu_470_p1);
assign add_ln182_fu_478_p2 = (phi_mul + zext_ln182_16_fu_474_p1);
assign add_ln199_fu_504_p2 = (mul_ln199 + zext_ln175_fu_501_p1);
assign add_ln206_fu_518_p2 = (mul_ln199 + zext_ln182_fu_515_p1);
assign add_ln225_fu_529_p2 = (mul_ln225 + zext_ln175_reg_1032);
assign add_ln232_fu_543_p2 = (mul_ln225 + zext_ln182_reg_1059);
assign add_ln251_fu_568_p2 = (mul_ln251 + zext_ln175_reg_1032);
assign add_ln258_fu_582_p2 = (mul_ln251 + zext_ln182_reg_1059);
assign add_ln277_fu_578_p2 = (mul_ln277 + zext_ln175_reg_1032);
assign add_ln284_fu_592_p2 = (mul_ln277 + zext_ln182_reg_1059);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
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
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln178_fu_804_p1 = reg_391;
assign bitcast_ln185_fu_809_p1 = reg_395;
assign bitcast_ln192_fu_794_p1 = reg_399;
assign bitcast_ln198_fu_799_p1 = reg_403;
assign bitcast_ln205_fu_814_p1 = reg_399;
assign bitcast_ln211_fu_819_p1 = reg_403;
assign bitcast_ln218_fu_824_p1 = reg_391;
assign bitcast_ln224_fu_829_p1 = reg_395;
assign bitcast_ln231_fu_834_p1 = reg_391;
assign bitcast_ln237_fu_839_p1 = reg_395;
assign bitcast_ln244_fu_844_p1 = reg_391;
assign bitcast_ln250_fu_849_p1 = reg_395;
assign bitcast_ln257_fu_854_p1 = reg_391;
assign bitcast_ln263_fu_859_p1 = reg_395;
assign bitcast_ln270_fu_864_p1 = v201_reg_1361;
assign bitcast_ln276_fu_868_p1 = v206_reg_1366;
assign bitcast_ln283_fu_872_p1 = v212_reg_1371;
assign bitcast_ln289_fu_876_p1 = v217_reg_1376;
assign grp_fu_4587_p_ce = 1'b1;
assign grp_fu_4587_p_din0 = grp_fu_375_p0;
assign grp_fu_4587_p_din1 = grp_fu_375_p1;
assign grp_fu_4587_p_opcode = 2'd0;
assign grp_fu_4591_p_ce = 1'b1;
assign grp_fu_4591_p_din0 = grp_fu_379_p0;
assign grp_fu_4591_p_din1 = grp_fu_379_p1;
assign grp_fu_4591_p_opcode = 2'd0;
assign grp_fu_4595_p_ce = 1'b1;
assign grp_fu_4595_p_din0 = grp_fu_383_p0;
assign grp_fu_4595_p_din1 = grp_fu_383_p1;
assign grp_fu_4599_p_ce = 1'b1;
assign grp_fu_4599_p_din0 = grp_fu_387_p0;
assign grp_fu_4599_p_din1 = grp_fu_387_p1;
assign icmp_ln170_fu_415_p2 = ((ap_sig_allocacmp_v116_5 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln_fu_462_p3 = {{tmp_s_fu_452_p4}, {1'd1}};
assign tmp_s_fu_452_p4 = {{ap_sig_allocacmp_v116_5[7:1]}};
assign v117_fu_692_p1 = v225_0_load_reg_1049;
assign v118_fu_695_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_692_p1);
assign v121_fu_539_p1 = v227_load_reg_1054;
assign v124_fu_702_p1 = v225_0_load_1_reg_1076;
assign v125_fu_705_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_702_p1);
assign v127_fu_553_p1 = v227_load_1_reg_1081;
assign v130_fu_712_p1 = v225_1_load_reg_1086;
assign v131_fu_715_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_712_p1);
assign v136_fu_722_p1 = v225_1_load_1_reg_1091;
assign v137_fu_725_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_722_p1);
assign v141_fu_732_p1 = v225_0_load_2_reg_1126;
assign v142_fu_735_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_732_p1);
assign v147_fu_742_p1 = v225_0_load_3_reg_1131;
assign v148_fu_745_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_742_p1);
assign v152_fu_752_p1 = v225_1_load_2_reg_1136;
assign v153_fu_755_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_752_p1);
assign v158_fu_557_p1 = v225_1_q0;
assign v159_fu_561_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_557_p1);
assign v163_fu_596_p1 = v225_0_q1;
assign v164_fu_600_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_596_p1);
assign v169_fu_607_p1 = v225_0_q0;
assign v170_fu_611_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_607_p1);
assign v174_fu_618_p1 = v225_1_q1;
assign v175_fu_622_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_618_p1);
assign v180_fu_629_p1 = v225_1_q0;
assign v181_fu_633_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_629_p1);
assign v185_fu_648_p1 = v225_0_q1;
assign v186_fu_652_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_648_p1);
assign v191_fu_659_p1 = v225_0_q0;
assign v192_fu_663_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_659_p1);
assign v196_fu_670_p1 = v225_1_q1;
assign v197_fu_674_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_670_p1);
assign v202_fu_681_p1 = v225_1_q0;
assign v203_fu_685_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_681_p1);
assign v207_fu_762_p1 = v225_0_q1;
assign v208_fu_766_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_762_p1);
assign v213_fu_773_p1 = v225_0_q0;
assign v214_fu_777_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_773_p1);
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
assign v227_address0 = zext_ln182_17_fu_484_p1;
assign v227_address1 = zext_ln175_17_fu_435_p1;
assign v227_ce0 = v227_ce0_local;
assign v227_ce1 = v227_ce1_local;
assign zext_ln171_fu_446_p1 = add_ln171_fu_440_p2;
assign zext_ln175_15_fu_421_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln175_16_fu_425_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln175_17_fu_435_p1 = add_ln175_fu_429_p2;
assign zext_ln175_fu_501_p1 = v116_5_reg_987;
assign zext_ln179_fu_495_p1 = add_ln179_fu_489_p2;
assign zext_ln182_15_fu_470_p1 = or_ln_fu_462_p3;
assign zext_ln182_16_fu_474_p1 = or_ln_fu_462_p3;
assign zext_ln182_17_fu_484_p1 = add_ln182_fu_478_p2;
assign zext_ln182_fu_515_p1 = or_ln_reg_1012;
assign zext_ln199_fu_509_p1 = add_ln199_fu_504_p2;
assign zext_ln206_fu_523_p1 = add_ln206_fu_518_p2;
assign zext_ln225_fu_533_p1 = add_ln225_fu_529_p2;
assign zext_ln232_fu_547_p1 = add_ln232_fu_543_p2;
assign zext_ln251_fu_572_p1 = add_ln251_fu_568_p2;
assign zext_ln258_fu_586_p1 = add_ln258_fu_582_p2;
assign zext_ln277_fu_640_p1 = add_ln277_reg_1151;
assign zext_ln284_fu_644_p1 = add_ln284_reg_1166;
always @ (posedge ap_clk) begin
    v225_0_addr_1_reg_1002[14] <= 1'b0;
    v225_0_addr_1_reg_1002_pp0_iter1_reg[14] <= 1'b0;
    v225_1_addr_1_reg_1007[14] <= 1'b0;
    v225_1_addr_1_reg_1007_pp0_iter1_reg[14] <= 1'b0;
    or_ln_reg_1012[0] <= 1'b1;
    v225_0_addr_2_reg_1022[14] <= 1'b0;
    v225_0_addr_2_reg_1022_pp0_iter1_reg[14] <= 1'b0;
    v225_1_addr_2_reg_1027[14] <= 1'b0;
    v225_1_addr_2_reg_1027_pp0_iter1_reg[14] <= 1'b0;
    zext_ln175_reg_1032[14:8] <= 7'b0000000;
    zext_ln182_reg_1059[0] <= 1'b1;
    zext_ln182_reg_1059[14:8] <= 7'b0000000;
end
endmodule 