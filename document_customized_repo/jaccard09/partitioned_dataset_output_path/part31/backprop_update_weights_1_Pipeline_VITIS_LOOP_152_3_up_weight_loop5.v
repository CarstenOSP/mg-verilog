
module backprop_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights2_address0,d_weights2_ce0,d_weights2_q0,d_weights2_address1,d_weights2_ce1,d_weights2_q1,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,norm_11_out,norm_11_out_ap_vld,grp_fu_385_p_din0,grp_fu_385_p_din1,grp_fu_385_p_dout0,grp_fu_385_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 64'd1;
parameter    ap_ST_fsm_pp0_stage1 = 64'd2;
parameter    ap_ST_fsm_pp0_stage2 = 64'd4;
parameter    ap_ST_fsm_pp0_stage3 = 64'd8;
parameter    ap_ST_fsm_pp0_stage4 = 64'd16;
parameter    ap_ST_fsm_pp0_stage5 = 64'd32;
parameter    ap_ST_fsm_pp0_stage6 = 64'd64;
parameter    ap_ST_fsm_pp0_stage7 = 64'd128;
parameter    ap_ST_fsm_pp0_stage8 = 64'd256;
parameter    ap_ST_fsm_pp0_stage9 = 64'd512;
parameter    ap_ST_fsm_pp0_stage10 = 64'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 64'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 64'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 64'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 64'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 64'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 64'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 64'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 64'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 64'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 64'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 64'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 64'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 64'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 64'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 64'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 64'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 64'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 64'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 64'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 64'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 64'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 64'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 64'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 64'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 64'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 64'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 64'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 64'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 64'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 64'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 64'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 64'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 64'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 64'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 64'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 64'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 64'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 64'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 64'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 64'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 64'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 64'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 64'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 64'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 64'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 64'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage57 = 64'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage58 = 64'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage59 = 64'd576460752303423488;
parameter    ap_ST_fsm_pp0_stage60 = 64'd1152921504606846976;
parameter    ap_ST_fsm_pp0_stage61 = 64'd2305843009213693952;
parameter    ap_ST_fsm_pp0_stage62 = 64'd4611686018427387904;
parameter    ap_ST_fsm_pp0_stage63 = 64'd9223372036854775808;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] d_weights2_address0;
output   d_weights2_ce0;
input  [63:0] d_weights2_q0;
output  [11:0] d_weights2_address1;
output   d_weights2_ce1;
input  [63:0] d_weights2_q1;
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
output   weights2_we1;
output  [63:0] weights2_d1;
input  [63:0] weights2_q1;
output  [63:0] norm_11_out;
output   norm_11_out_ap_vld;
output  [63:0] grp_fu_385_p_din0;
output  [63:0] grp_fu_385_p_din1;
input  [63:0] grp_fu_385_p_dout0;
output   grp_fu_385_p_ce;
reg ap_idle;
reg norm_11_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_subdone;
reg   [0:0] icmp_ln152_reg_689;
reg    ap_condition_exit_pp0_iter0_stage24;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_270;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_275;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_280;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_285;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_290;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_295;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_300;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [63:0] grp_fu_257_p2;
reg   [63:0] reg_305;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40_11001;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48_11001;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln152_fu_335_p2;
reg   [6:0] i_4_load_reg_693;
wire   [6:0] add_ln152_1_fu_350_p2;
reg   [6:0] add_ln152_1_reg_698;
wire   [6:0] select_ln121_fu_372_p3;
reg   [6:0] select_ln121_reg_703;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] empty_fu_386_p1;
reg   [5:0] empty_reg_708;
reg   [11:0] weights2_addr_reg_723;
reg   [11:0] weights2_addr_1_reg_734;
reg   [3:0] tmp_19_reg_740;
wire   [0:0] trunc_ln154_fu_450_p1;
reg   [0:0] trunc_ln154_reg_746;
reg   [2:0] tmp_20_reg_752;
wire   [1:0] trunc_ln154_1_fu_464_p1;
reg   [1:0] trunc_ln154_1_reg_760;
reg   [0:0] tmp_6_reg_765;
reg   [63:0] d_weights2_load_reg_770;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] weights2_load_reg_775;
reg   [63:0] d_weights2_load_1_reg_780;
reg   [63:0] weights2_load_1_reg_785;
reg   [11:0] weights2_addr_2_reg_795;
reg   [11:0] weights2_addr_3_reg_806;
reg   [63:0] d_weights2_load_2_reg_812;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] weights2_load_2_reg_817;
reg   [63:0] d_weights2_load_3_reg_822;
reg   [63:0] weights2_load_3_reg_827;
reg   [11:0] weights2_addr_4_reg_837;
reg   [11:0] weights2_addr_5_reg_848;
reg   [63:0] d_weights2_load_4_reg_854;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] weights2_load_4_reg_859;
reg   [63:0] d_weights2_load_5_reg_864;
reg   [63:0] weights2_load_5_reg_869;
reg   [11:0] weights2_addr_6_reg_879;
reg   [11:0] weights2_addr_7_reg_890;
reg   [63:0] d_weights2_load_6_reg_896;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] weights2_load_6_reg_901;
reg   [63:0] d_weights2_load_7_reg_906;
reg   [63:0] weights2_load_7_reg_911;
wire   [63:0] bitcast_ln154_fu_571_p1;
wire   [63:0] bitcast_ln154_2_fu_575_p1;
wire   [63:0] bitcast_ln154_4_fu_579_p1;
wire   [63:0] bitcast_ln154_6_fu_583_p1;
wire   [63:0] bitcast_ln154_8_fu_587_p1;
wire   [63:0] bitcast_ln154_10_fu_591_p1;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] mul81_6_reg_946;
wire   [63:0] bitcast_ln154_12_fu_595_p1;
wire   [63:0] bitcast_ln154_14_fu_599_p1;
reg   [63:0] sub86_1_reg_961;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub86_2_reg_968;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] sub86_3_reg_975;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] sub86_4_reg_982;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] sub86_5_reg_989;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] sub86_6_reg_996;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] mul95_7_reg_1008;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] norm_31_reg_1013;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln154_fu_408_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln154_1_fu_434_p1;
wire   [63:0] zext_ln154_2_fu_490_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln154_3_fu_504_p1;
wire   [63:0] zext_ln154_4_fu_519_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln154_5_fu_536_p1;
wire   [63:0] zext_ln154_6_fu_551_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln154_7_fu_565_p1;
reg   [63:0] norm_11_fu_88;
wire   [63:0] grp_fu_261_p2;
wire    ap_block_pp0_stage24;
wire    ap_loop_init;
wire    ap_block_pp0_stage25;
reg   [6:0] j_fu_92;
wire   [6:0] add_ln153_fu_641_p2;
reg   [6:0] i_4_fu_96;
wire   [6:0] select_ln152_fu_380_p3;
reg   [6:0] ap_sig_allocacmp_i_4_load;
wire    ap_block_pp0_stage0;
reg   [9:0] indvar_flatten13_fu_100;
wire   [9:0] add_ln152_fu_341_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten13_load;
wire    ap_block_pp0_stage24_01001;
reg    d_weights2_ce1_local;
reg   [11:0] d_weights2_address1_local;
reg    d_weights2_ce0_local;
reg   [11:0] d_weights2_address0_local;
reg    weights2_ce1_local;
reg   [11:0] weights2_address1_local;
reg    weights2_ce0_local;
reg   [11:0] weights2_address0_local;
reg    weights2_we0_local;
reg   [63:0] weights2_d0_local;
wire   [63:0] bitcast_ln154_1_fu_603_p1;
wire    ap_block_pp0_stage18;
reg    weights2_we1_local;
reg   [63:0] weights2_d1_local;
wire   [63:0] bitcast_ln154_3_fu_608_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln154_5_fu_612_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln154_7_fu_616_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln154_9_fu_620_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln154_11_fu_624_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln154_13_fu_628_p1;
wire   [63:0] bitcast_ln154_15_fu_636_p1;
reg   [63:0] grp_fu_257_p0;
reg   [63:0] grp_fu_257_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33;
wire    ap_CS_fsm_pp0_stage41;
wire    ap_block_pp0_stage41;
wire    ap_CS_fsm_pp0_stage49;
wire    ap_block_pp0_stage49;
wire    ap_CS_fsm_pp0_stage57;
wire    ap_block_pp0_stage57;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_265_p0;
reg   [63:0] grp_fu_265_p1;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire   [0:0] tmp_fu_364_p3;
wire   [11:0] zext_ln153_fu_398_p1;
wire   [11:0] tmp_s_fu_390_p3;
wire   [11:0] add_ln154_fu_402_p2;
wire   [4:0] tmp_18_fu_414_p4;
wire   [11:0] add_ln154_1_fu_424_p4;
wire   [11:0] add_ln154_2_fu_481_p5;
wire   [11:0] add_ln154_3_fu_496_p4;
wire   [11:0] add_ln154_4_fu_510_p5;
wire   [11:0] add_ln154_5_fu_525_p6;
wire   [11:0] add_ln154_6_fu_542_p5;
wire   [11:0] add_ln154_7_fu_557_p4;
reg   [1:0] grp_fu_257_opcode;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage33_00001;
wire    ap_block_pp0_stage41_00001;
wire    ap_block_pp0_stage49_00001;
wire    ap_block_pp0_stage57_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage17_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [63:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_block_pp0_stage47_subdone;
wire    ap_block_pp0_stage48_subdone;
wire    ap_block_pp0_stage49_subdone;
wire    ap_block_pp0_stage50_subdone;
wire    ap_block_pp0_stage51_subdone;
wire    ap_block_pp0_stage52_subdone;
wire    ap_block_pp0_stage53_subdone;
wire    ap_block_pp0_stage54_subdone;
wire    ap_block_pp0_stage55_subdone;
wire    ap_block_pp0_stage56_subdone;
wire    ap_block_pp0_stage57_subdone;
wire    ap_block_pp0_stage58_subdone;
wire    ap_block_pp0_stage59_subdone;
wire    ap_block_pp0_stage60_subdone;
wire    ap_block_pp0_stage61_subdone;
wire    ap_block_pp0_stage62_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_11_fu_88 = 64'd0;
#0 j_fu_92 = 7'd0;
#0 i_4_fu_96 = 7'd0;
#0 indvar_flatten13_fu_100 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U367(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_257_p0),.din1(grp_fu_257_p1),.opcode(grp_fu_257_opcode),.ce(1'b1),.dout(grp_fu_257_p2));
backprop_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U368(.clk(ap_clk),.reset(ap_rst),.din0(norm_31_reg_1013),.din1(mul95_7_reg_1008),.ce(1'b1),.dout(grp_fu_261_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage24),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage24_subdone) & (1'b1 == ap_CS_fsm_pp0_stage24) & (ap_loop_exit_ready == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage24)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_fu_96 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln152_reg_689 == 1'd0))) begin
        i_4_fu_96 <= select_ln152_fu_380_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln152_fu_335_p2 == 1'd0))) begin
            indvar_flatten13_fu_100 <= add_ln152_fu_341_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_100 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_92 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_92 <= add_ln153_fu_641_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_11_fu_88 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        norm_11_fu_88 <= grp_fu_261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln152_1_reg_698 <= add_ln152_1_fu_350_p2;
        i_4_load_reg_693 <= ap_sig_allocacmp_i_4_load;
        icmp_ln152_reg_689 <= icmp_ln152_fu_335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        d_weights2_load_1_reg_780 <= d_weights2_q0;
        d_weights2_load_reg_770 <= d_weights2_q1;
        weights2_load_1_reg_785 <= weights2_q0;
        weights2_load_reg_775 <= weights2_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        d_weights2_load_2_reg_812 <= d_weights2_q1;
        d_weights2_load_3_reg_822 <= d_weights2_q0;
        weights2_load_2_reg_817 <= weights2_q1;
        weights2_load_3_reg_827 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        d_weights2_load_4_reg_854 <= d_weights2_q1;
        d_weights2_load_5_reg_864 <= d_weights2_q0;
        weights2_load_4_reg_859 <= weights2_q1;
        weights2_load_5_reg_869 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        d_weights2_load_6_reg_896 <= d_weights2_q1;
        d_weights2_load_7_reg_906 <= d_weights2_q0;
        weights2_load_6_reg_901 <= weights2_q1;
        weights2_load_7_reg_911 <= weights2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_708 <= empty_fu_386_p1;
        select_ln121_reg_703 <= select_ln121_fu_372_p3;
        tmp_19_reg_740 <= {{select_ln121_fu_372_p3[5:2]}};
        tmp_20_reg_752 <= {{select_ln121_fu_372_p3[5:3]}};
        tmp_6_reg_765 <= select_ln121_fu_372_p3[32'd1];
        trunc_ln154_1_reg_760 <= trunc_ln154_1_fu_464_p1;
        trunc_ln154_reg_746 <= trunc_ln154_fu_450_p1;
        weights2_addr_1_reg_734[11 : 1] <= zext_ln154_1_fu_434_p1[11 : 1];
        weights2_addr_reg_723 <= zext_ln154_fu_408_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul81_6_reg_946 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        mul95_7_reg_1008 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        norm_31_reg_1013 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_270 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_275 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_280 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_285 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_290 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_295 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_300 <= grp_fu_385_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage56_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage48_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        reg_305 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub86_1_reg_961 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub86_2_reg_968 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sub86_3_reg_975 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        sub86_4_reg_982 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        sub86_5_reg_989 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        sub86_6_reg_996 <= grp_fu_257_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_addr_2_reg_795[0] <= zext_ln154_2_fu_490_p1[0];
weights2_addr_2_reg_795[11 : 2] <= zext_ln154_2_fu_490_p1[11 : 2];
        weights2_addr_3_reg_806[11 : 2] <= zext_ln154_3_fu_504_p1[11 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_addr_4_reg_837[1 : 0] <= zext_ln154_4_fu_519_p1[1 : 0];
weights2_addr_4_reg_837[11 : 3] <= zext_ln154_4_fu_519_p1[11 : 3];
        weights2_addr_5_reg_848[1] <= zext_ln154_5_fu_536_p1[1];
weights2_addr_5_reg_848[11 : 3] <= zext_ln154_5_fu_536_p1[11 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_addr_6_reg_879[0] <= zext_ln154_6_fu_551_p1[0];
weights2_addr_6_reg_879[11 : 3] <= zext_ln154_6_fu_551_p1[11 : 3];
        weights2_addr_7_reg_890[11 : 3] <= zext_ln154_7_fu_565_p1[11 : 3];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24) & (icmp_ln152_reg_689 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage24 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage24 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_subdone) & (1'b1 == ap_CS_fsm_pp0_stage24) & (ap_loop_exit_ready == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4_load = i_4_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_100;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            d_weights2_address0_local = zext_ln154_7_fu_565_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            d_weights2_address0_local = zext_ln154_5_fu_536_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            d_weights2_address0_local = zext_ln154_3_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights2_address0_local = zext_ln154_1_fu_434_p1;
        end else begin
            d_weights2_address0_local = 'bx;
        end
    end else begin
        d_weights2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            d_weights2_address1_local = zext_ln154_6_fu_551_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            d_weights2_address1_local = zext_ln154_4_fu_519_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            d_weights2_address1_local = zext_ln154_2_fu_490_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            d_weights2_address1_local = zext_ln154_fu_408_p1;
        end else begin
            d_weights2_address1_local = 'bx;
        end
    end else begin
        d_weights2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights2_ce0_local = 1'b1;
    end else begin
        d_weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        d_weights2_ce1_local = 1'b1;
    end else begin
        d_weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage17_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage10_00001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln152_reg_689 == 1'd0)))) begin
        grp_fu_257_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage57_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage49_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage41_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage33_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25) & (icmp_ln152_reg_689 == 1'd0)))) begin
        grp_fu_257_opcode = 2'd0;
    end else begin
        grp_fu_257_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_257_p0 = reg_305;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_257_p0 = norm_11_fu_88;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_257_p0 = bitcast_ln154_14_fu_599_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_257_p0 = bitcast_ln154_12_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_257_p0 = bitcast_ln154_10_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_257_p0 = bitcast_ln154_8_fu_587_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_257_p0 = bitcast_ln154_6_fu_583_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_257_p0 = bitcast_ln154_4_fu_579_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_257_p0 = bitcast_ln154_2_fu_575_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_257_p0 = bitcast_ln154_fu_571_p1;
    end else begin
        grp_fu_257_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_257_p1 = reg_300;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_257_p1 = mul81_6_reg_946;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_257_p1 = reg_295;
    end else if ((((1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_257_p1 = reg_290;
    end else if ((((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        grp_fu_257_p1 = reg_285;
    end else if ((((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        grp_fu_257_p1 = reg_280;
    end else if ((((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_257_p1 = reg_275;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_257_p1 = reg_270;
    end else begin
        grp_fu_257_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_265_p0 = sub86_6_reg_996;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_265_p0 = sub86_5_reg_989;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_265_p0 = sub86_4_reg_982;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_265_p0 = sub86_3_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_265_p0 = sub86_2_reg_968;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_265_p0 = sub86_1_reg_961;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_265_p0 = reg_305;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_265_p0 = d_weights2_load_7_reg_906;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_265_p0 = d_weights2_load_6_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_265_p0 = d_weights2_load_5_reg_864;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_265_p0 = d_weights2_load_4_reg_854;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_265_p0 = d_weights2_load_3_reg_822;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_265_p0 = d_weights2_load_2_reg_812;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_265_p0 = d_weights2_load_1_reg_780;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_265_p0 = d_weights2_load_reg_770;
    end else begin
        grp_fu_265_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_265_p1 = sub86_6_reg_996;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_265_p1 = sub86_5_reg_989;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_265_p1 = sub86_4_reg_982;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_265_p1 = sub86_3_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_265_p1 = sub86_2_reg_968;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_265_p1 = sub86_1_reg_961;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_265_p1 = reg_305;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_265_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_265_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24) & (ap_loop_exit_ready == 1'b1) & (icmp_ln152_reg_689 == 1'd1))) begin
        norm_11_out_ap_vld = 1'b1;
    end else begin
        norm_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights2_address0_local = weights2_addr_6_reg_879;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights2_address0_local = weights2_addr_4_reg_837;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_address0_local = weights2_addr_2_reg_795;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_address0_local = weights2_addr_reg_723;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights2_address0_local = zext_ln154_7_fu_565_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights2_address0_local = zext_ln154_5_fu_536_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights2_address0_local = zext_ln154_3_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_address0_local = zext_ln154_1_fu_434_p1;
        end else begin
            weights2_address0_local = 'bx;
        end
    end else begin
        weights2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            weights2_address1_local = weights2_addr_7_reg_890;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights2_address1_local = weights2_addr_5_reg_848;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_address1_local = weights2_addr_3_reg_806;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_address1_local = weights2_addr_1_reg_734;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights2_address1_local = zext_ln154_6_fu_551_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights2_address1_local = zext_ln154_4_fu_519_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights2_address1_local = zext_ln154_2_fu_490_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_address1_local = zext_ln154_fu_408_p1;
        end else begin
            weights2_address1_local = 'bx;
        end
    end else begin
        weights2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        weights2_ce0_local = 1'b1;
    end else begin
        weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        weights2_ce1_local = 1'b1;
    end else begin
        weights2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights2_d0_local = bitcast_ln154_13_fu_628_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights2_d0_local = bitcast_ln154_9_fu_620_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_d0_local = bitcast_ln154_5_fu_612_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_d0_local = bitcast_ln154_1_fu_603_p1;
        end else begin
            weights2_d0_local = 'bx;
        end
    end else begin
        weights2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            weights2_d1_local = bitcast_ln154_15_fu_636_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights2_d1_local = bitcast_ln154_11_fu_624_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_d1_local = bitcast_ln154_7_fu_616_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_d1_local = bitcast_ln154_3_fu_608_p1;
        end else begin
            weights2_d1_local = 'bx;
        end
    end else begin
        weights2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24) & (icmp_ln152_reg_689 == 1'd0)))) begin
        weights2_we0_local = 1'b1;
    end else begin
        weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (icmp_ln152_reg_689 == 1'd0)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25) & (icmp_ln152_reg_689 == 1'd0)))) begin
        weights2_we1_local = 1'b1;
    end else begin
        weights2_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage24)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        ap_ST_fsm_pp0_stage48 : begin
            if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end
        end
        ap_ST_fsm_pp0_stage49 : begin
            if ((1'b0 == ap_block_pp0_stage49_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end
        end
        ap_ST_fsm_pp0_stage50 : begin
            if ((1'b0 == ap_block_pp0_stage50_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end
        end
        ap_ST_fsm_pp0_stage51 : begin
            if ((1'b0 == ap_block_pp0_stage51_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end
        end
        ap_ST_fsm_pp0_stage52 : begin
            if ((1'b0 == ap_block_pp0_stage52_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end
        end
        ap_ST_fsm_pp0_stage53 : begin
            if ((1'b0 == ap_block_pp0_stage53_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end
        end
        ap_ST_fsm_pp0_stage54 : begin
            if ((1'b0 == ap_block_pp0_stage54_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end
        end
        ap_ST_fsm_pp0_stage55 : begin
            if ((1'b0 == ap_block_pp0_stage55_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end
        end
        ap_ST_fsm_pp0_stage56 : begin
            if ((1'b0 == ap_block_pp0_stage56_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end
        end
        ap_ST_fsm_pp0_stage57 : begin
            if ((1'b0 == ap_block_pp0_stage57_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end
        end
        ap_ST_fsm_pp0_stage58 : begin
            if ((1'b0 == ap_block_pp0_stage58_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end
        end
        ap_ST_fsm_pp0_stage59 : begin
            if ((1'b0 == ap_block_pp0_stage59_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end
        end
        ap_ST_fsm_pp0_stage60 : begin
            if ((1'b0 == ap_block_pp0_stage60_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end
        end
        ap_ST_fsm_pp0_stage61 : begin
            if ((1'b0 == ap_block_pp0_stage61_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end
        end
        ap_ST_fsm_pp0_stage62 : begin
            if ((1'b0 == ap_block_pp0_stage62_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end
        end
        ap_ST_fsm_pp0_stage63 : begin
            if ((1'b0 == ap_block_pp0_stage63_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln152_1_fu_350_p2 = (ap_sig_allocacmp_i_4_load + 7'd1);
assign add_ln152_fu_341_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 10'd1);
assign add_ln153_fu_641_p2 = (select_ln121_reg_703 + 7'd8);
assign add_ln154_1_fu_424_p4 = {{{empty_fu_386_p1}, {tmp_18_fu_414_p4}}, {1'd1}};
assign add_ln154_2_fu_481_p5 = {{{{empty_reg_708}, {tmp_19_reg_740}}, {1'd1}}, {trunc_ln154_reg_746}};
assign add_ln154_3_fu_496_p4 = {{{empty_reg_708}, {tmp_19_reg_740}}, {2'd3}};
assign add_ln154_4_fu_510_p5 = {{{{empty_reg_708}, {tmp_20_reg_752}}, {1'd1}}, {trunc_ln154_1_reg_760}};
assign add_ln154_5_fu_525_p6 = {{{{{empty_reg_708}, {tmp_20_reg_752}}, {1'd1}}, {tmp_6_reg_765}}, {1'd1}};
assign add_ln154_6_fu_542_p5 = {{{{empty_reg_708}, {tmp_20_reg_752}}, {2'd3}}, {trunc_ln154_reg_746}};
assign add_ln154_7_fu_557_p4 = {{{empty_reg_708}, {tmp_20_reg_752}}, {3'd7}};
assign add_ln154_fu_402_p2 = (zext_ln153_fu_398_p1 + tmp_s_fu_390_p3);
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
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage41 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_pp0_stage48 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_pp0_stage49 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage56 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_pp0_stage57 = ap_CS_fsm[32'd57];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage24;
assign ap_ready = ap_ready_sig;
assign bitcast_ln154_10_fu_591_p1 = weights2_load_5_reg_869;
assign bitcast_ln154_11_fu_624_p1 = sub86_5_reg_989;
assign bitcast_ln154_12_fu_595_p1 = weights2_load_6_reg_901;
assign bitcast_ln154_13_fu_628_p1 = sub86_6_reg_996;
assign bitcast_ln154_14_fu_599_p1 = weights2_load_7_reg_911;
assign bitcast_ln154_15_fu_636_p1 = reg_305;
assign bitcast_ln154_1_fu_603_p1 = reg_305;
assign bitcast_ln154_2_fu_575_p1 = weights2_load_1_reg_785;
assign bitcast_ln154_3_fu_608_p1 = sub86_1_reg_961;
assign bitcast_ln154_4_fu_579_p1 = weights2_load_2_reg_817;
assign bitcast_ln154_5_fu_612_p1 = sub86_2_reg_968;
assign bitcast_ln154_6_fu_583_p1 = weights2_load_3_reg_827;
assign bitcast_ln154_7_fu_616_p1 = sub86_3_reg_975;
assign bitcast_ln154_8_fu_587_p1 = weights2_load_4_reg_859;
assign bitcast_ln154_9_fu_620_p1 = sub86_4_reg_982;
assign bitcast_ln154_fu_571_p1 = weights2_load_reg_775;
assign d_weights2_address0 = d_weights2_address0_local;
assign d_weights2_address1 = d_weights2_address1_local;
assign d_weights2_ce0 = d_weights2_ce0_local;
assign d_weights2_ce1 = d_weights2_ce1_local;
assign empty_fu_386_p1 = select_ln152_fu_380_p3[5:0];
assign grp_fu_385_p_ce = 1'b1;
assign grp_fu_385_p_din0 = grp_fu_265_p0;
assign grp_fu_385_p_din1 = grp_fu_265_p1;
assign icmp_ln152_fu_335_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 10'd512) ? 1'b1 : 1'b0);
assign norm_11_out = norm_11_fu_88;
assign select_ln121_fu_372_p3 = ((tmp_fu_364_p3[0:0] == 1'b1) ? 7'd0 : j_fu_92);
assign select_ln152_fu_380_p3 = ((tmp_fu_364_p3[0:0] == 1'b1) ? add_ln152_1_reg_698 : i_4_load_reg_693);
assign tmp_18_fu_414_p4 = {{select_ln121_fu_372_p3[5:1]}};
assign tmp_fu_364_p3 = j_fu_92[32'd6];
assign tmp_s_fu_390_p3 = {{empty_fu_386_p1}, {6'd0}};
assign trunc_ln154_1_fu_464_p1 = select_ln121_fu_372_p3[1:0];
assign trunc_ln154_fu_450_p1 = select_ln121_fu_372_p3[0:0];
assign weights2_address0 = weights2_address0_local;
assign weights2_address1 = weights2_address1_local;
assign weights2_ce0 = weights2_ce0_local;
assign weights2_ce1 = weights2_ce1_local;
assign weights2_d0 = weights2_d0_local;
assign weights2_d1 = weights2_d1_local;
assign weights2_we0 = weights2_we0_local;
assign weights2_we1 = weights2_we1_local;
assign zext_ln153_fu_398_p1 = select_ln121_fu_372_p3;
assign zext_ln154_1_fu_434_p1 = add_ln154_1_fu_424_p4;
assign zext_ln154_2_fu_490_p1 = add_ln154_2_fu_481_p5;
assign zext_ln154_3_fu_504_p1 = add_ln154_3_fu_496_p4;
assign zext_ln154_4_fu_519_p1 = add_ln154_4_fu_510_p5;
assign zext_ln154_5_fu_536_p1 = add_ln154_5_fu_525_p6;
assign zext_ln154_6_fu_551_p1 = add_ln154_6_fu_542_p5;
assign zext_ln154_7_fu_565_p1 = add_ln154_7_fu_557_p4;
assign zext_ln154_fu_408_p1 = add_ln154_fu_402_p2;
always @ (posedge ap_clk) begin
    weights2_addr_1_reg_734[0] <= 1'b1;
    weights2_addr_2_reg_795[1] <= 1'b1;
    weights2_addr_3_reg_806[1:0] <= 2'b11;
    weights2_addr_4_reg_837[2] <= 1'b1;
    weights2_addr_5_reg_848[0] <= 1'b1;
    weights2_addr_5_reg_848[2] <= 1'b1;
    weights2_addr_6_reg_879[2:1] <= 2'b11;
    weights2_addr_7_reg_890[2:0] <= 3'b111;
end
endmodule 
