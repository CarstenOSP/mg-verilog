
module kernel_2mm_kernel_2mm_node1_Pipeline_label_510 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,mul_ln171_2,mul_ln225_2,mul_ln277_2,empty,v120_1,v133_1,v144_1,v155_1,v166_1,v177_1,v188_1,v199_1,v210_1,grp_fu_19533_p_din0,grp_fu_19533_p_din1,grp_fu_19533_p_opcode,grp_fu_19533_p_dout0,grp_fu_19533_p_ce,grp_fu_19537_p_din0,grp_fu_19537_p_din1,grp_fu_19537_p_opcode,grp_fu_19537_p_dout0,grp_fu_19537_p_ce,grp_fu_19541_p_din0,grp_fu_19541_p_din1,grp_fu_19541_p_opcode,grp_fu_19541_p_dout0,grp_fu_19541_p_ce,grp_fu_19545_p_din0,grp_fu_19545_p_din1,grp_fu_19545_p_dout0,grp_fu_19545_p_ce,grp_fu_19549_p_din0,grp_fu_19549_p_din1,grp_fu_19549_p_dout0,grp_fu_19549_p_ce,grp_fu_19553_p_din0,grp_fu_19553_p_din1,grp_fu_19553_p_dout0,grp_fu_19553_p_ce);  
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
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
input  [12:0] mul_ln171_2;
input  [13:0] mul_ln225_2;
input  [13:0] mul_ln277_2;
input  [0:0] empty;
input  [31:0] v120_1;
input  [31:0] v133_1;
input  [31:0] v144_1;
input  [31:0] v155_1;
input  [31:0] v166_1;
input  [31:0] v177_1;
input  [31:0] v188_1;
input  [31:0] v199_1;
input  [31:0] v210_1;
output  [31:0] grp_fu_19533_p_din0;
output  [31:0] grp_fu_19533_p_din1;
output  [1:0] grp_fu_19533_p_opcode;
input  [31:0] grp_fu_19533_p_dout0;
output   grp_fu_19533_p_ce;
output  [31:0] grp_fu_19537_p_din0;
output  [31:0] grp_fu_19537_p_din1;
output  [1:0] grp_fu_19537_p_opcode;
input  [31:0] grp_fu_19537_p_dout0;
output   grp_fu_19537_p_ce;
output  [31:0] grp_fu_19541_p_din0;
output  [31:0] grp_fu_19541_p_din1;
output  [1:0] grp_fu_19541_p_opcode;
input  [31:0] grp_fu_19541_p_dout0;
output   grp_fu_19541_p_ce;
output  [31:0] grp_fu_19545_p_din0;
output  [31:0] grp_fu_19545_p_din1;
input  [31:0] grp_fu_19545_p_dout0;
output   grp_fu_19545_p_ce;
output  [31:0] grp_fu_19549_p_din0;
output  [31:0] grp_fu_19549_p_din1;
input  [31:0] grp_fu_19549_p_dout0;
output   grp_fu_19549_p_ce;
output  [31:0] grp_fu_19553_p_din0;
output  [31:0] grp_fu_19553_p_din1;
input  [31:0] grp_fu_19553_p_dout0;
output   grp_fu_19553_p_ce;
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
reg   [0:0] icmp_ln170_reg_885;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_423;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_427;
reg   [31:0] reg_431;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_436;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_440;
reg   [31:0] reg_444;
reg   [31:0] reg_448;
reg   [31:0] reg_452;
reg   [31:0] reg_456;
reg   [7:0] v116_reg_879;
wire   [0:0] icmp_ln170_fu_468_p2;
reg   [13:0] v225_0_addr_25_reg_899;
reg   [13:0] v225_0_addr_25_reg_899_pp0_iter1_reg;
reg   [13:0] v225_0_addr_25_reg_899_pp0_iter2_reg;
reg   [13:0] v225_1_addr_23_reg_904;
reg   [13:0] v225_1_addr_23_reg_904_pp0_iter1_reg;
reg   [13:0] v225_1_addr_23_reg_904_pp0_iter2_reg;
reg   [13:0] v225_2_addr_23_reg_909;
reg   [13:0] v225_2_addr_23_reg_909_pp0_iter1_reg;
reg   [13:0] v225_2_addr_23_reg_909_pp0_iter2_reg;
reg   [13:0] v225_3_addr_23_reg_914;
reg   [13:0] v225_3_addr_23_reg_914_pp0_iter1_reg;
reg   [13:0] v225_3_addr_23_reg_914_pp0_iter2_reg;
wire   [7:0] or_ln179_5_fu_514_p3;
reg   [7:0] or_ln179_5_reg_920;
reg   [7:0] or_ln179_5_reg_920_pp0_iter1_reg;
reg   [13:0] v225_0_addr_26_reg_935;
reg   [13:0] v225_0_addr_26_reg_935_pp0_iter1_reg;
reg   [13:0] v225_0_addr_26_reg_935_pp0_iter2_reg;
reg   [13:0] v225_1_addr_24_reg_940;
reg   [13:0] v225_1_addr_24_reg_940_pp0_iter1_reg;
reg   [13:0] v225_1_addr_24_reg_940_pp0_iter2_reg;
reg   [13:0] v225_2_addr_24_reg_945;
reg   [13:0] v225_2_addr_24_reg_945_pp0_iter1_reg;
reg   [13:0] v225_2_addr_24_reg_945_pp0_iter2_reg;
reg   [13:0] v225_3_addr_24_reg_950;
reg   [13:0] v225_3_addr_24_reg_950_pp0_iter1_reg;
reg   [13:0] v225_3_addr_24_reg_950_pp0_iter2_reg;
reg   [13:0] v225_0_addr_27_reg_956;
reg   [13:0] v225_0_addr_27_reg_956_pp0_iter1_reg;
reg   [13:0] v225_0_addr_27_reg_956_pp0_iter2_reg;
wire   [13:0] add_ln277_fu_568_p2;
reg   [13:0] add_ln277_reg_961;
reg   [13:0] add_ln277_reg_961_pp0_iter1_reg;
reg   [13:0] v225_1_addr_25_reg_966;
reg   [13:0] v225_1_addr_25_reg_966_pp0_iter1_reg;
reg   [13:0] v225_1_addr_25_reg_966_pp0_iter2_reg;
reg   [13:0] v225_2_addr_25_reg_971;
reg   [13:0] v225_2_addr_25_reg_971_pp0_iter1_reg;
reg   [13:0] v225_2_addr_25_reg_971_pp0_iter2_reg;
reg   [13:0] v225_3_addr_25_reg_976;
reg   [13:0] v225_3_addr_25_reg_976_pp0_iter1_reg;
reg   [13:0] v225_3_addr_25_reg_976_pp0_iter2_reg;
reg   [31:0] v225_0_load_24_reg_981;
wire   [31:0] select_ln175_fu_573_p3;
reg   [31:0] select_ln175_reg_986;
reg   [31:0] v225_0_load_25_reg_991;
wire   [31:0] select_ln182_fu_580_p3;
reg   [31:0] select_ln182_reg_996;
reg   [31:0] v225_1_load_22_reg_1001;
reg   [31:0] v225_1_load_23_reg_1006;
reg   [31:0] v225_2_load_22_reg_1011;
reg   [31:0] v225_2_load_23_reg_1016;
wire   [31:0] v121_fu_587_p1;
reg   [31:0] v121_reg_1021;
wire   [31:0] v127_fu_592_p1;
reg   [31:0] v127_reg_1028;
reg   [31:0] v225_0_load_26_reg_1035;
reg   [31:0] v122_reg_1040;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1045;
reg   [31:0] v134_reg_1050;
wire   [31:0] v117_fu_606_p1;
wire   [31:0] v124_fu_610_p1;
wire   [31:0] v130_fu_614_p1;
reg   [31:0] v139_reg_1070;
reg   [31:0] v145_reg_1075;
reg   [31:0] v150_reg_1080;
reg   [13:0] v225_0_addr_28_reg_1085;
reg   [13:0] v225_0_addr_28_reg_1085_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_634_p2;
reg   [13:0] add_ln284_reg_1090;
reg   [13:0] v225_1_addr_26_reg_1095;
reg   [13:0] v225_1_addr_26_reg_1095_pp0_iter2_reg;
reg   [13:0] v225_2_addr_26_reg_1100;
reg   [13:0] v225_2_addr_26_reg_1100_pp0_iter2_reg;
reg   [13:0] v225_3_addr_26_reg_1105;
reg   [13:0] v225_3_addr_26_reg_1105_pp0_iter2_reg;
reg   [13:0] v225_3_addr_26_reg_1105_pp0_iter3_reg;
wire   [31:0] v136_fu_639_p1;
wire   [31:0] v141_fu_643_p1;
wire   [31:0] v147_fu_647_p1;
reg   [31:0] v156_reg_1125;
reg   [31:0] v161_reg_1130;
reg   [31:0] v167_reg_1135;
reg   [13:0] v225_0_addr_29_reg_1140;
reg   [13:0] v225_0_addr_29_reg_1140_pp0_iter2_reg;
reg   [13:0] v225_0_addr_29_reg_1140_pp0_iter3_reg;
reg   [13:0] v225_0_addr_30_reg_1145;
reg   [13:0] v225_0_addr_30_reg_1145_pp0_iter2_reg;
reg   [13:0] v225_0_addr_30_reg_1145_pp0_iter3_reg;
wire   [31:0] v152_fu_659_p1;
wire   [31:0] v158_fu_664_p1;
wire   [31:0] v163_fu_669_p1;
reg   [31:0] v172_reg_1165;
reg   [31:0] v225_1_load_24_reg_1170;
reg   [31:0] v178_reg_1175;
reg   [31:0] v225_1_load_25_reg_1180;
reg   [31:0] v183_reg_1185;
reg   [31:0] v225_2_load_24_reg_1190;
reg   [31:0] v225_2_load_25_reg_1195;
wire   [31:0] v169_fu_673_p1;
wire   [31:0] v174_fu_678_p1;
wire   [31:0] v180_fu_682_p1;
reg   [31:0] v189_reg_1215;
reg   [31:0] v194_reg_1220;
reg   [31:0] v200_reg_1225;
reg   [31:0] v225_0_load_29_reg_1230;
wire   [31:0] v185_fu_686_p1;
wire   [31:0] v191_fu_690_p1;
wire   [31:0] v196_fu_694_p1;
reg   [31:0] v205_reg_1250;
reg   [31:0] v211_reg_1255;
reg   [31:0] v216_reg_1260;
wire   [31:0] v202_fu_699_p1;
wire   [31:0] v207_fu_704_p1;
wire   [31:0] v213_fu_709_p1;
reg   [31:0] v206_reg_1280;
reg   [31:0] v212_reg_1285;
reg   [31:0] v217_reg_1290;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_62_fu_484_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_496_p1;
wire   [63:0] zext_ln182_62_fu_532_p1;
wire   [63:0] zext_ln179_fu_544_p1;
wire   [63:0] zext_ln225_fu_560_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln232_fu_626_p1;
wire   [63:0] zext_ln277_fu_651_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_655_p1;
reg   [7:0] v116_5_fu_86;
wire   [7:0] add_ln170_fu_596_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_733_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_738_p1;
wire   [31:0] bitcast_ln231_fu_753_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_758_p1;
wire   [31:0] bitcast_ln283_fu_792_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_796_p1;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_5_ce1_local;
reg    v227_5_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_713_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_718_p1;
wire   [31:0] bitcast_ln244_fu_763_p1;
wire   [31:0] bitcast_ln250_fu_768_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_723_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_728_p1;
wire   [31:0] bitcast_ln257_fu_773_p1;
wire   [31:0] bitcast_ln263_fu_778_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln218_fu_743_p1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln224_fu_748_p1;
wire   [31:0] bitcast_ln270_fu_783_p1;
wire   [31:0] bitcast_ln276_fu_788_p1;
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_399_p1;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_403_p1;
reg   [31:0] grp_fu_407_p0;
reg   [31:0] grp_fu_407_p1;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_411_p1;
reg   [31:0] grp_fu_415_p0;
reg   [31:0] grp_fu_415_p1;
reg   [31:0] grp_fu_419_p0;
reg   [31:0] grp_fu_419_p1;
wire   [12:0] zext_ln175_61_fu_474_p1;
wire   [12:0] add_ln175_fu_478_p2;
wire   [12:0] add_ln171_fu_490_p2;
wire   [6:0] tmp_s_fu_504_p4;
wire   [12:0] zext_ln182_61_fu_522_p1;
wire   [12:0] add_ln182_fu_526_p2;
wire   [12:0] add_ln179_fu_538_p2;
wire   [13:0] zext_ln175_fu_552_p1;
wire   [13:0] add_ln225_fu_555_p2;
wire   [13:0] zext_ln182_fu_618_p1;
wire   [13:0] add_ln232_fu_621_p2;
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
#0 v116_5_fu_86 = 8'd0;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_431 <= v225_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_431 <= v225_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_fu_86 <= 8'd0;
    end else if (((icmp_ln170_reg_885 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_5_fu_86 <= add_ln170_fu_596_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_961 <= add_ln277_fu_568_p2;
        add_ln277_reg_961_pp0_iter1_reg <= add_ln277_reg_961;
        add_ln284_reg_1090 <= add_ln284_fu_634_p2;
        select_ln175_reg_986 <= select_ln175_fu_573_p3;
        select_ln182_reg_996 <= select_ln182_fu_580_p3;
        v225_0_addr_27_reg_956 <= zext_ln225_fu_560_p1;
        v225_0_addr_27_reg_956_pp0_iter1_reg <= v225_0_addr_27_reg_956;
        v225_0_addr_27_reg_956_pp0_iter2_reg <= v225_0_addr_27_reg_956_pp0_iter1_reg;
        v225_0_addr_28_reg_1085 <= zext_ln232_fu_626_p1;
        v225_0_addr_28_reg_1085_pp0_iter2_reg <= v225_0_addr_28_reg_1085;
        v225_1_addr_25_reg_966 <= zext_ln225_fu_560_p1;
        v225_1_addr_25_reg_966_pp0_iter1_reg <= v225_1_addr_25_reg_966;
        v225_1_addr_25_reg_966_pp0_iter2_reg <= v225_1_addr_25_reg_966_pp0_iter1_reg;
        v225_1_addr_26_reg_1095 <= zext_ln232_fu_626_p1;
        v225_1_addr_26_reg_1095_pp0_iter2_reg <= v225_1_addr_26_reg_1095;
        v225_2_addr_25_reg_971 <= zext_ln225_fu_560_p1;
        v225_2_addr_25_reg_971_pp0_iter1_reg <= v225_2_addr_25_reg_971;
        v225_2_addr_25_reg_971_pp0_iter2_reg <= v225_2_addr_25_reg_971_pp0_iter1_reg;
        v225_2_addr_26_reg_1100 <= zext_ln232_fu_626_p1;
        v225_2_addr_26_reg_1100_pp0_iter2_reg <= v225_2_addr_26_reg_1100;
        v225_3_addr_25_reg_976 <= zext_ln225_fu_560_p1;
        v225_3_addr_25_reg_976_pp0_iter1_reg <= v225_3_addr_25_reg_976;
        v225_3_addr_25_reg_976_pp0_iter2_reg <= v225_3_addr_25_reg_976_pp0_iter1_reg;
        v225_3_addr_26_reg_1105 <= zext_ln232_fu_626_p1;
        v225_3_addr_26_reg_1105_pp0_iter2_reg <= v225_3_addr_26_reg_1105;
        v225_3_addr_26_reg_1105_pp0_iter3_reg <= v225_3_addr_26_reg_1105_pp0_iter2_reg;
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
        icmp_ln170_reg_885 <= icmp_ln170_fu_468_p2;
        or_ln179_5_reg_920[7 : 1] <= or_ln179_5_fu_514_p3[7 : 1];
        or_ln179_5_reg_920_pp0_iter1_reg[7 : 1] <= or_ln179_5_reg_920[7 : 1];
        v116_reg_879 <= ap_sig_allocacmp_v116;
        v225_0_addr_25_reg_899[12 : 0] <= zext_ln171_fu_496_p1[12 : 0];
        v225_0_addr_25_reg_899_pp0_iter1_reg[12 : 0] <= v225_0_addr_25_reg_899[12 : 0];
        v225_0_addr_25_reg_899_pp0_iter2_reg[12 : 0] <= v225_0_addr_25_reg_899_pp0_iter1_reg[12 : 0];
        v225_0_addr_26_reg_935[12 : 0] <= zext_ln179_fu_544_p1[12 : 0];
        v225_0_addr_26_reg_935_pp0_iter1_reg[12 : 0] <= v225_0_addr_26_reg_935[12 : 0];
        v225_0_addr_26_reg_935_pp0_iter2_reg[12 : 0] <= v225_0_addr_26_reg_935_pp0_iter1_reg[12 : 0];
        v225_1_addr_23_reg_904[12 : 0] <= zext_ln171_fu_496_p1[12 : 0];
        v225_1_addr_23_reg_904_pp0_iter1_reg[12 : 0] <= v225_1_addr_23_reg_904[12 : 0];
        v225_1_addr_23_reg_904_pp0_iter2_reg[12 : 0] <= v225_1_addr_23_reg_904_pp0_iter1_reg[12 : 0];
        v225_1_addr_24_reg_940[12 : 0] <= zext_ln179_fu_544_p1[12 : 0];
        v225_1_addr_24_reg_940_pp0_iter1_reg[12 : 0] <= v225_1_addr_24_reg_940[12 : 0];
        v225_1_addr_24_reg_940_pp0_iter2_reg[12 : 0] <= v225_1_addr_24_reg_940_pp0_iter1_reg[12 : 0];
        v225_2_addr_23_reg_909[12 : 0] <= zext_ln171_fu_496_p1[12 : 0];
        v225_2_addr_23_reg_909_pp0_iter1_reg[12 : 0] <= v225_2_addr_23_reg_909[12 : 0];
        v225_2_addr_23_reg_909_pp0_iter2_reg[12 : 0] <= v225_2_addr_23_reg_909_pp0_iter1_reg[12 : 0];
        v225_2_addr_24_reg_945[12 : 0] <= zext_ln179_fu_544_p1[12 : 0];
        v225_2_addr_24_reg_945_pp0_iter1_reg[12 : 0] <= v225_2_addr_24_reg_945[12 : 0];
        v225_2_addr_24_reg_945_pp0_iter2_reg[12 : 0] <= v225_2_addr_24_reg_945_pp0_iter1_reg[12 : 0];
        v225_3_addr_23_reg_914[12 : 0] <= zext_ln171_fu_496_p1[12 : 0];
        v225_3_addr_23_reg_914_pp0_iter1_reg[12 : 0] <= v225_3_addr_23_reg_914[12 : 0];
        v225_3_addr_23_reg_914_pp0_iter2_reg[12 : 0] <= v225_3_addr_23_reg_914_pp0_iter1_reg[12 : 0];
        v225_3_addr_24_reg_950[12 : 0] <= zext_ln179_fu_544_p1[12 : 0];
        v225_3_addr_24_reg_950_pp0_iter1_reg[12 : 0] <= v225_3_addr_24_reg_950[12 : 0];
        v225_3_addr_24_reg_950_pp0_iter2_reg[12 : 0] <= v225_3_addr_24_reg_950_pp0_iter1_reg[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_423 <= v225_3_q1;
        reg_427 <= v225_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_436 <= grp_fu_19533_p_dout0;
        reg_440 <= grp_fu_19537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_444 <= grp_fu_19541_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_448 <= grp_fu_19533_p_dout0;
        reg_452 <= grp_fu_19537_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_456 <= grp_fu_19541_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v121_reg_1021 <= v121_fu_587_p1;
        v127_reg_1028 <= v127_fu_592_p1;
        v225_0_addr_29_reg_1140 <= zext_ln277_fu_651_p1;
        v225_0_addr_29_reg_1140_pp0_iter2_reg <= v225_0_addr_29_reg_1140;
        v225_0_addr_29_reg_1140_pp0_iter3_reg <= v225_0_addr_29_reg_1140_pp0_iter2_reg;
        v225_0_addr_30_reg_1145 <= zext_ln284_fu_655_p1;
        v225_0_addr_30_reg_1145_pp0_iter2_reg <= v225_0_addr_30_reg_1145;
        v225_0_addr_30_reg_1145_pp0_iter3_reg <= v225_0_addr_30_reg_1145_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1040 <= grp_fu_19545_p_dout0;
        v128_reg_1045 <= grp_fu_19549_p_dout0;
        v134_reg_1050 <= grp_fu_19553_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1070 <= grp_fu_19545_p_dout0;
        v145_reg_1075 <= grp_fu_19549_p_dout0;
        v150_reg_1080 <= grp_fu_19553_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1125 <= grp_fu_19545_p_dout0;
        v161_reg_1130 <= grp_fu_19549_p_dout0;
        v167_reg_1135 <= grp_fu_19553_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1165 <= grp_fu_19545_p_dout0;
        v178_reg_1175 <= grp_fu_19549_p_dout0;
        v183_reg_1185 <= grp_fu_19553_p_dout0;
        v225_1_load_24_reg_1170 <= v225_1_q1;
        v225_1_load_25_reg_1180 <= v225_1_q0;
        v225_2_load_24_reg_1190 <= v225_2_q1;
        v225_2_load_25_reg_1195 <= v225_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1215 <= grp_fu_19545_p_dout0;
        v194_reg_1220 <= grp_fu_19549_p_dout0;
        v200_reg_1225 <= grp_fu_19553_p_dout0;
        v225_0_load_29_reg_1230 <= v225_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1250 <= grp_fu_19545_p_dout0;
        v211_reg_1255 <= grp_fu_19549_p_dout0;
        v216_reg_1260 <= grp_fu_19553_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1280 <= grp_fu_19533_p_dout0;
        v212_reg_1285 <= grp_fu_19537_p_dout0;
        v217_reg_1290 <= grp_fu_19541_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_24_reg_981 <= v225_0_q1;
        v225_0_load_25_reg_991 <= v225_0_q0;
        v225_1_load_22_reg_1001 <= v225_1_q1;
        v225_1_load_23_reg_1006 <= v225_1_q0;
        v225_2_load_22_reg_1011 <= v225_2_q1;
        v225_2_load_23_reg_1016 <= v225_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_load_26_reg_1035 <= v225_0_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_885 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v116 = v116_5_fu_86;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_399_p0 = v202_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_399_p0 = v185_fu_686_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_399_p0 = v169_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_399_p0 = v152_fu_659_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_399_p0 = v136_fu_639_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_399_p0 = v117_fu_606_p1;
        end else begin
            grp_fu_399_p0 = 'bx;
        end
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_399_p1 = v205_reg_1250;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_399_p1 = v189_reg_1215;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_399_p1 = v172_reg_1165;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_399_p1 = v156_reg_1125;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_399_p1 = v139_reg_1070;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_399_p1 = v122_reg_1040;
        end else begin
            grp_fu_399_p1 = 'bx;
        end
    end else begin
        grp_fu_399_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_403_p0 = v207_fu_704_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_403_p0 = v191_fu_690_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_403_p0 = v174_fu_678_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_403_p0 = v158_fu_664_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_403_p0 = v141_fu_643_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_403_p0 = v124_fu_610_p1;
        end else begin
            grp_fu_403_p0 = 'bx;
        end
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_403_p1 = v211_reg_1255;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_403_p1 = v194_reg_1220;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_403_p1 = v178_reg_1175;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_403_p1 = v161_reg_1130;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_403_p1 = v145_reg_1075;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_403_p1 = v128_reg_1045;
        end else begin
            grp_fu_403_p1 = 'bx;
        end
    end else begin
        grp_fu_403_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_407_p0 = v213_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_407_p0 = v196_fu_694_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_407_p0 = v180_fu_682_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_407_p0 = v163_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_407_p0 = v147_fu_647_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_407_p0 = v130_fu_614_p1;
        end else begin
            grp_fu_407_p0 = 'bx;
        end
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_407_p1 = v216_reg_1260;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_407_p1 = v200_reg_1225;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_407_p1 = v183_reg_1185;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_407_p1 = v167_reg_1135;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_407_p1 = v150_reg_1080;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_407_p1 = v134_reg_1050;
        end else begin
            grp_fu_407_p1 = 'bx;
        end
    end else begin
        grp_fu_407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_411_p0 = v199_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_411_p0 = v188_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_411_p0 = v166_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_411_p0 = v155_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = v133_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p0 = v120_1;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_411_p1 = v121_reg_1021;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_411_p1 = v127_reg_1028;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_411_p1 = v121_fu_587_p1;
    end else begin
        grp_fu_411_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_415_p0 = v210_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p0 = v188_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_415_p0 = v177_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_415_p0 = v155_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_415_p0 = v144_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p0 = v120_1;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_415_p1 = v127_reg_1028;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_415_p1 = v121_reg_1021;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p1 = v127_fu_592_p1;
    end else begin
        grp_fu_415_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_419_p0 = v210_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_419_p0 = v199_1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_419_p0 = v177_1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_419_p0 = v166_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_419_p0 = v144_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p0 = v133_1;
    end else begin
        grp_fu_419_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_419_p1 = v121_reg_1021;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_419_p1 = v127_reg_1028;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_419_p1 = v121_fu_587_p1;
    end else begin
        grp_fu_419_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_30_reg_1145_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_28_reg_1085_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_26_reg_935_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_655_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_544_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_29_reg_1140_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_27_reg_956_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_25_reg_899_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_560_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_496_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d0_local = bitcast_ln289_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln237_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_738_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln283_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln231_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln178_fu_733_p1;
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
        v225_1_address0_local = v225_1_addr_26_reg_1095_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_24_reg_940_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_544_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_25_reg_966_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_23_reg_904_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_25_reg_966;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_496_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_1_d0_local = bitcast_ln250_fu_768_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln198_fu_718_p1;
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
            v225_1_d1_local = bitcast_ln244_fu_763_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln192_fu_713_p1;
        end else begin
            v225_1_d1_local = 'bx;
        end
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address0_local = v225_2_addr_26_reg_1100_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_24_reg_945_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_544_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_25_reg_971_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_23_reg_909_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_25_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_496_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d0_local = bitcast_ln263_fu_778_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln211_fu_728_p1;
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
            v225_2_d1_local = bitcast_ln257_fu_773_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln205_fu_723_p1;
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
        v225_3_address0_local = v225_3_addr_26_reg_1105_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_23_reg_914_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_24_reg_950;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_25_reg_976_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_24_reg_950_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_25_reg_976;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_23_reg_914;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d0_local = bitcast_ln276_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln218_fu_743_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln270_fu_783_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln224_fu_748_p1;
        end else begin
            v225_3_d1_local = 'bx;
        end
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln170_fu_596_p2 = (v116_reg_879 + 8'd2);
assign add_ln171_fu_490_p2 = (mul_ln171_2 + zext_ln175_61_fu_474_p1);
assign add_ln175_fu_478_p2 = (mul_ln175 + zext_ln175_61_fu_474_p1);
assign add_ln179_fu_538_p2 = (mul_ln171_2 + zext_ln182_61_fu_522_p1);
assign add_ln182_fu_526_p2 = (mul_ln175 + zext_ln182_61_fu_522_p1);
assign add_ln225_fu_555_p2 = (mul_ln225_2 + zext_ln175_fu_552_p1);
assign add_ln232_fu_621_p2 = (mul_ln225_2 + zext_ln182_fu_618_p1);
assign add_ln277_fu_568_p2 = (mul_ln277_2 + zext_ln175_fu_552_p1);
assign add_ln284_fu_634_p2 = (mul_ln277_2 + zext_ln182_fu_618_p1);
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
assign bitcast_ln178_fu_733_p1 = reg_436;
assign bitcast_ln185_fu_738_p1 = reg_440;
assign bitcast_ln192_fu_713_p1 = reg_444;
assign bitcast_ln198_fu_718_p1 = reg_448;
assign bitcast_ln205_fu_723_p1 = reg_452;
assign bitcast_ln211_fu_728_p1 = reg_456;
assign bitcast_ln218_fu_743_p1 = reg_448;
assign bitcast_ln224_fu_748_p1 = reg_452;
assign bitcast_ln231_fu_753_p1 = reg_444;
assign bitcast_ln237_fu_758_p1 = reg_436;
assign bitcast_ln244_fu_763_p1 = reg_440;
assign bitcast_ln250_fu_768_p1 = reg_456;
assign bitcast_ln257_fu_773_p1 = reg_436;
assign bitcast_ln263_fu_778_p1 = reg_440;
assign bitcast_ln270_fu_783_p1 = reg_444;
assign bitcast_ln276_fu_788_p1 = v206_reg_1280;
assign bitcast_ln283_fu_792_p1 = v212_reg_1285;
assign bitcast_ln289_fu_796_p1 = v217_reg_1290;
assign grp_fu_19533_p_ce = 1'b1;
assign grp_fu_19533_p_din0 = grp_fu_399_p0;
assign grp_fu_19533_p_din1 = grp_fu_399_p1;
assign grp_fu_19533_p_opcode = 2'd0;
assign grp_fu_19537_p_ce = 1'b1;
assign grp_fu_19537_p_din0 = grp_fu_403_p0;
assign grp_fu_19537_p_din1 = grp_fu_403_p1;
assign grp_fu_19537_p_opcode = 2'd0;
assign grp_fu_19541_p_ce = 1'b1;
assign grp_fu_19541_p_din0 = grp_fu_407_p0;
assign grp_fu_19541_p_din1 = grp_fu_407_p1;
assign grp_fu_19541_p_opcode = 2'd0;
assign grp_fu_19545_p_ce = 1'b1;
assign grp_fu_19545_p_din0 = grp_fu_411_p0;
assign grp_fu_19545_p_din1 = grp_fu_411_p1;
assign grp_fu_19549_p_ce = 1'b1;
assign grp_fu_19549_p_din0 = grp_fu_415_p0;
assign grp_fu_19549_p_din1 = grp_fu_415_p1;
assign grp_fu_19553_p_ce = 1'b1;
assign grp_fu_19553_p_din0 = grp_fu_419_p0;
assign grp_fu_19553_p_din1 = grp_fu_419_p1;
assign icmp_ln170_fu_468_p2 = ((ap_sig_allocacmp_v116 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln179_5_fu_514_p3 = {{tmp_s_fu_504_p4}, {1'd1}};
assign select_ln175_fu_573_p3 = ((empty[0:0] == 1'b1) ? v227_5_q1 : v227_1_q1);
assign select_ln182_fu_580_p3 = ((empty[0:0] == 1'b1) ? v227_5_q0 : v227_1_q0);
assign tmp_s_fu_504_p4 = {{ap_sig_allocacmp_v116[7:1]}};
assign v117_fu_606_p1 = v225_0_load_24_reg_981;
assign v121_fu_587_p1 = select_ln175_reg_986;
assign v124_fu_610_p1 = v225_0_load_25_reg_991;
assign v127_fu_592_p1 = select_ln182_reg_996;
assign v130_fu_614_p1 = v225_1_load_22_reg_1001;
assign v136_fu_639_p1 = v225_1_load_23_reg_1006;
assign v141_fu_643_p1 = v225_2_load_22_reg_1011;
assign v147_fu_647_p1 = v225_2_load_23_reg_1016;
assign v152_fu_659_p1 = reg_423;
assign v158_fu_664_p1 = reg_427;
assign v163_fu_669_p1 = v225_0_load_26_reg_1035;
assign v169_fu_673_p1 = reg_431;
assign v174_fu_678_p1 = v225_1_load_24_reg_1170;
assign v180_fu_682_p1 = v225_1_load_25_reg_1180;
assign v185_fu_686_p1 = v225_2_load_24_reg_1190;
assign v191_fu_690_p1 = v225_2_load_25_reg_1195;
assign v196_fu_694_p1 = reg_423;
assign v202_fu_699_p1 = reg_427;
assign v207_fu_704_p1 = reg_431;
assign v213_fu_709_p1 = v225_0_load_29_reg_1230;
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
assign v227_1_address0 = zext_ln182_62_fu_532_p1;
assign v227_1_address1 = zext_ln175_62_fu_484_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_5_address0 = zext_ln182_62_fu_532_p1;
assign v227_5_address1 = zext_ln175_62_fu_484_p1;
assign v227_5_ce0 = v227_5_ce0_local;
assign v227_5_ce1 = v227_5_ce1_local;
assign zext_ln171_fu_496_p1 = add_ln171_fu_490_p2;
assign zext_ln175_61_fu_474_p1 = ap_sig_allocacmp_v116;
assign zext_ln175_62_fu_484_p1 = add_ln175_fu_478_p2;
assign zext_ln175_fu_552_p1 = v116_reg_879;
assign zext_ln179_fu_544_p1 = add_ln179_fu_538_p2;
assign zext_ln182_61_fu_522_p1 = or_ln179_5_fu_514_p3;
assign zext_ln182_62_fu_532_p1 = add_ln182_fu_526_p2;
assign zext_ln182_fu_618_p1 = or_ln179_5_reg_920_pp0_iter1_reg;
assign zext_ln225_fu_560_p1 = add_ln225_fu_555_p2;
assign zext_ln232_fu_626_p1 = add_ln232_fu_621_p2;
assign zext_ln277_fu_651_p1 = add_ln277_reg_961_pp0_iter1_reg;
assign zext_ln284_fu_655_p1 = add_ln284_reg_1090;
always @ (posedge ap_clk) begin
    v225_0_addr_25_reg_899[13] <= 1'b0;
    v225_0_addr_25_reg_899_pp0_iter1_reg[13] <= 1'b0;
    v225_0_addr_25_reg_899_pp0_iter2_reg[13] <= 1'b0;
    v225_1_addr_23_reg_904[13] <= 1'b0;
    v225_1_addr_23_reg_904_pp0_iter1_reg[13] <= 1'b0;
    v225_1_addr_23_reg_904_pp0_iter2_reg[13] <= 1'b0;
    v225_2_addr_23_reg_909[13] <= 1'b0;
    v225_2_addr_23_reg_909_pp0_iter1_reg[13] <= 1'b0;
    v225_2_addr_23_reg_909_pp0_iter2_reg[13] <= 1'b0;
    v225_3_addr_23_reg_914[13] <= 1'b0;
    v225_3_addr_23_reg_914_pp0_iter1_reg[13] <= 1'b0;
    v225_3_addr_23_reg_914_pp0_iter2_reg[13] <= 1'b0;
    or_ln179_5_reg_920[0] <= 1'b1;
    or_ln179_5_reg_920_pp0_iter1_reg[0] <= 1'b1;
    v225_0_addr_26_reg_935[13] <= 1'b0;
    v225_0_addr_26_reg_935_pp0_iter1_reg[13] <= 1'b0;
    v225_0_addr_26_reg_935_pp0_iter2_reg[13] <= 1'b0;
    v225_1_addr_24_reg_940[13] <= 1'b0;
    v225_1_addr_24_reg_940_pp0_iter1_reg[13] <= 1'b0;
    v225_1_addr_24_reg_940_pp0_iter2_reg[13] <= 1'b0;
    v225_2_addr_24_reg_945[13] <= 1'b0;
    v225_2_addr_24_reg_945_pp0_iter1_reg[13] <= 1'b0;
    v225_2_addr_24_reg_945_pp0_iter2_reg[13] <= 1'b0;
    v225_3_addr_24_reg_950[13] <= 1'b0;
    v225_3_addr_24_reg_950_pp0_iter1_reg[13] <= 1'b0;
    v225_3_addr_24_reg_950_pp0_iter2_reg[13] <= 1'b0;
end
endmodule 
