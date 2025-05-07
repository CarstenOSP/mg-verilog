module backprop_update_weights_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,norm_44); 
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
output   weights3_we1;
output  [63:0] weights3_d1;
input  [63:0] weights3_q1;
input  [63:0] norm_44;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_reg_912;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_319;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_323;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_328;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_333;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_338;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_343;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] grp_fu_315_p2;
reg   [63:0] reg_348;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage23_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_4_reg_907;
reg   [7:0] weights3_addr_reg_916;
reg   [7:0] weights3_addr_reg_916_pp0_iter1_reg;
reg   [7:0] weights3_addr_reg_916_pp0_iter2_reg;
reg   [7:0] weights3_addr_24_reg_921;
reg   [7:0] weights3_addr_24_reg_921_pp0_iter1_reg;
reg   [7:0] weights3_addr_24_reg_921_pp0_iter2_reg;
reg   [5:0] tmp_12_reg_927;
reg   [4:0] tmp_14_reg_933;
reg   [7:0] weights3_addr_25_reg_938;
reg   [7:0] weights3_addr_25_reg_938_pp0_iter1_reg;
reg   [7:0] weights3_addr_25_reg_938_pp0_iter2_reg;
wire   [7:0] tmp_13_fu_450_p3;
reg   [7:0] tmp_13_reg_943;
reg   [7:0] weights3_addr_26_reg_966;
reg   [7:0] weights3_addr_26_reg_966_pp0_iter1_reg;
reg   [7:0] weights3_addr_26_reg_966_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_fu_462_p1;
reg   [7:0] weights3_addr_27_reg_977;
reg   [7:0] weights3_addr_27_reg_977_pp0_iter1_reg;
reg   [7:0] weights3_addr_27_reg_977_pp0_iter2_reg;
reg   [7:0] weights3_addr_30_reg_982;
reg   [7:0] weights3_addr_30_reg_982_pp0_iter1_reg;
reg   [7:0] weights3_addr_30_reg_982_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_2_fu_489_p1;
reg   [7:0] weights3_addr_28_reg_993;
reg   [7:0] weights3_addr_28_reg_993_pp0_iter1_reg;
reg   [7:0] weights3_addr_28_reg_993_pp0_iter2_reg;
reg   [7:0] weights3_addr_29_reg_998;
reg   [7:0] weights3_addr_29_reg_998_pp0_iter1_reg;
reg   [7:0] weights3_addr_29_reg_998_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_4_fu_514_p1;
reg   [7:0] weights3_addr_31_reg_1009;
reg   [7:0] weights3_addr_31_reg_1009_pp0_iter1_reg;
reg   [7:0] weights3_addr_31_reg_1009_pp0_iter2_reg;
reg   [7:0] weights3_addr_32_reg_1014;
reg   [7:0] weights3_addr_32_reg_1014_pp0_iter1_reg;
reg   [7:0] weights3_addr_32_reg_1014_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_6_fu_539_p1;
reg   [7:0] weights3_addr_33_reg_1025;
reg   [7:0] weights3_addr_33_reg_1025_pp0_iter1_reg;
reg   [7:0] weights3_addr_33_reg_1025_pp0_iter2_reg;
reg   [7:0] weights3_addr_34_reg_1030;
reg   [7:0] weights3_addr_34_reg_1030_pp0_iter1_reg;
reg   [7:0] weights3_addr_34_reg_1030_pp0_iter2_reg;
reg   [7:0] weights3_addr_34_reg_1030_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_14_fu_564_p1;
reg   [63:0] weights3_load_34_reg_1041;
reg   [7:0] weights3_addr_35_reg_1046;
reg   [7:0] weights3_addr_35_reg_1046_pp0_iter1_reg;
reg   [7:0] weights3_addr_35_reg_1046_pp0_iter2_reg;
reg   [7:0] weights3_addr_35_reg_1046_pp0_iter3_reg;
reg   [7:0] weights3_addr_36_reg_1052;
reg   [7:0] weights3_addr_36_reg_1052_pp0_iter1_reg;
reg   [7:0] weights3_addr_36_reg_1052_pp0_iter2_reg;
reg   [7:0] weights3_addr_36_reg_1052_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_8_fu_589_p1;
reg   [63:0] weights3_load_36_reg_1062;
reg   [7:0] weights3_addr_37_reg_1067;
reg   [7:0] weights3_addr_37_reg_1067_pp0_iter1_reg;
reg   [7:0] weights3_addr_37_reg_1067_pp0_iter2_reg;
reg   [7:0] weights3_addr_37_reg_1067_pp0_iter3_reg;
reg   [7:0] weights3_addr_38_reg_1073;
reg   [7:0] weights3_addr_38_reg_1073_pp0_iter1_reg;
reg   [7:0] weights3_addr_38_reg_1073_pp0_iter2_reg;
reg   [7:0] weights3_addr_38_reg_1073_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_10_fu_614_p1;
reg   [63:0] weights3_load_38_reg_1083;
reg   [7:0] weights3_addr_39_reg_1088;
reg   [7:0] weights3_addr_39_reg_1088_pp0_iter1_reg;
reg   [7:0] weights3_addr_39_reg_1088_pp0_iter2_reg;
reg   [7:0] weights3_addr_39_reg_1088_pp0_iter3_reg;
reg   [7:0] weights3_addr_40_reg_1094;
reg   [7:0] weights3_addr_40_reg_1094_pp0_iter1_reg;
reg   [7:0] weights3_addr_40_reg_1094_pp0_iter2_reg;
reg   [7:0] weights3_addr_40_reg_1094_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_12_fu_639_p1;
reg   [63:0] weights3_load_40_reg_1104;
reg   [7:0] weights3_addr_41_reg_1109;
reg   [7:0] weights3_addr_41_reg_1109_pp0_iter1_reg;
reg   [7:0] weights3_addr_41_reg_1109_pp0_iter2_reg;
reg   [7:0] weights3_addr_41_reg_1109_pp0_iter3_reg;
reg   [7:0] weights3_addr_42_reg_1115;
reg   [7:0] weights3_addr_42_reg_1115_pp0_iter1_reg;
reg   [7:0] weights3_addr_42_reg_1115_pp0_iter2_reg;
reg   [7:0] weights3_addr_42_reg_1115_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_16_fu_664_p1;
reg   [63:0] weights3_load_42_reg_1125;
reg   [7:0] weights3_addr_43_reg_1130;
reg   [7:0] weights3_addr_43_reg_1130_pp0_iter1_reg;
reg   [7:0] weights3_addr_43_reg_1130_pp0_iter2_reg;
reg   [7:0] weights3_addr_43_reg_1130_pp0_iter3_reg;
reg   [7:0] weights3_addr_44_reg_1136;
reg   [7:0] weights3_addr_44_reg_1136_pp0_iter1_reg;
reg   [7:0] weights3_addr_44_reg_1136_pp0_iter2_reg;
reg   [7:0] weights3_addr_44_reg_1136_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_18_fu_689_p1;
reg   [63:0] weights3_load_44_reg_1146;
reg   [7:0] weights3_addr_45_reg_1151;
reg   [7:0] weights3_addr_45_reg_1151_pp0_iter1_reg;
reg   [7:0] weights3_addr_45_reg_1151_pp0_iter2_reg;
reg   [7:0] weights3_addr_45_reg_1151_pp0_iter3_reg;
reg   [7:0] weights3_addr_46_reg_1157;
reg   [7:0] weights3_addr_46_reg_1157_pp0_iter1_reg;
reg   [7:0] weights3_addr_46_reg_1157_pp0_iter2_reg;
reg   [7:0] weights3_addr_46_reg_1157_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_20_fu_714_p1;
reg   [63:0] weights3_load_46_reg_1167;
wire   [63:0] bitcast_ln194_22_fu_719_p1;
wire   [63:0] bitcast_ln194_24_fu_723_p1;
wire   [63:0] bitcast_ln194_26_fu_728_p1;
wire   [63:0] bitcast_ln194_28_fu_732_p1;
wire   [63:0] bitcast_ln194_30_fu_737_p1;
wire   [63:0] bitcast_ln194_32_fu_741_p1;
wire   [63:0] bitcast_ln194_34_fu_746_p1;
wire   [63:0] bitcast_ln194_36_fu_750_p1;
wire   [63:0] bitcast_ln194_38_fu_755_p1;
wire   [63:0] bitcast_ln194_40_fu_759_p1;
wire   [63:0] bitcast_ln194_42_fu_764_p1;
wire   [63:0] bitcast_ln194_44_fu_778_p1;
wire   [63:0] bitcast_ln194_46_fu_783_p1;
reg   [63:0] div213_4_reg_1237;
reg   [63:0] div213_4_1_reg_1242;
reg   [63:0] div213_4_2_reg_1247;
reg   [63:0] div213_5_reg_1252;
reg   [63:0] div213_5_1_reg_1257;
reg   [63:0] div213_5_2_reg_1262;
reg   [63:0] div213_6_reg_1267;
reg   [63:0] div213_6_1_reg_1272;
reg   [63:0] div213_6_2_reg_1277;
reg   [63:0] div213_7_reg_1282;
reg   [63:0] div213_7_1_reg_1287;
reg   [63:0] div213_7_2_reg_1292;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_390_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_413_p1;
wire   [63:0] zext_ln194_2_fu_445_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_3_fu_457_p1;
wire   [63:0] zext_ln194_4_fu_472_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_7_fu_484_p1;
wire   [63:0] zext_ln194_5_fu_499_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_6_fu_509_p1;
wire   [63:0] zext_ln194_8_fu_524_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln194_9_fu_534_p1;
wire   [63:0] zext_ln194_10_fu_549_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_11_fu_559_p1;
wire   [63:0] zext_ln194_12_fu_574_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln194_13_fu_584_p1;
wire   [63:0] zext_ln194_14_fu_599_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln194_15_fu_609_p1;
wire   [63:0] zext_ln194_16_fu_624_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln194_17_fu_634_p1;
wire   [63:0] zext_ln194_18_fu_649_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln194_19_fu_659_p1;
wire   [63:0] zext_ln194_20_fu_674_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln194_21_fu_684_p1;
wire   [63:0] zext_ln194_22_fu_699_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln194_23_fu_709_p1;
reg   [6:0] i_fu_104;
wire   [6:0] add_ln192_fu_768_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    weights3_we1_local;
reg   [63:0] weights3_d1_local;
wire   [63:0] bitcast_ln194_1_fu_787_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln194_3_fu_792_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] bitcast_ln194_5_fu_797_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln194_7_fu_802_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] bitcast_ln194_15_fu_807_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] bitcast_ln194_9_fu_812_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln194_11_fu_817_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln194_13_fu_822_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln194_17_fu_827_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln194_19_fu_832_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln194_21_fu_837_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln194_23_fu_842_p1;
wire    ap_block_pp0_stage12;
reg    weights3_we0_local;
reg   [63:0] weights3_d0_local;
wire   [63:0] bitcast_ln194_25_fu_847_p1;
wire   [63:0] bitcast_ln194_27_fu_851_p1;
wire   [63:0] bitcast_ln194_29_fu_855_p1;
wire   [63:0] bitcast_ln194_31_fu_859_p1;
wire   [63:0] bitcast_ln194_33_fu_863_p1;
wire   [63:0] bitcast_ln194_35_fu_867_p1;
wire   [63:0] bitcast_ln194_37_fu_871_p1;
wire   [63:0] bitcast_ln194_39_fu_875_p1;
wire   [63:0] bitcast_ln194_41_fu_879_p1;
wire   [63:0] bitcast_ln194_43_fu_883_p1;
wire   [63:0] bitcast_ln194_45_fu_887_p1;
wire   [63:0] bitcast_ln194_47_fu_891_p1;
reg   [63:0] grp_fu_315_p0;
wire   [5:0] empty_fu_372_p1;
wire   [7:0] p_shl_fu_376_p3;
wire   [7:0] zext_ln21_fu_368_p1;
wire   [7:0] empty_47_fu_384_p2;
wire   [6:0] tmp_s_fu_395_p4;
wire   [7:0] or_ln5_fu_405_p3;
wire   [7:0] or_ln194_1_fu_438_p3;
wire   [7:0] add_ln194_fu_467_p2;
wire   [7:0] or_ln194_2_fu_477_p3;
wire   [7:0] add_ln194_1_fu_494_p2;
wire   [7:0] empty_48_fu_504_p2;
wire   [7:0] add_ln194_2_fu_519_p2;
wire   [7:0] empty_49_fu_529_p2;
wire   [7:0] add_ln194_3_fu_544_p2;
wire   [7:0] add_ln194_4_fu_554_p2;
wire   [7:0] empty_50_fu_569_p2;
wire   [7:0] add_ln194_5_fu_579_p2;
wire   [7:0] add_ln194_6_fu_594_p2;
wire   [7:0] empty_51_fu_604_p2;
wire   [7:0] add_ln194_7_fu_619_p2;
wire   [7:0] add_ln194_8_fu_629_p2;
wire   [7:0] empty_52_fu_644_p2;
wire   [7:0] add_ln194_9_fu_654_p2;
wire   [7:0] add_ln194_10_fu_669_p2;
wire   [7:0] empty_53_fu_679_p2;
wire   [7:0] add_ln194_11_fu_694_p2;
wire   [7:0] add_ln194_12_fu_704_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [23:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U399(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_315_p0),.din1(norm_44),.ce(1'b1),.dout(grp_fu_315_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage23),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_104 <= 7'd0;
    end else if (((tmp_reg_912 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        i_fu_104 <= add_ln192_fu_768_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_323 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_323 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_328 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_328 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_333 <= weights3_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_333 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_338 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_338 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_343 <= weights3_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_343 <= weights3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_4_1_reg_1242 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_4_2_reg_1247 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div213_4_reg_1237 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_5_1_reg_1257 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_5_2_reg_1262 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_5_reg_1252 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div213_6_1_reg_1272 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div213_6_2_reg_1277 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div213_6_reg_1267 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        div213_7_1_reg_1287 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_7_2_reg_1292 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        div213_7_reg_1282 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_reg_907 <= ap_sig_allocacmp_i_4;
        tmp_12_reg_927 <= {{empty_47_fu_384_p2[7:2]}};
        tmp_14_reg_933 <= {{empty_47_fu_384_p2[7:3]}};
        tmp_reg_912 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_addr_24_reg_921[7 : 1] <= zext_ln194_1_fu_413_p1[7 : 1];
        weights3_addr_24_reg_921_pp0_iter1_reg[7 : 1] <= weights3_addr_24_reg_921[7 : 1];
        weights3_addr_24_reg_921_pp0_iter2_reg[7 : 1] <= weights3_addr_24_reg_921_pp0_iter1_reg[7 : 1];
        weights3_addr_reg_916 <= zext_ln194_fu_390_p1;
        weights3_addr_reg_916_pp0_iter1_reg <= weights3_addr_reg_916;
        weights3_addr_reg_916_pp0_iter2_reg <= weights3_addr_reg_916_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_319 <= weights3_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_348 <= grp_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_13_reg_943[7 : 2] <= tmp_13_fu_450_p3[7 : 2];
        weights3_addr_25_reg_938[7 : 2] <= zext_ln194_2_fu_445_p1[7 : 2];
        weights3_addr_25_reg_938_pp0_iter1_reg[7 : 2] <= weights3_addr_25_reg_938[7 : 2];
        weights3_addr_25_reg_938_pp0_iter2_reg[7 : 2] <= weights3_addr_25_reg_938_pp0_iter1_reg[7 : 2];
        weights3_addr_26_reg_966[7 : 2] <= zext_ln194_3_fu_457_p1[7 : 2];
        weights3_addr_26_reg_966_pp0_iter1_reg[7 : 2] <= weights3_addr_26_reg_966[7 : 2];
        weights3_addr_26_reg_966_pp0_iter2_reg[7 : 2] <= weights3_addr_26_reg_966_pp0_iter1_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_addr_27_reg_977[7 : 2] <= zext_ln194_4_fu_472_p1[7 : 2];
        weights3_addr_27_reg_977_pp0_iter1_reg[7 : 2] <= weights3_addr_27_reg_977[7 : 2];
        weights3_addr_27_reg_977_pp0_iter2_reg[7 : 2] <= weights3_addr_27_reg_977_pp0_iter1_reg[7 : 2];
        weights3_addr_30_reg_982[7 : 3] <= zext_ln194_7_fu_484_p1[7 : 3];
        weights3_addr_30_reg_982_pp0_iter1_reg[7 : 3] <= weights3_addr_30_reg_982[7 : 3];
        weights3_addr_30_reg_982_pp0_iter2_reg[7 : 3] <= weights3_addr_30_reg_982_pp0_iter1_reg[7 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_addr_28_reg_993[7 : 2] <= zext_ln194_5_fu_499_p1[7 : 2];
        weights3_addr_28_reg_993_pp0_iter1_reg[7 : 2] <= weights3_addr_28_reg_993[7 : 2];
        weights3_addr_28_reg_993_pp0_iter2_reg[7 : 2] <= weights3_addr_28_reg_993_pp0_iter1_reg[7 : 2];
        weights3_addr_29_reg_998[7 : 2] <= zext_ln194_6_fu_509_p1[7 : 2];
        weights3_addr_29_reg_998_pp0_iter1_reg[7 : 2] <= weights3_addr_29_reg_998[7 : 2];
        weights3_addr_29_reg_998_pp0_iter2_reg[7 : 2] <= weights3_addr_29_reg_998_pp0_iter1_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_addr_31_reg_1009[7 : 2] <= zext_ln194_8_fu_524_p1[7 : 2];
        weights3_addr_31_reg_1009_pp0_iter1_reg[7 : 2] <= weights3_addr_31_reg_1009[7 : 2];
        weights3_addr_31_reg_1009_pp0_iter2_reg[7 : 2] <= weights3_addr_31_reg_1009_pp0_iter1_reg[7 : 2];
        weights3_addr_32_reg_1014[7 : 2] <= zext_ln194_9_fu_534_p1[7 : 2];
        weights3_addr_32_reg_1014_pp0_iter1_reg[7 : 2] <= weights3_addr_32_reg_1014[7 : 2];
        weights3_addr_32_reg_1014_pp0_iter2_reg[7 : 2] <= weights3_addr_32_reg_1014_pp0_iter1_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_addr_33_reg_1025[7 : 2] <= zext_ln194_10_fu_549_p1[7 : 2];
        weights3_addr_33_reg_1025_pp0_iter1_reg[7 : 2] <= weights3_addr_33_reg_1025[7 : 2];
        weights3_addr_33_reg_1025_pp0_iter2_reg[7 : 2] <= weights3_addr_33_reg_1025_pp0_iter1_reg[7 : 2];
        weights3_addr_34_reg_1030[7 : 2] <= zext_ln194_11_fu_559_p1[7 : 2];
        weights3_addr_34_reg_1030_pp0_iter1_reg[7 : 2] <= weights3_addr_34_reg_1030[7 : 2];
        weights3_addr_34_reg_1030_pp0_iter2_reg[7 : 2] <= weights3_addr_34_reg_1030_pp0_iter1_reg[7 : 2];
        weights3_addr_34_reg_1030_pp0_iter3_reg[7 : 2] <= weights3_addr_34_reg_1030_pp0_iter2_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_addr_35_reg_1046[7 : 2] <= zext_ln194_12_fu_574_p1[7 : 2];
        weights3_addr_35_reg_1046_pp0_iter1_reg[7 : 2] <= weights3_addr_35_reg_1046[7 : 2];
        weights3_addr_35_reg_1046_pp0_iter2_reg[7 : 2] <= weights3_addr_35_reg_1046_pp0_iter1_reg[7 : 2];
        weights3_addr_35_reg_1046_pp0_iter3_reg[7 : 2] <= weights3_addr_35_reg_1046_pp0_iter2_reg[7 : 2];
        weights3_addr_36_reg_1052[7 : 2] <= zext_ln194_13_fu_584_p1[7 : 2];
        weights3_addr_36_reg_1052_pp0_iter1_reg[7 : 2] <= weights3_addr_36_reg_1052[7 : 2];
        weights3_addr_36_reg_1052_pp0_iter2_reg[7 : 2] <= weights3_addr_36_reg_1052_pp0_iter1_reg[7 : 2];
        weights3_addr_36_reg_1052_pp0_iter3_reg[7 : 2] <= weights3_addr_36_reg_1052_pp0_iter2_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_addr_37_reg_1067[7 : 2] <= zext_ln194_14_fu_599_p1[7 : 2];
        weights3_addr_37_reg_1067_pp0_iter1_reg[7 : 2] <= weights3_addr_37_reg_1067[7 : 2];
        weights3_addr_37_reg_1067_pp0_iter2_reg[7 : 2] <= weights3_addr_37_reg_1067_pp0_iter1_reg[7 : 2];
        weights3_addr_37_reg_1067_pp0_iter3_reg[7 : 2] <= weights3_addr_37_reg_1067_pp0_iter2_reg[7 : 2];
        weights3_addr_38_reg_1073[7 : 2] <= zext_ln194_15_fu_609_p1[7 : 2];
        weights3_addr_38_reg_1073_pp0_iter1_reg[7 : 2] <= weights3_addr_38_reg_1073[7 : 2];
        weights3_addr_38_reg_1073_pp0_iter2_reg[7 : 2] <= weights3_addr_38_reg_1073_pp0_iter1_reg[7 : 2];
        weights3_addr_38_reg_1073_pp0_iter3_reg[7 : 2] <= weights3_addr_38_reg_1073_pp0_iter2_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_addr_39_reg_1088[7 : 2] <= zext_ln194_16_fu_624_p1[7 : 2];
        weights3_addr_39_reg_1088_pp0_iter1_reg[7 : 2] <= weights3_addr_39_reg_1088[7 : 2];
        weights3_addr_39_reg_1088_pp0_iter2_reg[7 : 2] <= weights3_addr_39_reg_1088_pp0_iter1_reg[7 : 2];
        weights3_addr_39_reg_1088_pp0_iter3_reg[7 : 2] <= weights3_addr_39_reg_1088_pp0_iter2_reg[7 : 2];
        weights3_addr_40_reg_1094[7 : 2] <= zext_ln194_17_fu_634_p1[7 : 2];
        weights3_addr_40_reg_1094_pp0_iter1_reg[7 : 2] <= weights3_addr_40_reg_1094[7 : 2];
        weights3_addr_40_reg_1094_pp0_iter2_reg[7 : 2] <= weights3_addr_40_reg_1094_pp0_iter1_reg[7 : 2];
        weights3_addr_40_reg_1094_pp0_iter3_reg[7 : 2] <= weights3_addr_40_reg_1094_pp0_iter2_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_addr_41_reg_1109[7 : 2] <= zext_ln194_18_fu_649_p1[7 : 2];
        weights3_addr_41_reg_1109_pp0_iter1_reg[7 : 2] <= weights3_addr_41_reg_1109[7 : 2];
        weights3_addr_41_reg_1109_pp0_iter2_reg[7 : 2] <= weights3_addr_41_reg_1109_pp0_iter1_reg[7 : 2];
        weights3_addr_41_reg_1109_pp0_iter3_reg[7 : 2] <= weights3_addr_41_reg_1109_pp0_iter2_reg[7 : 2];
        weights3_addr_42_reg_1115[7 : 2] <= zext_ln194_19_fu_659_p1[7 : 2];
        weights3_addr_42_reg_1115_pp0_iter1_reg[7 : 2] <= weights3_addr_42_reg_1115[7 : 2];
        weights3_addr_42_reg_1115_pp0_iter2_reg[7 : 2] <= weights3_addr_42_reg_1115_pp0_iter1_reg[7 : 2];
        weights3_addr_42_reg_1115_pp0_iter3_reg[7 : 2] <= weights3_addr_42_reg_1115_pp0_iter2_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_addr_43_reg_1130[7 : 2] <= zext_ln194_20_fu_674_p1[7 : 2];
        weights3_addr_43_reg_1130_pp0_iter1_reg[7 : 2] <= weights3_addr_43_reg_1130[7 : 2];
        weights3_addr_43_reg_1130_pp0_iter2_reg[7 : 2] <= weights3_addr_43_reg_1130_pp0_iter1_reg[7 : 2];
        weights3_addr_43_reg_1130_pp0_iter3_reg[7 : 2] <= weights3_addr_43_reg_1130_pp0_iter2_reg[7 : 2];
        weights3_addr_44_reg_1136[7 : 2] <= zext_ln194_21_fu_684_p1[7 : 2];
        weights3_addr_44_reg_1136_pp0_iter1_reg[7 : 2] <= weights3_addr_44_reg_1136[7 : 2];
        weights3_addr_44_reg_1136_pp0_iter2_reg[7 : 2] <= weights3_addr_44_reg_1136_pp0_iter1_reg[7 : 2];
        weights3_addr_44_reg_1136_pp0_iter3_reg[7 : 2] <= weights3_addr_44_reg_1136_pp0_iter2_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_addr_45_reg_1151[7 : 2] <= zext_ln194_22_fu_699_p1[7 : 2];
        weights3_addr_45_reg_1151_pp0_iter1_reg[7 : 2] <= weights3_addr_45_reg_1151[7 : 2];
        weights3_addr_45_reg_1151_pp0_iter2_reg[7 : 2] <= weights3_addr_45_reg_1151_pp0_iter1_reg[7 : 2];
        weights3_addr_45_reg_1151_pp0_iter3_reg[7 : 2] <= weights3_addr_45_reg_1151_pp0_iter2_reg[7 : 2];
        weights3_addr_46_reg_1157[7 : 2] <= zext_ln194_23_fu_709_p1[7 : 2];
        weights3_addr_46_reg_1157_pp0_iter1_reg[7 : 2] <= weights3_addr_46_reg_1157[7 : 2];
        weights3_addr_46_reg_1157_pp0_iter2_reg[7 : 2] <= weights3_addr_46_reg_1157_pp0_iter1_reg[7 : 2];
        weights3_addr_46_reg_1157_pp0_iter3_reg[7 : 2] <= weights3_addr_46_reg_1157_pp0_iter2_reg[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_load_34_reg_1041 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_load_36_reg_1062 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_load_38_reg_1083 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_load_40_reg_1104 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_load_42_reg_1125 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_load_44_reg_1146 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_load_46_reg_1167 <= weights3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_912 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_315_p0 = bitcast_ln194_46_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_315_p0 = bitcast_ln194_44_fu_778_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_315_p0 = bitcast_ln194_42_fu_764_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_315_p0 = bitcast_ln194_40_fu_759_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_315_p0 = bitcast_ln194_38_fu_755_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_315_p0 = bitcast_ln194_36_fu_750_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_315_p0 = bitcast_ln194_34_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_315_p0 = bitcast_ln194_32_fu_741_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_315_p0 = bitcast_ln194_30_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_315_p0 = bitcast_ln194_28_fu_732_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_315_p0 = bitcast_ln194_26_fu_728_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_315_p0 = bitcast_ln194_24_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_315_p0 = bitcast_ln194_22_fu_719_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_315_p0 = bitcast_ln194_20_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_315_p0 = bitcast_ln194_18_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_315_p0 = bitcast_ln194_16_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_315_p0 = bitcast_ln194_12_fu_639_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_315_p0 = bitcast_ln194_10_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_315_p0 = bitcast_ln194_8_fu_589_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_315_p0 = bitcast_ln194_14_fu_564_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_315_p0 = bitcast_ln194_6_fu_539_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_315_p0 = bitcast_ln194_4_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_315_p0 = bitcast_ln194_2_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_315_p0 = bitcast_ln194_fu_462_p1;
    end else begin
        grp_fu_315_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_address0_local = weights3_addr_46_reg_1157_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_address0_local = weights3_addr_45_reg_1151_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_address0_local = weights3_addr_44_reg_1136_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_address0_local = weights3_addr_43_reg_1130_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_address0_local = weights3_addr_42_reg_1115_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_address0_local = weights3_addr_41_reg_1109_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_address0_local = weights3_addr_40_reg_1094_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_address0_local = weights3_addr_39_reg_1088_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_address0_local = weights3_addr_38_reg_1073_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_address0_local = weights3_addr_37_reg_1067_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_address0_local = weights3_addr_36_reg_1052_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_address0_local = weights3_addr_35_reg_1046_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_address0_local = zext_ln194_23_fu_709_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_address0_local = zext_ln194_21_fu_684_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_address0_local = zext_ln194_19_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_address0_local = zext_ln194_17_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_address0_local = zext_ln194_15_fu_609_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_address0_local = zext_ln194_13_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_address0_local = zext_ln194_11_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address0_local = zext_ln194_9_fu_534_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_address0_local = zext_ln194_6_fu_509_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_address0_local = zext_ln194_7_fu_484_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address0_local = zext_ln194_3_fu_457_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_address0_local = zext_ln194_1_fu_413_p1;
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_address1_local = weights3_addr_34_reg_1030_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_address1_local = weights3_addr_33_reg_1025_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_address1_local = weights3_addr_32_reg_1014_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_address1_local = weights3_addr_31_reg_1009_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_address1_local = weights3_addr_29_reg_998_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_address1_local = weights3_addr_28_reg_993_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_address1_local = weights3_addr_27_reg_977_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_address1_local = weights3_addr_30_reg_982_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_address1_local = weights3_addr_26_reg_966_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_address1_local = weights3_addr_25_reg_938_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_address1_local = weights3_addr_24_reg_921_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_address1_local = weights3_addr_reg_916_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_address1_local = zext_ln194_22_fu_699_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_address1_local = zext_ln194_20_fu_674_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_address1_local = zext_ln194_18_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_address1_local = zext_ln194_16_fu_624_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_address1_local = zext_ln194_14_fu_599_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_address1_local = zext_ln194_12_fu_574_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_address1_local = zext_ln194_10_fu_549_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address1_local = zext_ln194_8_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_address1_local = zext_ln194_5_fu_499_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_address1_local = zext_ln194_4_fu_472_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address1_local = zext_ln194_2_fu_445_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_address1_local = zext_ln194_fu_390_p1;
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights3_d0_local = bitcast_ln194_47_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights3_d0_local = bitcast_ln194_45_fu_887_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_d0_local = bitcast_ln194_43_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_d0_local = bitcast_ln194_41_fu_879_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_d0_local = bitcast_ln194_39_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_d0_local = bitcast_ln194_37_fu_871_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_d0_local = bitcast_ln194_35_fu_867_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            weights3_d0_local = bitcast_ln194_33_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            weights3_d0_local = bitcast_ln194_31_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            weights3_d0_local = bitcast_ln194_29_fu_855_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            weights3_d0_local = bitcast_ln194_27_fu_851_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            weights3_d0_local = bitcast_ln194_25_fu_847_p1;
        end else begin
            weights3_d0_local = 'bx;
        end
    end else begin
        weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_d1_local = bitcast_ln194_23_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_d1_local = bitcast_ln194_21_fu_837_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_d1_local = bitcast_ln194_19_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_d1_local = bitcast_ln194_17_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_d1_local = bitcast_ln194_13_fu_822_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_d1_local = bitcast_ln194_11_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_d1_local = bitcast_ln194_9_fu_812_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_d1_local = bitcast_ln194_15_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_d1_local = bitcast_ln194_7_fu_802_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_d1_local = bitcast_ln194_5_fu_797_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_d1_local = bitcast_ln194_3_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_d1_local = bitcast_ln194_1_fu_787_p1;
    end else begin
        weights3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_we0_local = 1'b1;
    end else begin
        weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_we1_local = 1'b1;
    end else begin
        weights3_we1_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_768_p2 = (i_4_reg_907 + 7'd8);
assign add_ln194_10_fu_669_p2 = (tmp_13_reg_943 + 8'd17);
assign add_ln194_11_fu_694_p2 = (tmp_13_reg_943 + 8'd19);
assign add_ln194_12_fu_704_p2 = (tmp_13_reg_943 + 8'd20);
assign add_ln194_1_fu_494_p2 = (tmp_13_reg_943 + 8'd2);
assign add_ln194_2_fu_519_p2 = (tmp_13_reg_943 + 8'd5);
assign add_ln194_3_fu_544_p2 = (tmp_13_reg_943 + 8'd7);
assign add_ln194_4_fu_554_p2 = (tmp_13_reg_943 + 8'd8);
assign add_ln194_5_fu_579_p2 = (tmp_13_reg_943 + 8'd10);
assign add_ln194_6_fu_594_p2 = (tmp_13_reg_943 + 8'd11);
assign add_ln194_7_fu_619_p2 = (tmp_13_reg_943 + 8'd13);
assign add_ln194_8_fu_629_p2 = (tmp_13_reg_943 + 8'd14);
assign add_ln194_9_fu_654_p2 = (tmp_13_reg_943 + 8'd16);
assign add_ln194_fu_467_p2 = (tmp_13_reg_943 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_614_p1 = reg_319;
assign bitcast_ln194_11_fu_817_p1 = reg_348;
assign bitcast_ln194_12_fu_639_p1 = reg_338;
assign bitcast_ln194_13_fu_822_p1 = reg_348;
assign bitcast_ln194_14_fu_564_p1 = reg_333;
assign bitcast_ln194_15_fu_807_p1 = reg_348;
assign bitcast_ln194_16_fu_664_p1 = reg_328;
assign bitcast_ln194_17_fu_827_p1 = reg_348;
assign bitcast_ln194_18_fu_689_p1 = reg_343;
assign bitcast_ln194_19_fu_832_p1 = reg_348;
assign bitcast_ln194_1_fu_787_p1 = reg_348;
assign bitcast_ln194_20_fu_714_p1 = reg_333;
assign bitcast_ln194_21_fu_837_p1 = reg_348;
assign bitcast_ln194_22_fu_719_p1 = weights3_load_34_reg_1041;
assign bitcast_ln194_23_fu_842_p1 = reg_348;
assign bitcast_ln194_24_fu_723_p1 = reg_323;
assign bitcast_ln194_25_fu_847_p1 = div213_4_reg_1237;
assign bitcast_ln194_26_fu_728_p1 = weights3_load_36_reg_1062;
assign bitcast_ln194_27_fu_851_p1 = div213_4_1_reg_1242;
assign bitcast_ln194_28_fu_732_p1 = reg_319;
assign bitcast_ln194_29_fu_855_p1 = div213_4_2_reg_1247;
assign bitcast_ln194_2_fu_489_p1 = reg_323;
assign bitcast_ln194_30_fu_737_p1 = weights3_load_38_reg_1083;
assign bitcast_ln194_31_fu_859_p1 = div213_5_reg_1252;
assign bitcast_ln194_32_fu_741_p1 = reg_338;
assign bitcast_ln194_33_fu_863_p1 = div213_5_1_reg_1257;
assign bitcast_ln194_34_fu_746_p1 = weights3_load_40_reg_1104;
assign bitcast_ln194_35_fu_867_p1 = div213_5_2_reg_1262;
assign bitcast_ln194_36_fu_750_p1 = reg_328;
assign bitcast_ln194_37_fu_871_p1 = div213_6_reg_1267;
assign bitcast_ln194_38_fu_755_p1 = weights3_load_42_reg_1125;
assign bitcast_ln194_39_fu_875_p1 = div213_6_1_reg_1272;
assign bitcast_ln194_3_fu_792_p1 = reg_348;
assign bitcast_ln194_40_fu_759_p1 = reg_343;
assign bitcast_ln194_41_fu_879_p1 = div213_6_2_reg_1277;
assign bitcast_ln194_42_fu_764_p1 = weights3_load_44_reg_1146;
assign bitcast_ln194_43_fu_883_p1 = div213_7_reg_1282;
assign bitcast_ln194_44_fu_778_p1 = reg_333;
assign bitcast_ln194_45_fu_887_p1 = div213_7_1_reg_1287;
assign bitcast_ln194_46_fu_783_p1 = weights3_load_46_reg_1167;
assign bitcast_ln194_47_fu_891_p1 = div213_7_2_reg_1292;
assign bitcast_ln194_4_fu_514_p1 = reg_319;
assign bitcast_ln194_5_fu_797_p1 = reg_348;
assign bitcast_ln194_6_fu_539_p1 = reg_328;
assign bitcast_ln194_7_fu_802_p1 = reg_348;
assign bitcast_ln194_8_fu_589_p1 = reg_323;
assign bitcast_ln194_9_fu_812_p1 = reg_348;
assign bitcast_ln194_fu_462_p1 = reg_319;
assign empty_47_fu_384_p2 = (p_shl_fu_376_p3 - zext_ln21_fu_368_p1);
assign empty_48_fu_504_p2 = (tmp_13_reg_943 + 8'd3);
assign empty_49_fu_529_p2 = (tmp_13_reg_943 + 8'd6);
assign empty_50_fu_569_p2 = (tmp_13_reg_943 + 8'd9);
assign empty_51_fu_604_p2 = (tmp_13_reg_943 + 8'd12);
assign empty_52_fu_644_p2 = (tmp_13_reg_943 + 8'd15);
assign empty_53_fu_679_p2 = (tmp_13_reg_943 + 8'd18);
assign empty_fu_372_p1 = ap_sig_allocacmp_i_4[5:0];
assign or_ln194_1_fu_438_p3 = {{tmp_12_reg_927}, {2'd2}};
assign or_ln194_2_fu_477_p3 = {{tmp_14_reg_933}, {3'd7}};
assign or_ln5_fu_405_p3 = {{tmp_s_fu_395_p4}, {1'd1}};
assign p_shl_fu_376_p3 = {{empty_fu_372_p1}, {2'd0}};
assign tmp_13_fu_450_p3 = {{tmp_12_reg_927}, {2'd3}};
assign tmp_s_fu_395_p4 = {{empty_47_fu_384_p2[7:1]}};
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign weights3_d0 = weights3_d0_local;
assign weights3_d1 = weights3_d1_local;
assign weights3_we0 = weights3_we0_local;
assign weights3_we1 = weights3_we1_local;
assign zext_ln194_10_fu_549_p1 = add_ln194_3_fu_544_p2;
assign zext_ln194_11_fu_559_p1 = add_ln194_4_fu_554_p2;
assign zext_ln194_12_fu_574_p1 = empty_50_fu_569_p2;
assign zext_ln194_13_fu_584_p1 = add_ln194_5_fu_579_p2;
assign zext_ln194_14_fu_599_p1 = add_ln194_6_fu_594_p2;
assign zext_ln194_15_fu_609_p1 = empty_51_fu_604_p2;
assign zext_ln194_16_fu_624_p1 = add_ln194_7_fu_619_p2;
assign zext_ln194_17_fu_634_p1 = add_ln194_8_fu_629_p2;
assign zext_ln194_18_fu_649_p1 = empty_52_fu_644_p2;
assign zext_ln194_19_fu_659_p1 = add_ln194_9_fu_654_p2;
assign zext_ln194_1_fu_413_p1 = or_ln5_fu_405_p3;
assign zext_ln194_20_fu_674_p1 = add_ln194_10_fu_669_p2;
assign zext_ln194_21_fu_684_p1 = empty_53_fu_679_p2;
assign zext_ln194_22_fu_699_p1 = add_ln194_11_fu_694_p2;
assign zext_ln194_23_fu_709_p1 = add_ln194_12_fu_704_p2;
assign zext_ln194_2_fu_445_p1 = or_ln194_1_fu_438_p3;
assign zext_ln194_3_fu_457_p1 = tmp_13_fu_450_p3;
assign zext_ln194_4_fu_472_p1 = add_ln194_fu_467_p2;
assign zext_ln194_5_fu_499_p1 = add_ln194_1_fu_494_p2;
assign zext_ln194_6_fu_509_p1 = empty_48_fu_504_p2;
assign zext_ln194_7_fu_484_p1 = or_ln194_2_fu_477_p3;
assign zext_ln194_8_fu_524_p1 = add_ln194_2_fu_519_p2;
assign zext_ln194_9_fu_534_p1 = empty_49_fu_529_p2;
assign zext_ln194_fu_390_p1 = empty_47_fu_384_p2;
assign zext_ln21_fu_368_p1 = ap_sig_allocacmp_i_4;
always @ (posedge ap_clk) begin
    weights3_addr_24_reg_921[0] <= 1'b1;
    weights3_addr_24_reg_921_pp0_iter1_reg[0] <= 1'b1;
    weights3_addr_24_reg_921_pp0_iter2_reg[0] <= 1'b1;
    weights3_addr_25_reg_938[1:0] <= 2'b10;
    weights3_addr_25_reg_938_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_25_reg_938_pp0_iter2_reg[1:0] <= 2'b10;
    tmp_13_reg_943[1:0] <= 2'b11;
    weights3_addr_26_reg_966[1:0] <= 2'b11;
    weights3_addr_26_reg_966_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_26_reg_966_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_addr_27_reg_977[1:0] <= 2'b00;
    weights3_addr_27_reg_977_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_27_reg_977_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_addr_30_reg_982[2:0] <= 3'b111;
    weights3_addr_30_reg_982_pp0_iter1_reg[2:0] <= 3'b111;
    weights3_addr_30_reg_982_pp0_iter2_reg[2:0] <= 3'b111;
    weights3_addr_28_reg_993[1:0] <= 2'b01;
    weights3_addr_28_reg_993_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_28_reg_993_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_addr_29_reg_998[1:0] <= 2'b10;
    weights3_addr_29_reg_998_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_29_reg_998_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_addr_31_reg_1009[1:0] <= 2'b00;
    weights3_addr_31_reg_1009_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_31_reg_1009_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_addr_32_reg_1014[1:0] <= 2'b01;
    weights3_addr_32_reg_1014_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_32_reg_1014_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_addr_33_reg_1025[1:0] <= 2'b10;
    weights3_addr_33_reg_1025_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_33_reg_1025_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_addr_34_reg_1030[1:0] <= 2'b11;
    weights3_addr_34_reg_1030_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_34_reg_1030_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_addr_34_reg_1030_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_addr_35_reg_1046[1:0] <= 2'b00;
    weights3_addr_35_reg_1046_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_35_reg_1046_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_addr_35_reg_1046_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_addr_36_reg_1052[1:0] <= 2'b01;
    weights3_addr_36_reg_1052_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_36_reg_1052_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_addr_36_reg_1052_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_addr_37_reg_1067[1:0] <= 2'b10;
    weights3_addr_37_reg_1067_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_37_reg_1067_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_addr_37_reg_1067_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_addr_38_reg_1073[1:0] <= 2'b11;
    weights3_addr_38_reg_1073_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_38_reg_1073_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_addr_38_reg_1073_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_addr_39_reg_1088[1:0] <= 2'b00;
    weights3_addr_39_reg_1088_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_39_reg_1088_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_addr_39_reg_1088_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_addr_40_reg_1094[1:0] <= 2'b01;
    weights3_addr_40_reg_1094_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_40_reg_1094_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_addr_40_reg_1094_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_addr_41_reg_1109[1:0] <= 2'b10;
    weights3_addr_41_reg_1109_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_41_reg_1109_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_addr_41_reg_1109_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_addr_42_reg_1115[1:0] <= 2'b11;
    weights3_addr_42_reg_1115_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_42_reg_1115_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_addr_42_reg_1115_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_addr_43_reg_1130[1:0] <= 2'b00;
    weights3_addr_43_reg_1130_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_addr_43_reg_1130_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_addr_43_reg_1130_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_addr_44_reg_1136[1:0] <= 2'b01;
    weights3_addr_44_reg_1136_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_addr_44_reg_1136_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_addr_44_reg_1136_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_addr_45_reg_1151[1:0] <= 2'b10;
    weights3_addr_45_reg_1151_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_addr_45_reg_1151_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_addr_45_reg_1151_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_addr_46_reg_1157[1:0] <= 2'b11;
    weights3_addr_46_reg_1157_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_addr_46_reg_1157_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_addr_46_reg_1157_pp0_iter3_reg[1:0] <= 2'b11;
end
endmodule 