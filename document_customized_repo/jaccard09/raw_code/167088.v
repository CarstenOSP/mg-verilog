module kernel_2mm_kernel_2mm_node1_Pipeline_label_59 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,phi_mul,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,mul_ln186_1,mul_ln238_1,mul_ln251_1,cmp11,v120_7,v133_7,v144_7,v155_7,v166_7,v177_7,v188_7,v199_7,v210_7,grp_fu_5224_p_din0,grp_fu_5224_p_din1,grp_fu_5224_p_opcode,grp_fu_5224_p_dout0,grp_fu_5224_p_ce,grp_fu_5228_p_din0,grp_fu_5228_p_din1,grp_fu_5228_p_opcode,grp_fu_5228_p_dout0,grp_fu_5228_p_ce,grp_fu_5232_p_din0,grp_fu_5232_p_din1,grp_fu_5232_p_opcode,grp_fu_5232_p_dout0,grp_fu_5232_p_ce,grp_fu_5236_p_din0,grp_fu_5236_p_din1,grp_fu_5236_p_dout0,grp_fu_5236_p_ce,grp_fu_5240_p_din0,grp_fu_5240_p_din1,grp_fu_5240_p_dout0,grp_fu_5240_p_ce,grp_fu_5244_p_din0,grp_fu_5244_p_din1,grp_fu_5244_p_dout0,grp_fu_5244_p_ce); 
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
input  [13:0] mul_ln186_1;
input  [13:0] mul_ln238_1;
input  [13:0] mul_ln251_1;
input  [0:0] cmp11;
input  [31:0] v120_7;
input  [31:0] v133_7;
input  [31:0] v144_7;
input  [31:0] v155_7;
input  [31:0] v166_7;
input  [31:0] v177_7;
input  [31:0] v188_7;
input  [31:0] v199_7;
input  [31:0] v210_7;
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
reg   [0:0] icmp_ln170_reg_959;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_397;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_401;
reg   [31:0] reg_405;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_409;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_413;
reg   [31:0] reg_417;
reg   [7:0] v116_1_reg_954;
wire   [0:0] icmp_ln170_fu_429_p2;
reg   [13:0] v225_0_addr_reg_968;
reg   [13:0] v225_0_addr_reg_968_pp0_iter1_reg;
reg   [13:0] v225_0_addr_reg_968_pp0_iter2_reg;
wire   [13:0] add_ln238_fu_468_p2;
reg   [13:0] add_ln238_reg_973;
reg   [13:0] add_ln238_reg_973_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_978;
reg   [13:0] v225_1_addr_reg_978_pp0_iter1_reg;
reg   [13:0] v225_1_addr_reg_978_pp0_iter2_reg;
reg   [13:0] v225_2_addr_reg_983;
reg   [13:0] v225_2_addr_reg_983_pp0_iter1_reg;
reg   [13:0] v225_2_addr_reg_983_pp0_iter2_reg;
reg   [13:0] v225_3_addr_reg_989;
reg   [13:0] v225_3_addr_reg_989_pp0_iter1_reg;
reg   [13:0] v225_3_addr_reg_989_pp0_iter2_reg;
reg   [13:0] v225_3_addr_1_reg_994;
reg   [13:0] v225_3_addr_1_reg_994_pp0_iter1_reg;
reg   [13:0] v225_3_addr_1_reg_994_pp0_iter2_reg;
reg   [13:0] v225_0_addr_2_reg_1004;
reg   [13:0] v225_0_addr_2_reg_1004_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1004_pp0_iter2_reg;
wire   [13:0] add_ln245_fu_536_p2;
reg   [13:0] add_ln245_reg_1009;
reg   [13:0] add_ln245_reg_1009_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1014;
reg   [13:0] v225_1_addr_2_reg_1014_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1014_pp0_iter2_reg;
reg   [13:0] v225_2_addr_2_reg_1019;
reg   [13:0] v225_2_addr_2_reg_1019_pp0_iter1_reg;
reg   [13:0] v225_2_addr_2_reg_1019_pp0_iter2_reg;
reg   [13:0] v225_3_addr_3_reg_1025;
reg   [13:0] v225_3_addr_3_reg_1025_pp0_iter1_reg;
reg   [13:0] v225_3_addr_3_reg_1025_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1030;
reg   [13:0] v225_3_addr_4_reg_1030_pp0_iter1_reg;
reg   [13:0] v225_3_addr_4_reg_1030_pp0_iter2_reg;
reg   [31:0] v225_3_load_reg_1035;
reg   [31:0] v227_load_reg_1040;
wire   [31:0] v125_fu_557_p3;
reg   [31:0] v125_reg_1045;
wire   [31:0] v127_fu_564_p1;
reg   [31:0] v127_reg_1050;
wire   [31:0] v131_fu_572_p3;
reg   [31:0] v131_reg_1057;
wire   [31:0] v137_fu_583_p3;
reg   [31:0] v137_reg_1062;
wire   [31:0] v142_fu_594_p3;
reg   [31:0] v142_reg_1067;
wire   [31:0] v148_fu_605_p3;
reg   [31:0] v148_reg_1072;
wire   [31:0] v121_fu_612_p1;
reg   [31:0] v121_reg_1077;
wire   [31:0] v164_fu_621_p3;
reg   [31:0] v164_reg_1084;
reg   [31:0] v122_reg_1089;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1094;
reg   [31:0] v134_reg_1099;
wire   [31:0] v118_fu_641_p3;
reg   [31:0] v139_reg_1109;
reg   [31:0] v145_reg_1114;
reg   [31:0] v150_reg_1119;
reg   [13:0] v225_0_addr_1_reg_1124;
reg   [13:0] v225_0_addr_1_reg_1124_pp0_iter2_reg;
reg   [13:0] v225_1_addr_1_reg_1129;
reg   [13:0] v225_1_addr_1_reg_1129_pp0_iter2_reg;
reg   [13:0] v225_2_addr_1_reg_1134;
reg   [13:0] v225_2_addr_1_reg_1134_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1139;
reg   [13:0] v225_3_addr_2_reg_1139_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1139_pp0_iter3_reg;
reg   [13:0] v225_0_addr_3_reg_1144;
reg   [13:0] v225_0_addr_3_reg_1144_pp0_iter2_reg;
reg   [13:0] v225_1_addr_3_reg_1149;
reg   [13:0] v225_1_addr_3_reg_1149_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1154;
reg   [13:0] v225_2_addr_3_reg_1154_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1154_pp0_iter3_reg;
reg   [13:0] v225_3_addr_5_reg_1159;
reg   [13:0] v225_3_addr_5_reg_1159_pp0_iter2_reg;
reg   [13:0] v225_3_addr_5_reg_1159_pp0_iter3_reg;
wire   [31:0] v153_fu_667_p3;
reg   [31:0] v153_reg_1164;
reg   [31:0] v156_reg_1169;
wire   [31:0] v159_fu_678_p3;
reg   [31:0] v159_reg_1174;
reg   [31:0] v161_reg_1179;
reg   [31:0] v167_reg_1184;
wire   [31:0] v170_fu_689_p3;
reg   [31:0] v170_reg_1189;
reg   [31:0] v172_reg_1194;
wire   [31:0] v175_fu_700_p3;
reg   [31:0] v175_reg_1199;
reg   [31:0] v178_reg_1204;
wire   [31:0] v181_fu_711_p3;
reg   [31:0] v181_reg_1209;
reg   [31:0] v183_reg_1214;
wire   [31:0] v186_fu_722_p3;
reg   [31:0] v186_reg_1219;
wire   [31:0] v192_fu_733_p3;
reg   [31:0] v192_reg_1224;
wire   [31:0] v197_fu_744_p3;
reg   [31:0] v197_reg_1229;
wire   [31:0] v203_fu_755_p3;
reg   [31:0] v203_reg_1234;
reg   [31:0] v189_reg_1239;
reg   [31:0] v194_reg_1244;
reg   [31:0] v200_reg_1249;
wire   [31:0] v208_fu_766_p3;
reg   [31:0] v208_reg_1254;
wire   [31:0] v214_fu_777_p3;
reg   [31:0] v214_reg_1259;
reg   [31:0] v205_reg_1264;
reg   [31:0] v211_reg_1269;
reg   [31:0] v216_reg_1274;
reg   [31:0] v206_reg_1279;
reg   [31:0] v212_reg_1284;
reg   [31:0] v217_reg_1289;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_2_fu_449_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln186_fu_460_p1;
wire   [63:0] zext_ln171_fu_480_p1;
wire   [63:0] zext_ln182_2_fu_517_p1;
wire   [63:0] zext_ln193_fu_528_p1;
wire   [63:0] zext_ln179_fu_548_p1;
wire   [63:0] zext_ln238_fu_649_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln245_fu_656_p1;
reg   [7:0] v116_fu_86;
wire   [7:0] add_ln170_fu_628_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
wire    ap_block_pp0_stage2;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln178_fu_804_p1;
wire    ap_block_pp0_stage3;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln185_fu_809_p1;
wire   [31:0] bitcast_ln231_fu_824_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_829_p1;
wire   [31:0] bitcast_ln283_fu_863_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_867_p1;
reg    v227_ce1_local;
reg    v227_ce0_local;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln192_fu_784_p1;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln198_fu_789_p1;
wire   [31:0] bitcast_ln244_fu_834_p1;
wire   [31:0] bitcast_ln250_fu_839_p1;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln205_fu_794_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln211_fu_799_p1;
wire   [31:0] bitcast_ln257_fu_844_p1;
wire   [31:0] bitcast_ln263_fu_849_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln218_fu_814_p1;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln224_fu_819_p1;
wire   [31:0] bitcast_ln270_fu_854_p1;
wire   [31:0] bitcast_ln276_fu_859_p1;
reg   [31:0] grp_fu_373_p0;
reg   [31:0] grp_fu_373_p1;
reg   [31:0] grp_fu_377_p0;
reg   [31:0] grp_fu_377_p1;
reg   [31:0] grp_fu_381_p0;
reg   [31:0] grp_fu_381_p1;
reg   [31:0] grp_fu_385_p0;
reg   [31:0] grp_fu_385_p1;
reg   [31:0] grp_fu_389_p0;
reg   [31:0] grp_fu_389_p1;
reg   [31:0] grp_fu_393_p0;
reg   [31:0] grp_fu_393_p1;
wire   [15:0] zext_ln175_1_fu_439_p1;
wire   [15:0] add_ln175_fu_443_p2;
wire   [13:0] zext_ln175_fu_435_p1;
wire   [13:0] add_ln186_fu_454_p2;
wire   [13:0] add_ln171_fu_474_p2;
wire   [6:0] tmp_s_fu_485_p4;
wire   [7:0] or_ln179_7_fu_495_p3;
wire   [15:0] zext_ln182_1_fu_507_p1;
wire   [15:0] add_ln182_fu_511_p2;
wire   [13:0] zext_ln182_fu_503_p1;
wire   [13:0] add_ln193_fu_522_p2;
wire   [13:0] add_ln179_fu_542_p2;
wire   [31:0] v124_fu_553_p1;
wire   [31:0] v130_fu_568_p1;
wire   [31:0] v136_fu_579_p1;
wire   [31:0] v141_fu_590_p1;
wire   [31:0] v147_fu_601_p1;
wire   [31:0] v163_fu_617_p1;
wire   [31:0] v117_fu_638_p1;
wire   [31:0] v152_fu_663_p1;
wire   [31:0] v158_fu_674_p1;
wire   [31:0] v169_fu_685_p1;
wire   [31:0] v174_fu_696_p1;
wire   [31:0] v180_fu_707_p1;
wire   [31:0] v185_fu_718_p1;
wire   [31:0] v191_fu_729_p1;
wire   [31:0] v196_fu_740_p1;
wire   [31:0] v202_fu_751_p1;
wire   [31:0] v207_fu_762_p1;
wire   [31:0] v213_fu_773_p1;
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
    end else if (((icmp_ln170_reg_959 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_86 <= add_ln170_fu_628_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln238_reg_973 <= add_ln238_fu_468_p2;
        add_ln238_reg_973_pp0_iter1_reg <= add_ln238_reg_973;
        add_ln245_reg_1009 <= add_ln245_fu_536_p2;
        add_ln245_reg_1009_pp0_iter1_reg <= add_ln245_reg_1009;
        icmp_ln170_reg_959 <= icmp_ln170_fu_429_p2;
        v116_1_reg_954 <= ap_sig_allocacmp_v116_1;
        v225_0_addr_2_reg_1004 <= zext_ln193_fu_528_p1;
        v225_0_addr_2_reg_1004_pp0_iter1_reg <= v225_0_addr_2_reg_1004;
        v225_0_addr_2_reg_1004_pp0_iter2_reg <= v225_0_addr_2_reg_1004_pp0_iter1_reg;
        v225_0_addr_reg_968 <= zext_ln186_fu_460_p1;
        v225_0_addr_reg_968_pp0_iter1_reg <= v225_0_addr_reg_968;
        v225_0_addr_reg_968_pp0_iter2_reg <= v225_0_addr_reg_968_pp0_iter1_reg;
        v225_1_addr_2_reg_1014 <= zext_ln193_fu_528_p1;
        v225_1_addr_2_reg_1014_pp0_iter1_reg <= v225_1_addr_2_reg_1014;
        v225_1_addr_2_reg_1014_pp0_iter2_reg <= v225_1_addr_2_reg_1014_pp0_iter1_reg;
        v225_1_addr_reg_978 <= zext_ln186_fu_460_p1;
        v225_1_addr_reg_978_pp0_iter1_reg <= v225_1_addr_reg_978;
        v225_1_addr_reg_978_pp0_iter2_reg <= v225_1_addr_reg_978_pp0_iter1_reg;
        v225_2_addr_2_reg_1019 <= zext_ln193_fu_528_p1;
        v225_2_addr_2_reg_1019_pp0_iter1_reg <= v225_2_addr_2_reg_1019;
        v225_2_addr_2_reg_1019_pp0_iter2_reg <= v225_2_addr_2_reg_1019_pp0_iter1_reg;
        v225_2_addr_reg_983 <= zext_ln186_fu_460_p1;
        v225_2_addr_reg_983_pp0_iter1_reg <= v225_2_addr_reg_983;
        v225_2_addr_reg_983_pp0_iter2_reg <= v225_2_addr_reg_983_pp0_iter1_reg;
        v225_3_addr_1_reg_994 <= zext_ln186_fu_460_p1;
        v225_3_addr_1_reg_994_pp0_iter1_reg <= v225_3_addr_1_reg_994;
        v225_3_addr_1_reg_994_pp0_iter2_reg <= v225_3_addr_1_reg_994_pp0_iter1_reg;
        v225_3_addr_3_reg_1025 <= zext_ln179_fu_548_p1;
        v225_3_addr_3_reg_1025_pp0_iter1_reg <= v225_3_addr_3_reg_1025;
        v225_3_addr_3_reg_1025_pp0_iter2_reg <= v225_3_addr_3_reg_1025_pp0_iter1_reg;
        v225_3_addr_4_reg_1030 <= zext_ln193_fu_528_p1;
        v225_3_addr_4_reg_1030_pp0_iter1_reg <= v225_3_addr_4_reg_1030;
        v225_3_addr_4_reg_1030_pp0_iter2_reg <= v225_3_addr_4_reg_1030_pp0_iter1_reg;
        v225_3_addr_reg_989 <= zext_ln171_fu_480_p1;
        v225_3_addr_reg_989_pp0_iter1_reg <= v225_3_addr_reg_989;
        v225_3_addr_reg_989_pp0_iter2_reg <= v225_3_addr_reg_989_pp0_iter1_reg;
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
        reg_397 <= grp_fu_5224_p_dout0;
        reg_401 <= grp_fu_5228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_405 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_409 <= grp_fu_5224_p_dout0;
        reg_413 <= grp_fu_5228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_417 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1077 <= v121_fu_612_p1;
        v164_reg_1084 <= v164_fu_621_p3;
        v170_reg_1189 <= v170_fu_689_p3;
        v175_reg_1199 <= v175_fu_700_p3;
        v181_reg_1209 <= v181_fu_711_p3;
        v186_reg_1219 <= v186_fu_722_p3;
        v192_reg_1224 <= v192_fu_733_p3;
        v197_reg_1229 <= v197_fu_744_p3;
        v203_reg_1234 <= v203_fu_755_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1089 <= grp_fu_5236_p_dout0;
        v128_reg_1094 <= grp_fu_5240_p_dout0;
        v134_reg_1099 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v125_reg_1045 <= v125_fu_557_p3;
        v127_reg_1050 <= v127_fu_564_p1;
        v131_reg_1057 <= v131_fu_572_p3;
        v137_reg_1062 <= v137_fu_583_p3;
        v142_reg_1067 <= v142_fu_594_p3;
        v148_reg_1072 <= v148_fu_605_p3;
        v153_reg_1164 <= v153_fu_667_p3;
        v159_reg_1174 <= v159_fu_678_p3;
        v225_0_addr_1_reg_1124 <= zext_ln238_fu_649_p1;
        v225_0_addr_1_reg_1124_pp0_iter2_reg <= v225_0_addr_1_reg_1124;
        v225_0_addr_3_reg_1144 <= zext_ln245_fu_656_p1;
        v225_0_addr_3_reg_1144_pp0_iter2_reg <= v225_0_addr_3_reg_1144;
        v225_1_addr_1_reg_1129 <= zext_ln238_fu_649_p1;
        v225_1_addr_1_reg_1129_pp0_iter2_reg <= v225_1_addr_1_reg_1129;
        v225_1_addr_3_reg_1149 <= zext_ln245_fu_656_p1;
        v225_1_addr_3_reg_1149_pp0_iter2_reg <= v225_1_addr_3_reg_1149;
        v225_2_addr_1_reg_1134 <= zext_ln238_fu_649_p1;
        v225_2_addr_1_reg_1134_pp0_iter2_reg <= v225_2_addr_1_reg_1134;
        v225_2_addr_3_reg_1154 <= zext_ln245_fu_656_p1;
        v225_2_addr_3_reg_1154_pp0_iter2_reg <= v225_2_addr_3_reg_1154;
        v225_2_addr_3_reg_1154_pp0_iter3_reg <= v225_2_addr_3_reg_1154_pp0_iter2_reg;
        v225_3_addr_2_reg_1139 <= zext_ln238_fu_649_p1;
        v225_3_addr_2_reg_1139_pp0_iter2_reg <= v225_3_addr_2_reg_1139;
        v225_3_addr_2_reg_1139_pp0_iter3_reg <= v225_3_addr_2_reg_1139_pp0_iter2_reg;
        v225_3_addr_5_reg_1159 <= zext_ln245_fu_656_p1;
        v225_3_addr_5_reg_1159_pp0_iter2_reg <= v225_3_addr_5_reg_1159;
        v225_3_addr_5_reg_1159_pp0_iter3_reg <= v225_3_addr_5_reg_1159_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1109 <= grp_fu_5236_p_dout0;
        v145_reg_1114 <= grp_fu_5240_p_dout0;
        v150_reg_1119 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1169 <= grp_fu_5236_p_dout0;
        v161_reg_1179 <= grp_fu_5240_p_dout0;
        v167_reg_1184 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1194 <= grp_fu_5236_p_dout0;
        v178_reg_1204 <= grp_fu_5240_p_dout0;
        v183_reg_1214 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1239 <= grp_fu_5236_p_dout0;
        v194_reg_1244 <= grp_fu_5240_p_dout0;
        v200_reg_1249 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1264 <= grp_fu_5236_p_dout0;
        v211_reg_1269 <= grp_fu_5240_p_dout0;
        v216_reg_1274 <= grp_fu_5244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1279 <= grp_fu_5224_p_dout0;
        v212_reg_1284 <= grp_fu_5228_p_dout0;
        v217_reg_1289 <= grp_fu_5232_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1254 <= v208_fu_766_p3;
        v214_reg_1259 <= v214_fu_777_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_load_reg_1035 <= v225_3_q1;
        v227_load_reg_1040 <= v227_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_959 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116_1 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_1 = v116_fu_86;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_373_p0 = v203_reg_1234;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_373_p0 = v186_reg_1219;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_373_p0 = v170_reg_1189;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_373_p0 = v153_reg_1164;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_373_p0 = v137_reg_1062;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_373_p0 = v118_fu_641_p3;
        end else begin
            grp_fu_373_p0 = 'bx;
        end
    end else begin
        grp_fu_373_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_373_p1 = v205_reg_1264;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_373_p1 = v189_reg_1239;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_373_p1 = v172_reg_1194;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_373_p1 = v156_reg_1169;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_373_p1 = v139_reg_1109;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_373_p1 = v122_reg_1089;
        end else begin
            grp_fu_373_p1 = 'bx;
        end
    end else begin
        grp_fu_373_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_377_p0 = v208_reg_1254;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_377_p0 = v192_reg_1224;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_377_p0 = v175_reg_1199;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_377_p0 = v159_reg_1174;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_377_p0 = v142_reg_1067;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_377_p0 = v125_reg_1045;
        end else begin
            grp_fu_377_p0 = 'bx;
        end
    end else begin
        grp_fu_377_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_377_p1 = v211_reg_1269;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_377_p1 = v194_reg_1244;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_377_p1 = v178_reg_1204;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_377_p1 = v161_reg_1179;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_377_p1 = v145_reg_1114;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_377_p1 = v128_reg_1094;
        end else begin
            grp_fu_377_p1 = 'bx;
        end
    end else begin
        grp_fu_377_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_381_p0 = v214_reg_1259;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_381_p0 = v197_reg_1229;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_381_p0 = v181_reg_1209;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_381_p0 = v164_reg_1084;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_381_p0 = v148_reg_1072;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_381_p0 = v131_reg_1057;
        end else begin
            grp_fu_381_p0 = 'bx;
        end
    end else begin
        grp_fu_381_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_381_p1 = v216_reg_1274;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_381_p1 = v200_reg_1249;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_381_p1 = v183_reg_1214;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_381_p1 = v167_reg_1184;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_381_p1 = v150_reg_1119;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_381_p1 = v134_reg_1099;
        end else begin
            grp_fu_381_p1 = 'bx;
        end
    end else begin
        grp_fu_381_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_385_p0 = v199_7;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_385_p0 = v188_7;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_385_p0 = v166_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_385_p0 = v155_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_385_p0 = v133_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_385_p0 = v120_7;
    end else begin
        grp_fu_385_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_385_p1 = v121_reg_1077;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_385_p1 = v127_reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_385_p1 = v121_fu_612_p1;
    end else begin
        grp_fu_385_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_389_p0 = v210_7;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_389_p0 = v188_7;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_389_p0 = v177_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_389_p0 = v155_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_389_p0 = v144_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_389_p0 = v120_7;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_389_p1 = v121_reg_1077;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_389_p1 = v127_reg_1050;
    end else begin
        grp_fu_389_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_393_p0 = v210_7;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_393_p0 = v199_7;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_393_p0 = v177_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_393_p0 = v166_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_393_p0 = v144_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_393_p0 = v133_7;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_393_p1 = v121_reg_1077;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_393_p1 = v127_reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_393_p1 = v121_fu_612_p1;
    end else begin
        grp_fu_393_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_3_reg_1144_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1004_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln245_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln193_fu_528_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1124_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_reg_968_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln238_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln186_fu_460_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_0_d0_local = bitcast_ln250_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d0_local = bitcast_ln198_fu_789_p1;
        end else begin
            v225_0_d0_local = 'bx;
        end
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_0_d1_local = bitcast_ln244_fu_834_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_0_d1_local = bitcast_ln192_fu_784_p1;
        end else begin
            v225_0_d1_local = 'bx;
        end
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address0_local = v225_1_addr_3_reg_1149_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1014_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln245_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln193_fu_528_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1129_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_reg_978_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = zext_ln238_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln186_fu_460_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_1_d0_local = bitcast_ln263_fu_849_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln211_fu_799_p1;
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
            v225_1_d1_local = bitcast_ln257_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln205_fu_794_p1;
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
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_3_reg_1154_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address0_local = v225_2_addr_reg_983_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln245_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1019;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_1_reg_1134_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_address1_local = v225_2_addr_2_reg_1019_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = zext_ln238_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = v225_2_addr_reg_983;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_d0_local = bitcast_ln276_fu_859_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_2_d0_local = bitcast_ln218_fu_814_p1;
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d1_local = bitcast_ln270_fu_854_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_2_d1_local = bitcast_ln224_fu_819_p1;
        end else begin
            v225_2_d1_local = 'bx;
        end
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
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address0_local = v225_3_addr_5_reg_1159_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address0_local = v225_3_addr_4_reg_1030_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_3_reg_1025_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_5_reg_1159;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = v225_3_addr_4_reg_1030_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_548_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1139_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_address1_local = v225_3_addr_1_reg_994_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_reg_989_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_1_reg_994;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_480_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_d0_local = bitcast_ln289_fu_867_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d0_local = bitcast_ln237_fu_829_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln185_fu_809_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_d1_local = bitcast_ln283_fu_863_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_3_d1_local = bitcast_ln231_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d1_local = bitcast_ln178_fu_804_p1;
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln170_fu_628_p2 = (v116_1_reg_954 + 8'd2);
assign add_ln171_fu_474_p2 = (mul_ln251_1 + zext_ln175_fu_435_p1);
assign add_ln175_fu_443_p2 = (phi_mul + zext_ln175_1_fu_439_p1);
assign add_ln179_fu_542_p2 = (mul_ln251_1 + zext_ln182_fu_503_p1);
assign add_ln182_fu_511_p2 = (phi_mul + zext_ln182_1_fu_507_p1);
assign add_ln186_fu_454_p2 = (mul_ln186_1 + zext_ln175_fu_435_p1);
assign add_ln193_fu_522_p2 = (mul_ln186_1 + zext_ln182_fu_503_p1);
assign add_ln238_fu_468_p2 = (mul_ln238_1 + zext_ln175_fu_435_p1);
assign add_ln245_fu_536_p2 = (mul_ln238_1 + zext_ln182_fu_503_p1);
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
assign bitcast_ln178_fu_804_p1 = reg_397;
assign bitcast_ln185_fu_809_p1 = reg_401;
assign bitcast_ln192_fu_784_p1 = reg_405;
assign bitcast_ln198_fu_789_p1 = reg_409;
assign bitcast_ln205_fu_794_p1 = reg_413;
assign bitcast_ln211_fu_799_p1 = reg_417;
assign bitcast_ln218_fu_814_p1 = reg_409;
assign bitcast_ln224_fu_819_p1 = reg_413;
assign bitcast_ln231_fu_824_p1 = reg_405;
assign bitcast_ln237_fu_829_p1 = reg_397;
assign bitcast_ln244_fu_834_p1 = reg_401;
assign bitcast_ln250_fu_839_p1 = reg_417;
assign bitcast_ln257_fu_844_p1 = reg_397;
assign bitcast_ln263_fu_849_p1 = reg_401;
assign bitcast_ln270_fu_854_p1 = reg_405;
assign bitcast_ln276_fu_859_p1 = v206_reg_1279;
assign bitcast_ln283_fu_863_p1 = v212_reg_1284;
assign bitcast_ln289_fu_867_p1 = v217_reg_1289;
assign grp_fu_5224_p_ce = 1'b1;
assign grp_fu_5224_p_din0 = grp_fu_373_p0;
assign grp_fu_5224_p_din1 = grp_fu_373_p1;
assign grp_fu_5224_p_opcode = 2'd0;
assign grp_fu_5228_p_ce = 1'b1;
assign grp_fu_5228_p_din0 = grp_fu_377_p0;
assign grp_fu_5228_p_din1 = grp_fu_377_p1;
assign grp_fu_5228_p_opcode = 2'd0;
assign grp_fu_5232_p_ce = 1'b1;
assign grp_fu_5232_p_din0 = grp_fu_381_p0;
assign grp_fu_5232_p_din1 = grp_fu_381_p1;
assign grp_fu_5232_p_opcode = 2'd0;
assign grp_fu_5236_p_ce = 1'b1;
assign grp_fu_5236_p_din0 = grp_fu_385_p0;
assign grp_fu_5236_p_din1 = grp_fu_385_p1;
assign grp_fu_5240_p_ce = 1'b1;
assign grp_fu_5240_p_din0 = grp_fu_389_p0;
assign grp_fu_5240_p_din1 = grp_fu_389_p1;
assign grp_fu_5244_p_ce = 1'b1;
assign grp_fu_5244_p_din0 = grp_fu_393_p0;
assign grp_fu_5244_p_din1 = grp_fu_393_p1;
assign icmp_ln170_fu_429_p2 = ((ap_sig_allocacmp_v116_1 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_7_fu_495_p3 = {{tmp_s_fu_485_p4}, {1'd1}};
assign tmp_s_fu_485_p4 = {{ap_sig_allocacmp_v116_1[7:1]}};
assign v117_fu_638_p1 = v225_3_load_reg_1035;
assign v118_fu_641_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_638_p1);
assign v121_fu_612_p1 = v227_load_reg_1040;
assign v124_fu_553_p1 = v225_3_q0;
assign v125_fu_557_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_553_p1);
assign v127_fu_564_p1 = v227_q0;
assign v130_fu_568_p1 = v225_0_q1;
assign v131_fu_572_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_568_p1);
assign v136_fu_579_p1 = v225_0_q0;
assign v137_fu_583_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_579_p1);
assign v141_fu_590_p1 = v225_1_q1;
assign v142_fu_594_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_590_p1);
assign v147_fu_601_p1 = v225_1_q0;
assign v148_fu_605_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_601_p1);
assign v152_fu_663_p1 = v225_2_q1;
assign v153_fu_667_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_663_p1);
assign v158_fu_674_p1 = v225_2_q0;
assign v159_fu_678_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_674_p1);
assign v163_fu_617_p1 = v225_3_q1;
assign v164_fu_621_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_617_p1);
assign v169_fu_685_p1 = v225_3_q0;
assign v170_fu_689_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_685_p1);
assign v174_fu_696_p1 = v225_0_q1;
assign v175_fu_700_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_696_p1);
assign v180_fu_707_p1 = v225_0_q0;
assign v181_fu_711_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_707_p1);
assign v185_fu_718_p1 = v225_1_q1;
assign v186_fu_722_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_718_p1);
assign v191_fu_729_p1 = v225_1_q0;
assign v192_fu_733_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_729_p1);
assign v196_fu_740_p1 = v225_2_q1;
assign v197_fu_744_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_740_p1);
assign v202_fu_751_p1 = v225_2_q0;
assign v203_fu_755_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_751_p1);
assign v207_fu_762_p1 = v225_3_q1;
assign v208_fu_766_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_762_p1);
assign v213_fu_773_p1 = v225_3_q0;
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
assign v227_address0 = zext_ln182_2_fu_517_p1;
assign v227_address1 = zext_ln175_2_fu_449_p1;
assign v227_ce0 = v227_ce0_local;
assign v227_ce1 = v227_ce1_local;
assign zext_ln171_fu_480_p1 = add_ln171_fu_474_p2;
assign zext_ln175_1_fu_439_p1 = ap_sig_allocacmp_v116_1;
assign zext_ln175_2_fu_449_p1 = add_ln175_fu_443_p2;
assign zext_ln175_fu_435_p1 = ap_sig_allocacmp_v116_1;
assign zext_ln179_fu_548_p1 = add_ln179_fu_542_p2;
assign zext_ln182_1_fu_507_p1 = or_ln179_7_fu_495_p3;
assign zext_ln182_2_fu_517_p1 = add_ln182_fu_511_p2;
assign zext_ln182_fu_503_p1 = or_ln179_7_fu_495_p3;
assign zext_ln186_fu_460_p1 = add_ln186_fu_454_p2;
assign zext_ln193_fu_528_p1 = add_ln193_fu_522_p2;
assign zext_ln238_fu_649_p1 = add_ln238_reg_973_pp0_iter1_reg;
assign zext_ln245_fu_656_p1 = add_ln245_reg_1009_pp0_iter1_reg;
endmodule 