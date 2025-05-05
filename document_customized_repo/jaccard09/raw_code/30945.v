module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,min_s_16_out,min_s_16_out_ap_vld,grp_fu_1050_p_din0,grp_fu_1050_p_din1,grp_fu_1050_p_opcode,grp_fu_1050_p_dout0,grp_fu_1050_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 33'd1;
parameter    ap_ST_fsm_pp0_stage1 = 33'd2;
parameter    ap_ST_fsm_pp0_stage2 = 33'd4;
parameter    ap_ST_fsm_pp0_stage3 = 33'd8;
parameter    ap_ST_fsm_pp0_stage4 = 33'd16;
parameter    ap_ST_fsm_pp0_stage5 = 33'd32;
parameter    ap_ST_fsm_pp0_stage6 = 33'd64;
parameter    ap_ST_fsm_pp0_stage7 = 33'd128;
parameter    ap_ST_fsm_pp0_stage8 = 33'd256;
parameter    ap_ST_fsm_pp0_stage9 = 33'd512;
parameter    ap_ST_fsm_pp0_stage10 = 33'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 33'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 33'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 33'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 33'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 33'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 33'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 33'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 33'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 33'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 33'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 33'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 33'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 33'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 33'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 33'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 33'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 33'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 33'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 33'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 33'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 33'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 33'd4294967296;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_2_address1;
output   llike_2_ce1;
input  [63:0] llike_2_q1;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [11:0] llike_3_address1;
output   llike_3_ce1;
input  [63:0] llike_3_q1;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [11:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
output  [7:0] min_s_16_out;
output   min_s_16_out_ap_vld;
output  [63:0] grp_fu_1050_p_din0;
output  [63:0] grp_fu_1050_p_din1;
output  [4:0] grp_fu_1050_p_opcode;
input  [0:0] grp_fu_1050_p_dout0;
output   grp_fu_1050_p_ce;
reg ap_idle;
reg min_s_16_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_reg_2426;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_2338;
wire   [3:0] tmp_85_fu_319_p4;
reg   [3:0] tmp_85_reg_2354;
wire   [5:0] add_ln40_fu_344_p2;
reg   [5:0] add_ln40_reg_2375;
wire   [5:0] add_ln40_1_fu_392_p2;
reg   [5:0] add_ln40_1_reg_2390;
wire   [5:0] add_ln40_2_fu_421_p2;
reg   [5:0] add_ln40_2_reg_2400;
wire   [5:0] add_ln40_3_fu_450_p2;
reg   [5:0] add_ln40_3_reg_2410;
wire   [6:0] add_ln40_9_fu_479_p2;
reg   [6:0] add_ln40_9_reg_2420;
reg   [6:0] add_ln40_9_reg_2420_pp0_iter1_reg;
reg   [0:0] tmp_reg_2426_pp0_iter1_reg;
reg   [63:0] p_reg_2430;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] p_23_reg_2437;
reg   [63:0] p_24_reg_2444;
reg   [63:0] p_25_reg_2451;
reg   [63:0] p_26_reg_2458;
reg   [63:0] p_27_reg_2465;
reg   [63:0] p_28_reg_2472;
reg   [63:0] p_29_reg_2479;
wire   [5:0] add_ln40_4_fu_511_p2;
reg   [5:0] add_ln40_4_reg_2491;
wire   [5:0] add_ln40_5_fu_539_p2;
reg   [5:0] add_ln40_5_reg_2501;
wire   [5:0] add_ln40_6_fu_567_p2;
reg   [5:0] add_ln40_6_reg_2511;
wire   [5:0] add_ln40_7_fu_613_p2;
reg   [5:0] add_ln40_7_reg_2526;
wire   [5:0] add_ln40_8_fu_641_p2;
reg   [5:0] add_ln40_8_reg_2536;
reg   [63:0] min_p_52_reg_2551;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] p_30_reg_2558;
reg   [63:0] p_31_reg_2565;
reg   [63:0] p_32_reg_2572;
reg   [63:0] p_33_reg_2579;
reg   [63:0] p_34_reg_2586;
reg   [63:0] p_35_reg_2593;
reg   [63:0] p_36_reg_2600;
reg   [63:0] p_37_reg_2607;
wire   [0:0] and_ln42_1_fu_773_p2;
reg   [0:0] and_ln42_1_reg_2614;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] min_p_54_fu_779_p3;
reg   [63:0] min_p_54_reg_2620;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln42_3_fu_861_p2;
reg   [0:0] and_ln42_3_reg_2627;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] min_p_56_fu_867_p3;
reg   [63:0] min_p_56_reg_2633;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] and_ln42_5_fu_949_p2;
reg   [0:0] and_ln42_5_reg_2640;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_58_fu_955_p3;
reg   [63:0] min_p_58_reg_2646;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] and_ln42_7_fu_1037_p2;
reg   [0:0] and_ln42_7_reg_2653;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] min_p_60_fu_1088_p3;
reg   [63:0] min_p_60_reg_2659;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [7:0] min_s_26_fu_1097_p3;
reg   [7:0] min_s_26_reg_2666;
wire   [0:0] and_ln42_9_fu_1180_p2;
reg   [0:0] and_ln42_9_reg_2671;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] min_p_62_fu_1186_p3;
reg   [63:0] min_p_62_reg_2677;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] and_ln42_11_fu_1268_p2;
reg   [0:0] and_ln42_11_reg_2684;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] min_p_64_fu_1289_p3;
reg   [63:0] min_p_64_reg_2690;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [7:0] min_s_28_fu_1298_p3;
reg   [7:0] min_s_28_reg_2697;
wire   [0:0] and_ln42_13_fu_1381_p2;
reg   [0:0] and_ln42_13_reg_2702;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] min_p_66_fu_1387_p3;
reg   [63:0] min_p_66_reg_2708;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [0:0] and_ln42_15_fu_1469_p2;
reg   [0:0] and_ln42_15_reg_2715;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [63:0] min_p_68_fu_1484_p3;
reg   [63:0] min_p_68_reg_2721;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [7:0] min_s_30_fu_1493_p3;
reg   [7:0] min_s_30_reg_2728;
wire   [0:0] and_ln42_17_fu_1576_p2;
reg   [0:0] and_ln42_17_reg_2733;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [63:0] min_p_70_fu_1582_p3;
reg   [63:0] min_p_70_reg_2739;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [0:0] and_ln42_19_fu_1664_p2;
reg   [0:0] and_ln42_19_reg_2746;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] min_p_72_fu_1685_p3;
reg   [63:0] min_p_72_reg_2752;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [7:0] min_s_32_fu_1694_p3;
reg   [7:0] min_s_32_reg_2759;
wire   [0:0] and_ln42_21_fu_1777_p2;
reg   [0:0] and_ln42_21_reg_2764;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [63:0] min_p_74_fu_1783_p3;
reg   [63:0] min_p_74_reg_2770;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [0:0] and_ln42_23_fu_1865_p2;
reg   [0:0] and_ln42_23_reg_2777;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_76_fu_1880_p3;
reg   [63:0] min_p_76_reg_2783;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] min_s_34_fu_1889_p3;
reg   [7:0] min_s_34_reg_2790;
wire   [0:0] and_ln42_25_fu_1972_p2;
reg   [0:0] and_ln42_25_reg_2795;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_78_fu_1978_p3;
reg   [63:0] min_p_78_reg_2801;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln42_27_fu_2060_p2;
reg   [0:0] and_ln42_27_reg_2808;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_80_fu_2066_p3;
reg   [63:0] min_p_80_reg_2814;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [0:0] and_ln42_29_fu_2148_p2;
reg   [0:0] and_ln42_29_reg_2821;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_82_fu_2154_p3;
reg   [63:0] min_p_82_reg_2827;
wire    ap_block_pp0_stage32_11001;
wire   [7:0] min_s_37_fu_2198_p3;
reg   [7:0] min_s_37_reg_2834;
reg   [0:0] tmp_49_reg_2839;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_337_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_1_fu_368_p1;
wire   [63:0] zext_ln41_2_fu_387_p1;
wire   [63:0] zext_ln41_3_fu_416_p1;
wire   [63:0] zext_ln41_4_fu_445_p1;
wire   [63:0] zext_ln41_5_fu_474_p1;
wire   [63:0] zext_ln41_6_fu_506_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln41_7_fu_534_p1;
wire   [63:0] zext_ln41_8_fu_562_p1;
wire   [63:0] zext_ln41_9_fu_590_p1;
wire   [63:0] zext_ln41_10_fu_608_p1;
wire   [63:0] zext_ln41_11_fu_636_p1;
wire   [63:0] zext_ln41_12_fu_664_p1;
wire   [63:0] zext_ln41_14_fu_688_p1;
reg   [63:0] min_p_1_fu_104;
wire   [63:0] min_p_84_fu_2287_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_108;
wire   [7:0] min_s_38_fu_2300_p3;
wire    ap_block_pp0_stage10;
reg   [5:0] min_s_20_fu_112;
wire   [5:0] add_ln40_10_fu_2160_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    llike_1_ce1_local;
reg   [11:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_ce1_local;
reg   [11:0] llike_2_address1_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_ce1_local;
reg   [11:0] llike_3_address1_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg    llike_ce1_local;
reg   [11:0] llike_address1_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_293_p0;
reg   [63:0] grp_fu_293_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [11:0] tmp_139_cast_fu_329_p3;
wire   [3:0] tmp_86_fu_350_p4;
wire   [11:0] tmp_141_cast_fu_360_p3;
wire   [3:0] add_ln8_fu_373_p2;
wire   [11:0] tmp_142_cast_fu_379_p3;
wire   [3:0] tmp_87_fu_398_p4;
wire   [11:0] tmp_144_cast_fu_408_p3;
wire   [3:0] tmp_88_fu_427_p4;
wire   [11:0] tmp_146_cast_fu_437_p3;
wire   [3:0] tmp_89_fu_456_p4;
wire   [11:0] tmp_148_cast_fu_466_p3;
wire   [6:0] zext_ln20_fu_315_p1;
wire   [3:0] add_ln8_1_fu_493_p2;
wire   [11:0] tmp_149_cast_fu_498_p3;
wire   [3:0] tmp_90_fu_516_p4;
wire   [11:0] tmp_151_cast_fu_526_p3;
wire   [3:0] tmp_91_fu_544_p4;
wire   [11:0] tmp_153_cast_fu_554_p3;
wire   [3:0] tmp_92_fu_572_p4;
wire   [11:0] tmp_155_cast_fu_582_p3;
wire   [3:0] add_ln8_2_fu_595_p2;
wire   [11:0] tmp_156_cast_fu_600_p3;
wire   [3:0] tmp_93_fu_618_p4;
wire   [11:0] tmp_158_cast_fu_628_p3;
wire   [3:0] tmp_94_fu_646_p4;
wire   [11:0] tmp_160_cast_fu_656_p3;
wire   [4:0] lshr_ln9_2_fu_669_p4;
wire   [11:0] zext_ln41_13_fu_678_p1;
wire   [11:0] add_ln41_fu_682_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_697_p1;
wire   [63:0] bitcast_ln42_1_fu_714_p1;
wire   [10:0] tmp_2_fu_700_p4;
wire   [51:0] trunc_ln42_fu_710_p1;
wire   [0:0] icmp_ln42_1_fu_737_p2;
wire   [0:0] icmp_ln42_fu_731_p2;
wire   [10:0] tmp_3_fu_717_p4;
wire   [51:0] trunc_ln42_1_fu_727_p1;
wire   [0:0] icmp_ln42_3_fu_755_p2;
wire   [0:0] icmp_ln42_2_fu_749_p2;
wire   [0:0] or_ln42_fu_743_p2;
wire   [0:0] and_ln42_fu_767_p2;
wire   [0:0] or_ln42_1_fu_761_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln42_2_fu_785_p1;
wire   [63:0] bitcast_ln42_3_fu_802_p1;
wire   [10:0] tmp_5_fu_788_p4;
wire   [51:0] trunc_ln42_2_fu_798_p1;
wire   [0:0] icmp_ln42_5_fu_825_p2;
wire   [0:0] icmp_ln42_4_fu_819_p2;
wire   [10:0] tmp_6_fu_805_p4;
wire   [51:0] trunc_ln42_3_fu_815_p1;
wire   [0:0] icmp_ln42_7_fu_843_p2;
wire   [0:0] icmp_ln42_6_fu_837_p2;
wire   [0:0] or_ln42_3_fu_849_p2;
wire   [0:0] or_ln42_2_fu_831_p2;
wire   [0:0] and_ln42_2_fu_855_p2;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln42_4_fu_873_p1;
wire   [63:0] bitcast_ln42_5_fu_890_p1;
wire   [10:0] tmp_9_fu_876_p4;
wire   [51:0] trunc_ln42_4_fu_886_p1;
wire   [0:0] icmp_ln42_9_fu_913_p2;
wire   [0:0] icmp_ln42_8_fu_907_p2;
wire   [10:0] tmp_s_fu_893_p4;
wire   [51:0] trunc_ln42_5_fu_903_p1;
wire   [0:0] icmp_ln42_11_fu_931_p2;
wire   [0:0] icmp_ln42_10_fu_925_p2;
wire   [0:0] or_ln42_5_fu_937_p2;
wire   [0:0] or_ln42_4_fu_919_p2;
wire   [0:0] and_ln42_4_fu_943_p2;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln42_6_fu_961_p1;
wire   [63:0] bitcast_ln42_7_fu_978_p1;
wire   [10:0] tmp_11_fu_964_p4;
wire   [51:0] trunc_ln42_6_fu_974_p1;
wire   [0:0] icmp_ln42_13_fu_1001_p2;
wire   [0:0] icmp_ln42_12_fu_995_p2;
wire   [10:0] tmp_12_fu_981_p4;
wire   [51:0] trunc_ln42_7_fu_991_p1;
wire   [0:0] icmp_ln42_15_fu_1019_p2;
wire   [0:0] icmp_ln42_14_fu_1013_p2;
wire   [0:0] or_ln42_7_fu_1025_p2;
wire   [0:0] or_ln42_6_fu_1007_p2;
wire   [0:0] and_ln42_6_fu_1031_p2;
wire   [7:0] zext_ln42_fu_1046_p1;
wire   [5:0] add_ln42_fu_1056_p2;
wire   [7:0] zext_ln42_1_fu_1061_p1;
wire   [7:0] min_s_23_fu_1049_p3;
wire   [5:0] add_ln42_1_fu_1072_p2;
wire   [7:0] zext_ln42_2_fu_1077_p1;
wire   [7:0] min_s_24_fu_1065_p3;
wire   [7:0] zext_ln42_3_fu_1094_p1;
wire   [7:0] min_s_25_fu_1081_p3;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln42_8_fu_1104_p1;
wire   [63:0] bitcast_ln42_9_fu_1121_p1;
wire   [10:0] tmp_14_fu_1107_p4;
wire   [51:0] trunc_ln42_8_fu_1117_p1;
wire   [0:0] icmp_ln42_17_fu_1144_p2;
wire   [0:0] icmp_ln42_16_fu_1138_p2;
wire   [10:0] tmp_15_fu_1124_p4;
wire   [51:0] trunc_ln42_9_fu_1134_p1;
wire   [0:0] icmp_ln42_19_fu_1162_p2;
wire   [0:0] icmp_ln42_18_fu_1156_p2;
wire   [0:0] or_ln42_9_fu_1168_p2;
wire   [0:0] or_ln42_8_fu_1150_p2;
wire   [0:0] and_ln42_8_fu_1174_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln42_10_fu_1192_p1;
wire   [63:0] bitcast_ln42_11_fu_1209_p1;
wire   [10:0] tmp_17_fu_1195_p4;
wire   [51:0] trunc_ln42_10_fu_1205_p1;
wire   [0:0] icmp_ln42_21_fu_1232_p2;
wire   [0:0] icmp_ln42_20_fu_1226_p2;
wire   [10:0] tmp_18_fu_1212_p4;
wire   [51:0] trunc_ln42_11_fu_1222_p1;
wire   [0:0] icmp_ln42_23_fu_1250_p2;
wire   [0:0] icmp_ln42_22_fu_1244_p2;
wire   [0:0] or_ln42_11_fu_1256_p2;
wire   [0:0] or_ln42_10_fu_1238_p2;
wire   [0:0] and_ln42_10_fu_1262_p2;
wire   [5:0] add_ln42_2_fu_1274_p2;
wire   [7:0] zext_ln42_4_fu_1279_p1;
wire   [7:0] zext_ln42_5_fu_1295_p1;
wire   [7:0] min_s_27_fu_1283_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln42_12_fu_1305_p1;
wire   [63:0] bitcast_ln42_13_fu_1322_p1;
wire   [10:0] tmp_20_fu_1308_p4;
wire   [51:0] trunc_ln42_12_fu_1318_p1;
wire   [0:0] icmp_ln42_25_fu_1345_p2;
wire   [0:0] icmp_ln42_24_fu_1339_p2;
wire   [10:0] tmp_21_fu_1325_p4;
wire   [51:0] trunc_ln42_13_fu_1335_p1;
wire   [0:0] icmp_ln42_27_fu_1363_p2;
wire   [0:0] icmp_ln42_26_fu_1357_p2;
wire   [0:0] or_ln42_13_fu_1369_p2;
wire   [0:0] or_ln42_12_fu_1351_p2;
wire   [0:0] and_ln42_12_fu_1375_p2;
wire    ap_block_pp0_stage17;
wire   [63:0] bitcast_ln42_14_fu_1393_p1;
wire   [63:0] bitcast_ln42_15_fu_1410_p1;
wire   [10:0] tmp_23_fu_1396_p4;
wire   [51:0] trunc_ln42_14_fu_1406_p1;
wire   [0:0] icmp_ln42_29_fu_1433_p2;
wire   [0:0] icmp_ln42_28_fu_1427_p2;
wire   [10:0] tmp_24_fu_1413_p4;
wire   [51:0] trunc_ln42_15_fu_1423_p1;
wire   [0:0] icmp_ln42_31_fu_1451_p2;
wire   [0:0] icmp_ln42_30_fu_1445_p2;
wire   [0:0] or_ln42_15_fu_1457_p2;
wire   [0:0] or_ln42_14_fu_1439_p2;
wire   [0:0] and_ln42_14_fu_1463_p2;
wire   [7:0] zext_ln42_6_fu_1475_p1;
wire   [7:0] zext_ln42_7_fu_1490_p1;
wire   [7:0] min_s_29_fu_1478_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln42_16_fu_1500_p1;
wire   [63:0] bitcast_ln42_17_fu_1517_p1;
wire   [10:0] tmp_26_fu_1503_p4;
wire   [51:0] trunc_ln42_16_fu_1513_p1;
wire   [0:0] icmp_ln42_33_fu_1540_p2;
wire   [0:0] icmp_ln42_32_fu_1534_p2;
wire   [10:0] tmp_27_fu_1520_p4;
wire   [51:0] trunc_ln42_17_fu_1530_p1;
wire   [0:0] icmp_ln42_35_fu_1558_p2;
wire   [0:0] icmp_ln42_34_fu_1552_p2;
wire   [0:0] or_ln42_17_fu_1564_p2;
wire   [0:0] or_ln42_16_fu_1546_p2;
wire   [0:0] and_ln42_16_fu_1570_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln42_18_fu_1588_p1;
wire   [63:0] bitcast_ln42_19_fu_1605_p1;
wire   [10:0] tmp_29_fu_1591_p4;
wire   [51:0] trunc_ln42_18_fu_1601_p1;
wire   [0:0] icmp_ln42_37_fu_1628_p2;
wire   [0:0] icmp_ln42_36_fu_1622_p2;
wire   [10:0] tmp_30_fu_1608_p4;
wire   [51:0] trunc_ln42_19_fu_1618_p1;
wire   [0:0] icmp_ln42_39_fu_1646_p2;
wire   [0:0] icmp_ln42_38_fu_1640_p2;
wire   [0:0] or_ln42_19_fu_1652_p2;
wire   [0:0] or_ln42_18_fu_1634_p2;
wire   [0:0] and_ln42_18_fu_1658_p2;
wire   [5:0] add_ln42_3_fu_1670_p2;
wire   [7:0] zext_ln42_8_fu_1675_p1;
wire   [7:0] zext_ln42_9_fu_1691_p1;
wire   [7:0] min_s_31_fu_1679_p3;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln42_20_fu_1701_p1;
wire   [63:0] bitcast_ln42_21_fu_1718_p1;
wire   [10:0] tmp_32_fu_1704_p4;
wire   [51:0] trunc_ln42_20_fu_1714_p1;
wire   [0:0] icmp_ln42_41_fu_1741_p2;
wire   [0:0] icmp_ln42_40_fu_1735_p2;
wire   [10:0] tmp_33_fu_1721_p4;
wire   [51:0] trunc_ln42_21_fu_1731_p1;
wire   [0:0] icmp_ln42_43_fu_1759_p2;
wire   [0:0] icmp_ln42_42_fu_1753_p2;
wire   [0:0] or_ln42_21_fu_1765_p2;
wire   [0:0] or_ln42_20_fu_1747_p2;
wire   [0:0] and_ln42_20_fu_1771_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln42_22_fu_1789_p1;
wire   [63:0] bitcast_ln42_23_fu_1806_p1;
wire   [10:0] tmp_35_fu_1792_p4;
wire   [51:0] trunc_ln42_22_fu_1802_p1;
wire   [0:0] icmp_ln42_45_fu_1829_p2;
wire   [0:0] icmp_ln42_44_fu_1823_p2;
wire   [10:0] tmp_36_fu_1809_p4;
wire   [51:0] trunc_ln42_23_fu_1819_p1;
wire   [0:0] icmp_ln42_47_fu_1847_p2;
wire   [0:0] icmp_ln42_46_fu_1841_p2;
wire   [0:0] or_ln42_23_fu_1853_p2;
wire   [0:0] or_ln42_22_fu_1835_p2;
wire   [0:0] and_ln42_22_fu_1859_p2;
wire   [7:0] zext_ln42_10_fu_1871_p1;
wire   [7:0] zext_ln42_11_fu_1886_p1;
wire   [7:0] min_s_33_fu_1874_p3;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln42_24_fu_1896_p1;
wire   [63:0] bitcast_ln42_25_fu_1913_p1;
wire   [10:0] tmp_38_fu_1899_p4;
wire   [51:0] trunc_ln42_24_fu_1909_p1;
wire   [0:0] icmp_ln42_49_fu_1936_p2;
wire   [0:0] icmp_ln42_48_fu_1930_p2;
wire   [10:0] tmp_39_fu_1916_p4;
wire   [51:0] trunc_ln42_25_fu_1926_p1;
wire   [0:0] icmp_ln42_51_fu_1954_p2;
wire   [0:0] icmp_ln42_50_fu_1948_p2;
wire   [0:0] or_ln42_25_fu_1960_p2;
wire   [0:0] or_ln42_24_fu_1942_p2;
wire   [0:0] and_ln42_24_fu_1966_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln42_26_fu_1984_p1;
wire   [63:0] bitcast_ln42_27_fu_2001_p1;
wire   [10:0] tmp_41_fu_1987_p4;
wire   [51:0] trunc_ln42_26_fu_1997_p1;
wire   [0:0] icmp_ln42_53_fu_2024_p2;
wire   [0:0] icmp_ln42_52_fu_2018_p2;
wire   [10:0] tmp_42_fu_2004_p4;
wire   [51:0] trunc_ln42_27_fu_2014_p1;
wire   [0:0] icmp_ln42_55_fu_2042_p2;
wire   [0:0] icmp_ln42_54_fu_2036_p2;
wire   [0:0] or_ln42_27_fu_2048_p2;
wire   [0:0] or_ln42_26_fu_2030_p2;
wire   [0:0] and_ln42_26_fu_2054_p2;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln42_28_fu_2072_p1;
wire   [63:0] bitcast_ln42_29_fu_2089_p1;
wire   [10:0] tmp_44_fu_2075_p4;
wire   [51:0] trunc_ln42_28_fu_2085_p1;
wire   [0:0] icmp_ln42_57_fu_2112_p2;
wire   [0:0] icmp_ln42_56_fu_2106_p2;
wire   [10:0] tmp_45_fu_2092_p4;
wire   [51:0] trunc_ln42_29_fu_2102_p1;
wire   [0:0] icmp_ln42_59_fu_2130_p2;
wire   [0:0] icmp_ln42_58_fu_2124_p2;
wire   [0:0] or_ln42_29_fu_2136_p2;
wire   [0:0] or_ln42_28_fu_2118_p2;
wire   [0:0] and_ln42_28_fu_2142_p2;
wire   [5:0] add_ln42_4_fu_2170_p2;
wire   [7:0] zext_ln42_12_fu_2175_p1;
wire   [7:0] zext_ln42_13_fu_2185_p1;
wire   [7:0] min_s_35_fu_2179_p3;
wire   [7:0] zext_ln42_14_fu_2195_p1;
wire   [7:0] min_s_36_fu_2188_p3;
wire   [63:0] bitcast_ln42_30_fu_2206_p1;
wire   [63:0] bitcast_ln42_31_fu_2223_p1;
wire   [10:0] tmp_47_fu_2209_p4;
wire   [51:0] trunc_ln42_30_fu_2219_p1;
wire   [0:0] icmp_ln42_61_fu_2246_p2;
wire   [0:0] icmp_ln42_60_fu_2240_p2;
wire   [10:0] tmp_48_fu_2226_p4;
wire   [51:0] trunc_ln42_31_fu_2236_p1;
wire   [0:0] icmp_ln42_63_fu_2264_p2;
wire   [0:0] icmp_ln42_62_fu_2258_p2;
wire   [0:0] or_ln42_31_fu_2270_p2;
wire   [0:0] or_ln42_30_fu_2252_p2;
wire   [0:0] and_ln42_30_fu_2276_p2;
wire   [0:0] and_ln42_31_fu_2282_p2;
wire   [5:0] trunc_ln42_32_fu_2293_p1;
wire   [7:0] zext_ln42_15_fu_2296_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage28_00001;
wire    ap_block_pp0_stage30_00001;
wire    ap_block_pp0_stage32_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [32:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
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
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_104 = 64'd0;
#0 min_s_fu_108 = 8'd0;
#0 min_s_20_fu_112 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage32),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage32_subdone) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_104 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_2426_pp0_iter1_reg == 1'd0))) begin
        min_p_1_fu_104 <= min_p_84_fu_2287_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_20_fu_112 <= 6'd1;
    end else if (((tmp_reg_2426 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_s_20_fu_112 <= add_ln40_10_fu_2160_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_108 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_2426_pp0_iter1_reg == 1'd0))) begin
        min_s_fu_108 <= min_s_38_fu_2300_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_1_reg_2390 <= add_ln40_1_fu_392_p2;
        add_ln40_2_reg_2400 <= add_ln40_2_fu_421_p2;
        add_ln40_3_reg_2410 <= add_ln40_3_fu_450_p2;
        add_ln40_9_reg_2420 <= add_ln40_9_fu_479_p2;
        add_ln40_9_reg_2420_pp0_iter1_reg <= add_ln40_9_reg_2420;
        add_ln40_reg_2375 <= add_ln40_fu_344_p2;
        s_reg_2338 <= ap_sig_allocacmp_s;
        tmp_85_reg_2354 <= {{ap_sig_allocacmp_s[5:2]}};
        tmp_reg_2426 <= add_ln40_9_fu_479_p2[32'd6];
        tmp_reg_2426_pp0_iter1_reg <= tmp_reg_2426;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln40_4_reg_2491 <= add_ln40_4_fu_511_p2;
        add_ln40_5_reg_2501 <= add_ln40_5_fu_539_p2;
        add_ln40_6_reg_2511 <= add_ln40_6_fu_567_p2;
        add_ln40_7_reg_2526 <= add_ln40_7_fu_613_p2;
        add_ln40_8_reg_2536 <= add_ln40_8_fu_641_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln42_11_reg_2684 <= and_ln42_11_fu_1268_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln42_13_reg_2702 <= and_ln42_13_fu_1381_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        and_ln42_15_reg_2715 <= and_ln42_15_fu_1469_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln42_17_reg_2733 <= and_ln42_17_fu_1576_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln42_19_reg_2746 <= and_ln42_19_fu_1664_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_2614 <= and_ln42_1_fu_773_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln42_21_reg_2764 <= and_ln42_21_fu_1777_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln42_23_reg_2777 <= and_ln42_23_fu_1865_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln42_25_reg_2795 <= and_ln42_25_fu_1972_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln42_27_reg_2808 <= and_ln42_27_fu_2060_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln42_29_reg_2821 <= and_ln42_29_fu_2148_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln42_3_reg_2627 <= and_ln42_3_fu_861_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln42_5_reg_2640 <= and_ln42_5_fu_949_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        and_ln42_7_reg_2653 <= and_ln42_7_fu_1037_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln42_9_reg_2671 <= and_ln42_9_fu_1180_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_52_reg_2551 <= min_p_1_fu_104;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_54_reg_2620 <= min_p_54_fu_779_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        min_p_56_reg_2633 <= min_p_56_fu_867_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_p_58_reg_2646 <= min_p_58_fu_955_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_60_reg_2659 <= min_p_60_fu_1088_p3;
        min_s_26_reg_2666 <= min_s_26_fu_1097_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_62_reg_2677 <= min_p_62_fu_1186_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_64_reg_2690 <= min_p_64_fu_1289_p3;
        min_s_28_reg_2697 <= min_s_28_fu_1298_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_p_66_reg_2708 <= min_p_66_fu_1387_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_68_reg_2721 <= min_p_68_fu_1484_p3;
        min_s_30_reg_2728 <= min_s_30_fu_1493_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_70_reg_2739 <= min_p_70_fu_1582_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_72_reg_2752 <= min_p_72_fu_1685_p3;
        min_s_32_reg_2759 <= min_s_32_fu_1694_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_74_reg_2770 <= min_p_74_fu_1783_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_76_reg_2783 <= min_p_76_fu_1880_p3;
        min_s_34_reg_2790 <= min_s_34_fu_1889_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_78_reg_2801 <= min_p_78_fu_1978_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_80_reg_2814 <= min_p_80_fu_2066_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_82_reg_2827 <= min_p_82_fu_2154_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_37_reg_2834 <= min_s_37_fu_2198_p3;
        tmp_49_reg_2839 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_23_reg_2437 <= llike_2_q1;
        p_24_reg_2444 <= llike_3_q1;
        p_25_reg_2451 <= llike_q1;
        p_26_reg_2458 <= llike_1_q0;
        p_27_reg_2465 <= llike_2_q0;
        p_28_reg_2472 <= llike_3_q0;
        p_29_reg_2479 <= llike_q0;
        p_reg_2430 <= llike_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_30_reg_2558 <= llike_1_q1;
        p_31_reg_2565 <= llike_2_q1;
        p_32_reg_2572 <= llike_3_q1;
        p_33_reg_2579 <= llike_q1;
        p_34_reg_2586 <= llike_1_q0;
        p_35_reg_2593 <= llike_2_q0;
        p_36_reg_2600 <= llike_3_q0;
        p_37_reg_2607 <= llike_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_2426 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2426 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_20_fu_112;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage32) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            grp_fu_293_p0 = p_37_reg_2607;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            grp_fu_293_p0 = p_36_reg_2600;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            grp_fu_293_p0 = p_35_reg_2593;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            grp_fu_293_p0 = p_34_reg_2586;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            grp_fu_293_p0 = p_33_reg_2579;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_293_p0 = p_32_reg_2572;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_293_p0 = p_31_reg_2565;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_293_p0 = p_30_reg_2558;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_293_p0 = p_29_reg_2479;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_293_p0 = p_28_reg_2472;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_293_p0 = p_27_reg_2465;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_293_p0 = p_26_reg_2458;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_293_p0 = p_25_reg_2451;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_293_p0 = p_24_reg_2444;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_293_p0 = p_23_reg_2437;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_293_p0 = p_reg_2430;
        end else begin
            grp_fu_293_p0 = 'bx;
        end
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage32) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            grp_fu_293_p1 = min_p_82_fu_2154_p3;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            grp_fu_293_p1 = min_p_80_fu_2066_p3;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            grp_fu_293_p1 = min_p_78_fu_1978_p3;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            grp_fu_293_p1 = min_p_76_fu_1880_p3;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            grp_fu_293_p1 = min_p_74_fu_1783_p3;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_293_p1 = min_p_72_fu_1685_p3;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_293_p1 = min_p_70_fu_1582_p3;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_293_p1 = min_p_68_fu_1484_p3;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_293_p1 = min_p_66_fu_1387_p3;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_293_p1 = min_p_64_fu_1289_p3;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_293_p1 = min_p_62_fu_1186_p3;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_293_p1 = min_p_60_fu_1088_p3;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_293_p1 = min_p_58_fu_955_p3;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_293_p1 = min_p_56_fu_867_p3;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_293_p1 = min_p_54_fu_779_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_293_p1 = min_p_1_fu_104;
        end else begin
            grp_fu_293_p1 = 'bx;
        end
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln41_10_fu_608_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln41_2_fu_387_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln41_6_fu_506_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln41_fu_337_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln41_11_fu_636_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln41_3_fu_416_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address1_local = zext_ln41_7_fu_534_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address1_local = zext_ln41_fu_337_p1;
        end else begin
            llike_2_address1_local = 'bx;
        end
    end else begin
        llike_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln41_12_fu_664_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln41_4_fu_445_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address1_local = zext_ln41_8_fu_562_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address1_local = zext_ln41_fu_337_p1;
        end else begin
            llike_3_address1_local = 'bx;
        end
    end else begin
        llike_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln41_14_fu_688_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln41_5_fu_474_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln41_9_fu_590_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln41_1_fu_368_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2426 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_16_out_ap_vld = 1'b1;
    end else begin
        min_s_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_10_fu_2160_p2 = (s_reg_2338 + 6'd16);
assign add_ln40_1_fu_392_p2 = (ap_sig_allocacmp_s + 6'd5);
assign add_ln40_2_fu_421_p2 = (ap_sig_allocacmp_s + 6'd6);
assign add_ln40_3_fu_450_p2 = (ap_sig_allocacmp_s + 6'd7);
assign add_ln40_4_fu_511_p2 = (s_reg_2338 + 6'd9);
assign add_ln40_5_fu_539_p2 = (s_reg_2338 + 6'd10);
assign add_ln40_6_fu_567_p2 = (s_reg_2338 + 6'd11);
assign add_ln40_7_fu_613_p2 = (s_reg_2338 + 6'd13);
assign add_ln40_8_fu_641_p2 = (s_reg_2338 + 6'd14);
assign add_ln40_9_fu_479_p2 = (zext_ln20_fu_315_p1 + 7'd15);
assign add_ln40_fu_344_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln41_fu_682_p2 = ($signed(zext_ln41_13_fu_678_p1) + $signed(12'd2224));
assign add_ln42_1_fu_1072_p2 = (s_reg_2338 + 6'd2);
assign add_ln42_2_fu_1274_p2 = (s_reg_2338 + 6'd4);
assign add_ln42_3_fu_1670_p2 = (s_reg_2338 + 6'd8);
assign add_ln42_4_fu_2170_p2 = (s_reg_2338 + 6'd12);
assign add_ln42_fu_1056_p2 = (s_reg_2338 + 6'd1);
assign add_ln8_1_fu_493_p2 = (tmp_85_reg_2354 + 4'd2);
assign add_ln8_2_fu_595_p2 = (tmp_85_reg_2354 + 4'd3);
assign add_ln8_fu_373_p2 = (tmp_85_fu_319_p4 + 4'd1);
assign and_ln42_10_fu_1262_p2 = (or_ln42_11_fu_1256_p2 & or_ln42_10_fu_1238_p2);
assign and_ln42_11_fu_1268_p2 = (grp_fu_1050_p_dout0 & and_ln42_10_fu_1262_p2);
assign and_ln42_12_fu_1375_p2 = (or_ln42_13_fu_1369_p2 & or_ln42_12_fu_1351_p2);
assign and_ln42_13_fu_1381_p2 = (grp_fu_1050_p_dout0 & and_ln42_12_fu_1375_p2);
assign and_ln42_14_fu_1463_p2 = (or_ln42_15_fu_1457_p2 & or_ln42_14_fu_1439_p2);
assign and_ln42_15_fu_1469_p2 = (grp_fu_1050_p_dout0 & and_ln42_14_fu_1463_p2);
assign and_ln42_16_fu_1570_p2 = (or_ln42_17_fu_1564_p2 & or_ln42_16_fu_1546_p2);
assign and_ln42_17_fu_1576_p2 = (grp_fu_1050_p_dout0 & and_ln42_16_fu_1570_p2);
assign and_ln42_18_fu_1658_p2 = (or_ln42_19_fu_1652_p2 & or_ln42_18_fu_1634_p2);
assign and_ln42_19_fu_1664_p2 = (grp_fu_1050_p_dout0 & and_ln42_18_fu_1658_p2);
assign and_ln42_1_fu_773_p2 = (or_ln42_1_fu_761_p2 & and_ln42_fu_767_p2);
assign and_ln42_20_fu_1771_p2 = (or_ln42_21_fu_1765_p2 & or_ln42_20_fu_1747_p2);
assign and_ln42_21_fu_1777_p2 = (grp_fu_1050_p_dout0 & and_ln42_20_fu_1771_p2);
assign and_ln42_22_fu_1859_p2 = (or_ln42_23_fu_1853_p2 & or_ln42_22_fu_1835_p2);
assign and_ln42_23_fu_1865_p2 = (grp_fu_1050_p_dout0 & and_ln42_22_fu_1859_p2);
assign and_ln42_24_fu_1966_p2 = (or_ln42_25_fu_1960_p2 & or_ln42_24_fu_1942_p2);
assign and_ln42_25_fu_1972_p2 = (grp_fu_1050_p_dout0 & and_ln42_24_fu_1966_p2);
assign and_ln42_26_fu_2054_p2 = (or_ln42_27_fu_2048_p2 & or_ln42_26_fu_2030_p2);
assign and_ln42_27_fu_2060_p2 = (grp_fu_1050_p_dout0 & and_ln42_26_fu_2054_p2);
assign and_ln42_28_fu_2142_p2 = (or_ln42_29_fu_2136_p2 & or_ln42_28_fu_2118_p2);
assign and_ln42_29_fu_2148_p2 = (grp_fu_1050_p_dout0 & and_ln42_28_fu_2142_p2);
assign and_ln42_2_fu_855_p2 = (or_ln42_3_fu_849_p2 & or_ln42_2_fu_831_p2);
assign and_ln42_30_fu_2276_p2 = (or_ln42_31_fu_2270_p2 & or_ln42_30_fu_2252_p2);
assign and_ln42_31_fu_2282_p2 = (tmp_49_reg_2839 & and_ln42_30_fu_2276_p2);
assign and_ln42_3_fu_861_p2 = (grp_fu_1050_p_dout0 & and_ln42_2_fu_855_p2);
assign and_ln42_4_fu_943_p2 = (or_ln42_5_fu_937_p2 & or_ln42_4_fu_919_p2);
assign and_ln42_5_fu_949_p2 = (grp_fu_1050_p_dout0 & and_ln42_4_fu_943_p2);
assign and_ln42_6_fu_1031_p2 = (or_ln42_7_fu_1025_p2 & or_ln42_6_fu_1007_p2);
assign and_ln42_7_fu_1037_p2 = (grp_fu_1050_p_dout0 & and_ln42_6_fu_1031_p2);
assign and_ln42_8_fu_1174_p2 = (or_ln42_9_fu_1168_p2 & or_ln42_8_fu_1150_p2);
assign and_ln42_9_fu_1180_p2 = (grp_fu_1050_p_dout0 & and_ln42_8_fu_1174_p2);
assign and_ln42_fu_767_p2 = (or_ln42_fu_743_p2 & grp_fu_1050_p_dout0);
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
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage32;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_10_fu_1192_p1 = p_27_reg_2465;
assign bitcast_ln42_11_fu_1209_p1 = min_p_62_reg_2677;
assign bitcast_ln42_12_fu_1305_p1 = p_28_reg_2472;
assign bitcast_ln42_13_fu_1322_p1 = min_p_64_reg_2690;
assign bitcast_ln42_14_fu_1393_p1 = p_29_reg_2479;
assign bitcast_ln42_15_fu_1410_p1 = min_p_66_reg_2708;
assign bitcast_ln42_16_fu_1500_p1 = p_30_reg_2558;
assign bitcast_ln42_17_fu_1517_p1 = min_p_68_reg_2721;
assign bitcast_ln42_18_fu_1588_p1 = p_31_reg_2565;
assign bitcast_ln42_19_fu_1605_p1 = min_p_70_reg_2739;
assign bitcast_ln42_1_fu_714_p1 = min_p_52_reg_2551;
assign bitcast_ln42_20_fu_1701_p1 = p_32_reg_2572;
assign bitcast_ln42_21_fu_1718_p1 = min_p_72_reg_2752;
assign bitcast_ln42_22_fu_1789_p1 = p_33_reg_2579;
assign bitcast_ln42_23_fu_1806_p1 = min_p_74_reg_2770;
assign bitcast_ln42_24_fu_1896_p1 = p_34_reg_2586;
assign bitcast_ln42_25_fu_1913_p1 = min_p_76_reg_2783;
assign bitcast_ln42_26_fu_1984_p1 = p_35_reg_2593;
assign bitcast_ln42_27_fu_2001_p1 = min_p_78_reg_2801;
assign bitcast_ln42_28_fu_2072_p1 = p_36_reg_2600;
assign bitcast_ln42_29_fu_2089_p1 = min_p_80_reg_2814;
assign bitcast_ln42_2_fu_785_p1 = p_23_reg_2437;
assign bitcast_ln42_30_fu_2206_p1 = p_37_reg_2607;
assign bitcast_ln42_31_fu_2223_p1 = min_p_82_reg_2827;
assign bitcast_ln42_3_fu_802_p1 = min_p_54_reg_2620;
assign bitcast_ln42_4_fu_873_p1 = p_24_reg_2444;
assign bitcast_ln42_5_fu_890_p1 = min_p_56_reg_2633;
assign bitcast_ln42_6_fu_961_p1 = p_25_reg_2451;
assign bitcast_ln42_7_fu_978_p1 = min_p_58_reg_2646;
assign bitcast_ln42_8_fu_1104_p1 = p_26_reg_2458;
assign bitcast_ln42_9_fu_1121_p1 = min_p_60_reg_2659;
assign bitcast_ln42_fu_697_p1 = p_reg_2430;
assign grp_fu_1050_p_ce = 1'b1;
assign grp_fu_1050_p_din0 = grp_fu_293_p0;
assign grp_fu_1050_p_din1 = grp_fu_293_p1;
assign grp_fu_1050_p_opcode = 5'd4;
assign icmp_ln42_10_fu_925_p2 = ((tmp_s_fu_893_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_11_fu_931_p2 = ((trunc_ln42_5_fu_903_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_12_fu_995_p2 = ((tmp_11_fu_964_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_13_fu_1001_p2 = ((trunc_ln42_6_fu_974_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_14_fu_1013_p2 = ((tmp_12_fu_981_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_15_fu_1019_p2 = ((trunc_ln42_7_fu_991_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_16_fu_1138_p2 = ((tmp_14_fu_1107_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_17_fu_1144_p2 = ((trunc_ln42_8_fu_1117_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_18_fu_1156_p2 = ((tmp_15_fu_1124_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_19_fu_1162_p2 = ((trunc_ln42_9_fu_1134_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_1_fu_737_p2 = ((trunc_ln42_fu_710_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_20_fu_1226_p2 = ((tmp_17_fu_1195_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_21_fu_1232_p2 = ((trunc_ln42_10_fu_1205_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_22_fu_1244_p2 = ((tmp_18_fu_1212_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_23_fu_1250_p2 = ((trunc_ln42_11_fu_1222_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_24_fu_1339_p2 = ((tmp_20_fu_1308_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_25_fu_1345_p2 = ((trunc_ln42_12_fu_1318_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_26_fu_1357_p2 = ((tmp_21_fu_1325_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_27_fu_1363_p2 = ((trunc_ln42_13_fu_1335_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_28_fu_1427_p2 = ((tmp_23_fu_1396_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_29_fu_1433_p2 = ((trunc_ln42_14_fu_1406_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_749_p2 = ((tmp_3_fu_717_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_30_fu_1445_p2 = ((tmp_24_fu_1413_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_31_fu_1451_p2 = ((trunc_ln42_15_fu_1423_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_32_fu_1534_p2 = ((tmp_26_fu_1503_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_33_fu_1540_p2 = ((trunc_ln42_16_fu_1513_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_34_fu_1552_p2 = ((tmp_27_fu_1520_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_35_fu_1558_p2 = ((trunc_ln42_17_fu_1530_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_36_fu_1622_p2 = ((tmp_29_fu_1591_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_37_fu_1628_p2 = ((trunc_ln42_18_fu_1601_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_38_fu_1640_p2 = ((tmp_30_fu_1608_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_39_fu_1646_p2 = ((trunc_ln42_19_fu_1618_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_755_p2 = ((trunc_ln42_1_fu_727_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_40_fu_1735_p2 = ((tmp_32_fu_1704_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_41_fu_1741_p2 = ((trunc_ln42_20_fu_1714_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_42_fu_1753_p2 = ((tmp_33_fu_1721_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_43_fu_1759_p2 = ((trunc_ln42_21_fu_1731_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_44_fu_1823_p2 = ((tmp_35_fu_1792_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_45_fu_1829_p2 = ((trunc_ln42_22_fu_1802_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_46_fu_1841_p2 = ((tmp_36_fu_1809_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_47_fu_1847_p2 = ((trunc_ln42_23_fu_1819_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_48_fu_1930_p2 = ((tmp_38_fu_1899_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_49_fu_1936_p2 = ((trunc_ln42_24_fu_1909_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_819_p2 = ((tmp_5_fu_788_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_50_fu_1948_p2 = ((tmp_39_fu_1916_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_51_fu_1954_p2 = ((trunc_ln42_25_fu_1926_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_52_fu_2018_p2 = ((tmp_41_fu_1987_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_53_fu_2024_p2 = ((trunc_ln42_26_fu_1997_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_54_fu_2036_p2 = ((tmp_42_fu_2004_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_55_fu_2042_p2 = ((trunc_ln42_27_fu_2014_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_56_fu_2106_p2 = ((tmp_44_fu_2075_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_57_fu_2112_p2 = ((trunc_ln42_28_fu_2085_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_58_fu_2124_p2 = ((tmp_45_fu_2092_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_59_fu_2130_p2 = ((trunc_ln42_29_fu_2102_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_825_p2 = ((trunc_ln42_2_fu_798_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_60_fu_2240_p2 = ((tmp_47_fu_2209_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_61_fu_2246_p2 = ((trunc_ln42_30_fu_2219_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_62_fu_2258_p2 = ((tmp_48_fu_2226_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_63_fu_2264_p2 = ((trunc_ln42_31_fu_2236_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_837_p2 = ((tmp_6_fu_805_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_843_p2 = ((trunc_ln42_3_fu_815_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_8_fu_907_p2 = ((tmp_9_fu_876_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_9_fu_913_p2 = ((trunc_ln42_4_fu_886_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_731_p2 = ((tmp_2_fu_700_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_address1 = llike_2_address1_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_address1 = llike_3_address1_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln9_2_fu_669_p4 = {{add_ln40_9_reg_2420[6:2]}};
assign min_p_54_fu_779_p3 = ((and_ln42_1_reg_2614[0:0] == 1'b1) ? p_reg_2430 : min_p_52_reg_2551);
assign min_p_56_fu_867_p3 = ((and_ln42_3_reg_2627[0:0] == 1'b1) ? p_23_reg_2437 : min_p_54_reg_2620);
assign min_p_58_fu_955_p3 = ((and_ln42_5_reg_2640[0:0] == 1'b1) ? p_24_reg_2444 : min_p_56_reg_2633);
assign min_p_60_fu_1088_p3 = ((and_ln42_7_reg_2653[0:0] == 1'b1) ? p_25_reg_2451 : min_p_58_reg_2646);
assign min_p_62_fu_1186_p3 = ((and_ln42_9_reg_2671[0:0] == 1'b1) ? p_26_reg_2458 : min_p_60_reg_2659);
assign min_p_64_fu_1289_p3 = ((and_ln42_11_reg_2684[0:0] == 1'b1) ? p_27_reg_2465 : min_p_62_reg_2677);
assign min_p_66_fu_1387_p3 = ((and_ln42_13_reg_2702[0:0] == 1'b1) ? p_28_reg_2472 : min_p_64_reg_2690);
assign min_p_68_fu_1484_p3 = ((and_ln42_15_reg_2715[0:0] == 1'b1) ? p_29_reg_2479 : min_p_66_reg_2708);
assign min_p_70_fu_1582_p3 = ((and_ln42_17_reg_2733[0:0] == 1'b1) ? p_30_reg_2558 : min_p_68_reg_2721);
assign min_p_72_fu_1685_p3 = ((and_ln42_19_reg_2746[0:0] == 1'b1) ? p_31_reg_2565 : min_p_70_reg_2739);
assign min_p_74_fu_1783_p3 = ((and_ln42_21_reg_2764[0:0] == 1'b1) ? p_32_reg_2572 : min_p_72_reg_2752);
assign min_p_76_fu_1880_p3 = ((and_ln42_23_reg_2777[0:0] == 1'b1) ? p_33_reg_2579 : min_p_74_reg_2770);
assign min_p_78_fu_1978_p3 = ((and_ln42_25_reg_2795[0:0] == 1'b1) ? p_34_reg_2586 : min_p_76_reg_2783);
assign min_p_80_fu_2066_p3 = ((and_ln42_27_reg_2808[0:0] == 1'b1) ? p_35_reg_2593 : min_p_78_reg_2801);
assign min_p_82_fu_2154_p3 = ((and_ln42_29_reg_2821[0:0] == 1'b1) ? p_36_reg_2600 : min_p_80_reg_2814);
assign min_p_84_fu_2287_p3 = ((and_ln42_31_fu_2282_p2[0:0] == 1'b1) ? p_37_reg_2607 : min_p_82_reg_2827);
assign min_s_16_out = ((and_ln42_29_reg_2821[0:0] == 1'b1) ? zext_ln42_14_fu_2195_p1 : min_s_36_fu_2188_p3);
assign min_s_23_fu_1049_p3 = ((and_ln42_1_reg_2614[0:0] == 1'b1) ? zext_ln42_fu_1046_p1 : min_s_fu_108);
assign min_s_24_fu_1065_p3 = ((and_ln42_3_reg_2627[0:0] == 1'b1) ? zext_ln42_1_fu_1061_p1 : min_s_23_fu_1049_p3);
assign min_s_25_fu_1081_p3 = ((and_ln42_5_reg_2640[0:0] == 1'b1) ? zext_ln42_2_fu_1077_p1 : min_s_24_fu_1065_p3);
assign min_s_26_fu_1097_p3 = ((and_ln42_7_reg_2653[0:0] == 1'b1) ? zext_ln42_3_fu_1094_p1 : min_s_25_fu_1081_p3);
assign min_s_27_fu_1283_p3 = ((and_ln42_9_reg_2671[0:0] == 1'b1) ? zext_ln42_4_fu_1279_p1 : min_s_26_reg_2666);
assign min_s_28_fu_1298_p3 = ((and_ln42_11_reg_2684[0:0] == 1'b1) ? zext_ln42_5_fu_1295_p1 : min_s_27_fu_1283_p3);
assign min_s_29_fu_1478_p3 = ((and_ln42_13_reg_2702[0:0] == 1'b1) ? zext_ln42_6_fu_1475_p1 : min_s_28_reg_2697);
assign min_s_30_fu_1493_p3 = ((and_ln42_15_reg_2715[0:0] == 1'b1) ? zext_ln42_7_fu_1490_p1 : min_s_29_fu_1478_p3);
assign min_s_31_fu_1679_p3 = ((and_ln42_17_reg_2733[0:0] == 1'b1) ? zext_ln42_8_fu_1675_p1 : min_s_30_reg_2728);
assign min_s_32_fu_1694_p3 = ((and_ln42_19_reg_2746[0:0] == 1'b1) ? zext_ln42_9_fu_1691_p1 : min_s_31_fu_1679_p3);
assign min_s_33_fu_1874_p3 = ((and_ln42_21_reg_2764[0:0] == 1'b1) ? zext_ln42_10_fu_1871_p1 : min_s_32_reg_2759);
assign min_s_34_fu_1889_p3 = ((and_ln42_23_reg_2777[0:0] == 1'b1) ? zext_ln42_11_fu_1886_p1 : min_s_33_fu_1874_p3);
assign min_s_35_fu_2179_p3 = ((and_ln42_25_reg_2795[0:0] == 1'b1) ? zext_ln42_12_fu_2175_p1 : min_s_34_reg_2790);
assign min_s_36_fu_2188_p3 = ((and_ln42_27_reg_2808[0:0] == 1'b1) ? zext_ln42_13_fu_2185_p1 : min_s_35_fu_2179_p3);
assign min_s_37_fu_2198_p3 = ((and_ln42_29_reg_2821[0:0] == 1'b1) ? zext_ln42_14_fu_2195_p1 : min_s_36_fu_2188_p3);
assign min_s_38_fu_2300_p3 = ((and_ln42_31_fu_2282_p2[0:0] == 1'b1) ? zext_ln42_15_fu_2296_p1 : min_s_37_reg_2834);
assign or_ln42_10_fu_1238_p2 = (icmp_ln42_21_fu_1232_p2 | icmp_ln42_20_fu_1226_p2);
assign or_ln42_11_fu_1256_p2 = (icmp_ln42_23_fu_1250_p2 | icmp_ln42_22_fu_1244_p2);
assign or_ln42_12_fu_1351_p2 = (icmp_ln42_25_fu_1345_p2 | icmp_ln42_24_fu_1339_p2);
assign or_ln42_13_fu_1369_p2 = (icmp_ln42_27_fu_1363_p2 | icmp_ln42_26_fu_1357_p2);
assign or_ln42_14_fu_1439_p2 = (icmp_ln42_29_fu_1433_p2 | icmp_ln42_28_fu_1427_p2);
assign or_ln42_15_fu_1457_p2 = (icmp_ln42_31_fu_1451_p2 | icmp_ln42_30_fu_1445_p2);
assign or_ln42_16_fu_1546_p2 = (icmp_ln42_33_fu_1540_p2 | icmp_ln42_32_fu_1534_p2);
assign or_ln42_17_fu_1564_p2 = (icmp_ln42_35_fu_1558_p2 | icmp_ln42_34_fu_1552_p2);
assign or_ln42_18_fu_1634_p2 = (icmp_ln42_37_fu_1628_p2 | icmp_ln42_36_fu_1622_p2);
assign or_ln42_19_fu_1652_p2 = (icmp_ln42_39_fu_1646_p2 | icmp_ln42_38_fu_1640_p2);
assign or_ln42_1_fu_761_p2 = (icmp_ln42_3_fu_755_p2 | icmp_ln42_2_fu_749_p2);
assign or_ln42_20_fu_1747_p2 = (icmp_ln42_41_fu_1741_p2 | icmp_ln42_40_fu_1735_p2);
assign or_ln42_21_fu_1765_p2 = (icmp_ln42_43_fu_1759_p2 | icmp_ln42_42_fu_1753_p2);
assign or_ln42_22_fu_1835_p2 = (icmp_ln42_45_fu_1829_p2 | icmp_ln42_44_fu_1823_p2);
assign or_ln42_23_fu_1853_p2 = (icmp_ln42_47_fu_1847_p2 | icmp_ln42_46_fu_1841_p2);
assign or_ln42_24_fu_1942_p2 = (icmp_ln42_49_fu_1936_p2 | icmp_ln42_48_fu_1930_p2);
assign or_ln42_25_fu_1960_p2 = (icmp_ln42_51_fu_1954_p2 | icmp_ln42_50_fu_1948_p2);
assign or_ln42_26_fu_2030_p2 = (icmp_ln42_53_fu_2024_p2 | icmp_ln42_52_fu_2018_p2);
assign or_ln42_27_fu_2048_p2 = (icmp_ln42_55_fu_2042_p2 | icmp_ln42_54_fu_2036_p2);
assign or_ln42_28_fu_2118_p2 = (icmp_ln42_57_fu_2112_p2 | icmp_ln42_56_fu_2106_p2);
assign or_ln42_29_fu_2136_p2 = (icmp_ln42_59_fu_2130_p2 | icmp_ln42_58_fu_2124_p2);
assign or_ln42_2_fu_831_p2 = (icmp_ln42_5_fu_825_p2 | icmp_ln42_4_fu_819_p2);
assign or_ln42_30_fu_2252_p2 = (icmp_ln42_61_fu_2246_p2 | icmp_ln42_60_fu_2240_p2);
assign or_ln42_31_fu_2270_p2 = (icmp_ln42_63_fu_2264_p2 | icmp_ln42_62_fu_2258_p2);
assign or_ln42_3_fu_849_p2 = (icmp_ln42_7_fu_843_p2 | icmp_ln42_6_fu_837_p2);
assign or_ln42_4_fu_919_p2 = (icmp_ln42_9_fu_913_p2 | icmp_ln42_8_fu_907_p2);
assign or_ln42_5_fu_937_p2 = (icmp_ln42_11_fu_931_p2 | icmp_ln42_10_fu_925_p2);
assign or_ln42_6_fu_1007_p2 = (icmp_ln42_13_fu_1001_p2 | icmp_ln42_12_fu_995_p2);
assign or_ln42_7_fu_1025_p2 = (icmp_ln42_15_fu_1019_p2 | icmp_ln42_14_fu_1013_p2);
assign or_ln42_8_fu_1150_p2 = (icmp_ln42_17_fu_1144_p2 | icmp_ln42_16_fu_1138_p2);
assign or_ln42_9_fu_1168_p2 = (icmp_ln42_19_fu_1162_p2 | icmp_ln42_18_fu_1156_p2);
assign or_ln42_fu_743_p2 = (icmp_ln42_fu_731_p2 | icmp_ln42_1_fu_737_p2);
assign tmp_11_fu_964_p4 = {{bitcast_ln42_6_fu_961_p1[62:52]}};
assign tmp_12_fu_981_p4 = {{bitcast_ln42_7_fu_978_p1[62:52]}};
assign tmp_139_cast_fu_329_p3 = {{8'd139}, {tmp_85_fu_319_p4}};
assign tmp_141_cast_fu_360_p3 = {{8'd139}, {tmp_86_fu_350_p4}};
assign tmp_142_cast_fu_379_p3 = {{8'd139}, {add_ln8_fu_373_p2}};
assign tmp_144_cast_fu_408_p3 = {{8'd139}, {tmp_87_fu_398_p4}};
assign tmp_146_cast_fu_437_p3 = {{8'd139}, {tmp_88_fu_427_p4}};
assign tmp_148_cast_fu_466_p3 = {{8'd139}, {tmp_89_fu_456_p4}};
assign tmp_149_cast_fu_498_p3 = {{8'd139}, {add_ln8_1_fu_493_p2}};
assign tmp_14_fu_1107_p4 = {{bitcast_ln42_8_fu_1104_p1[62:52]}};
assign tmp_151_cast_fu_526_p3 = {{8'd139}, {tmp_90_fu_516_p4}};
assign tmp_153_cast_fu_554_p3 = {{8'd139}, {tmp_91_fu_544_p4}};
assign tmp_155_cast_fu_582_p3 = {{8'd139}, {tmp_92_fu_572_p4}};
assign tmp_156_cast_fu_600_p3 = {{8'd139}, {add_ln8_2_fu_595_p2}};
assign tmp_158_cast_fu_628_p3 = {{8'd139}, {tmp_93_fu_618_p4}};
assign tmp_15_fu_1124_p4 = {{bitcast_ln42_9_fu_1121_p1[62:52]}};
assign tmp_160_cast_fu_656_p3 = {{8'd139}, {tmp_94_fu_646_p4}};
assign tmp_17_fu_1195_p4 = {{bitcast_ln42_10_fu_1192_p1[62:52]}};
assign tmp_18_fu_1212_p4 = {{bitcast_ln42_11_fu_1209_p1[62:52]}};
assign tmp_20_fu_1308_p4 = {{bitcast_ln42_12_fu_1305_p1[62:52]}};
assign tmp_21_fu_1325_p4 = {{bitcast_ln42_13_fu_1322_p1[62:52]}};
assign tmp_23_fu_1396_p4 = {{bitcast_ln42_14_fu_1393_p1[62:52]}};
assign tmp_24_fu_1413_p4 = {{bitcast_ln42_15_fu_1410_p1[62:52]}};
assign tmp_26_fu_1503_p4 = {{bitcast_ln42_16_fu_1500_p1[62:52]}};
assign tmp_27_fu_1520_p4 = {{bitcast_ln42_17_fu_1517_p1[62:52]}};
assign tmp_29_fu_1591_p4 = {{bitcast_ln42_18_fu_1588_p1[62:52]}};
assign tmp_2_fu_700_p4 = {{bitcast_ln42_fu_697_p1[62:52]}};
assign tmp_30_fu_1608_p4 = {{bitcast_ln42_19_fu_1605_p1[62:52]}};
assign tmp_32_fu_1704_p4 = {{bitcast_ln42_20_fu_1701_p1[62:52]}};
assign tmp_33_fu_1721_p4 = {{bitcast_ln42_21_fu_1718_p1[62:52]}};
assign tmp_35_fu_1792_p4 = {{bitcast_ln42_22_fu_1789_p1[62:52]}};
assign tmp_36_fu_1809_p4 = {{bitcast_ln42_23_fu_1806_p1[62:52]}};
assign tmp_38_fu_1899_p4 = {{bitcast_ln42_24_fu_1896_p1[62:52]}};
assign tmp_39_fu_1916_p4 = {{bitcast_ln42_25_fu_1913_p1[62:52]}};
assign tmp_3_fu_717_p4 = {{bitcast_ln42_1_fu_714_p1[62:52]}};
assign tmp_41_fu_1987_p4 = {{bitcast_ln42_26_fu_1984_p1[62:52]}};
assign tmp_42_fu_2004_p4 = {{bitcast_ln42_27_fu_2001_p1[62:52]}};
assign tmp_44_fu_2075_p4 = {{bitcast_ln42_28_fu_2072_p1[62:52]}};
assign tmp_45_fu_2092_p4 = {{bitcast_ln42_29_fu_2089_p1[62:52]}};
assign tmp_47_fu_2209_p4 = {{bitcast_ln42_30_fu_2206_p1[62:52]}};
assign tmp_48_fu_2226_p4 = {{bitcast_ln42_31_fu_2223_p1[62:52]}};
assign tmp_5_fu_788_p4 = {{bitcast_ln42_2_fu_785_p1[62:52]}};
assign tmp_6_fu_805_p4 = {{bitcast_ln42_3_fu_802_p1[62:52]}};
assign tmp_85_fu_319_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign tmp_86_fu_350_p4 = {{add_ln40_fu_344_p2[5:2]}};
assign tmp_87_fu_398_p4 = {{add_ln40_1_fu_392_p2[5:2]}};
assign tmp_88_fu_427_p4 = {{add_ln40_2_fu_421_p2[5:2]}};
assign tmp_89_fu_456_p4 = {{add_ln40_3_fu_450_p2[5:2]}};
assign tmp_90_fu_516_p4 = {{add_ln40_4_fu_511_p2[5:2]}};
assign tmp_91_fu_544_p4 = {{add_ln40_5_fu_539_p2[5:2]}};
assign tmp_92_fu_572_p4 = {{add_ln40_6_fu_567_p2[5:2]}};
assign tmp_93_fu_618_p4 = {{add_ln40_7_fu_613_p2[5:2]}};
assign tmp_94_fu_646_p4 = {{add_ln40_8_fu_641_p2[5:2]}};
assign tmp_9_fu_876_p4 = {{bitcast_ln42_4_fu_873_p1[62:52]}};
assign tmp_s_fu_893_p4 = {{bitcast_ln42_5_fu_890_p1[62:52]}};
assign trunc_ln42_10_fu_1205_p1 = bitcast_ln42_10_fu_1192_p1[51:0];
assign trunc_ln42_11_fu_1222_p1 = bitcast_ln42_11_fu_1209_p1[51:0];
assign trunc_ln42_12_fu_1318_p1 = bitcast_ln42_12_fu_1305_p1[51:0];
assign trunc_ln42_13_fu_1335_p1 = bitcast_ln42_13_fu_1322_p1[51:0];
assign trunc_ln42_14_fu_1406_p1 = bitcast_ln42_14_fu_1393_p1[51:0];
assign trunc_ln42_15_fu_1423_p1 = bitcast_ln42_15_fu_1410_p1[51:0];
assign trunc_ln42_16_fu_1513_p1 = bitcast_ln42_16_fu_1500_p1[51:0];
assign trunc_ln42_17_fu_1530_p1 = bitcast_ln42_17_fu_1517_p1[51:0];
assign trunc_ln42_18_fu_1601_p1 = bitcast_ln42_18_fu_1588_p1[51:0];
assign trunc_ln42_19_fu_1618_p1 = bitcast_ln42_19_fu_1605_p1[51:0];
assign trunc_ln42_1_fu_727_p1 = bitcast_ln42_1_fu_714_p1[51:0];
assign trunc_ln42_20_fu_1714_p1 = bitcast_ln42_20_fu_1701_p1[51:0];
assign trunc_ln42_21_fu_1731_p1 = bitcast_ln42_21_fu_1718_p1[51:0];
assign trunc_ln42_22_fu_1802_p1 = bitcast_ln42_22_fu_1789_p1[51:0];
assign trunc_ln42_23_fu_1819_p1 = bitcast_ln42_23_fu_1806_p1[51:0];
assign trunc_ln42_24_fu_1909_p1 = bitcast_ln42_24_fu_1896_p1[51:0];
assign trunc_ln42_25_fu_1926_p1 = bitcast_ln42_25_fu_1913_p1[51:0];
assign trunc_ln42_26_fu_1997_p1 = bitcast_ln42_26_fu_1984_p1[51:0];
assign trunc_ln42_27_fu_2014_p1 = bitcast_ln42_27_fu_2001_p1[51:0];
assign trunc_ln42_28_fu_2085_p1 = bitcast_ln42_28_fu_2072_p1[51:0];
assign trunc_ln42_29_fu_2102_p1 = bitcast_ln42_29_fu_2089_p1[51:0];
assign trunc_ln42_2_fu_798_p1 = bitcast_ln42_2_fu_785_p1[51:0];
assign trunc_ln42_30_fu_2219_p1 = bitcast_ln42_30_fu_2206_p1[51:0];
assign trunc_ln42_31_fu_2236_p1 = bitcast_ln42_31_fu_2223_p1[51:0];
assign trunc_ln42_32_fu_2293_p1 = add_ln40_9_reg_2420_pp0_iter1_reg[5:0];
assign trunc_ln42_3_fu_815_p1 = bitcast_ln42_3_fu_802_p1[51:0];
assign trunc_ln42_4_fu_886_p1 = bitcast_ln42_4_fu_873_p1[51:0];
assign trunc_ln42_5_fu_903_p1 = bitcast_ln42_5_fu_890_p1[51:0];
assign trunc_ln42_6_fu_974_p1 = bitcast_ln42_6_fu_961_p1[51:0];
assign trunc_ln42_7_fu_991_p1 = bitcast_ln42_7_fu_978_p1[51:0];
assign trunc_ln42_8_fu_1117_p1 = bitcast_ln42_8_fu_1104_p1[51:0];
assign trunc_ln42_9_fu_1134_p1 = bitcast_ln42_9_fu_1121_p1[51:0];
assign trunc_ln42_fu_710_p1 = bitcast_ln42_fu_697_p1[51:0];
assign zext_ln20_fu_315_p1 = ap_sig_allocacmp_s;
assign zext_ln41_10_fu_608_p1 = tmp_156_cast_fu_600_p3;
assign zext_ln41_11_fu_636_p1 = tmp_158_cast_fu_628_p3;
assign zext_ln41_12_fu_664_p1 = tmp_160_cast_fu_656_p3;
assign zext_ln41_13_fu_678_p1 = lshr_ln9_2_fu_669_p4;
assign zext_ln41_14_fu_688_p1 = add_ln41_fu_682_p2;
assign zext_ln41_1_fu_368_p1 = tmp_141_cast_fu_360_p3;
assign zext_ln41_2_fu_387_p1 = tmp_142_cast_fu_379_p3;
assign zext_ln41_3_fu_416_p1 = tmp_144_cast_fu_408_p3;
assign zext_ln41_4_fu_445_p1 = tmp_146_cast_fu_437_p3;
assign zext_ln41_5_fu_474_p1 = tmp_148_cast_fu_466_p3;
assign zext_ln41_6_fu_506_p1 = tmp_149_cast_fu_498_p3;
assign zext_ln41_7_fu_534_p1 = tmp_151_cast_fu_526_p3;
assign zext_ln41_8_fu_562_p1 = tmp_153_cast_fu_554_p3;
assign zext_ln41_9_fu_590_p1 = tmp_155_cast_fu_582_p3;
assign zext_ln41_fu_337_p1 = tmp_139_cast_fu_329_p3;
assign zext_ln42_10_fu_1871_p1 = add_ln40_5_reg_2501;
assign zext_ln42_11_fu_1886_p1 = add_ln40_6_reg_2511;
assign zext_ln42_12_fu_2175_p1 = add_ln42_4_fu_2170_p2;
assign zext_ln42_13_fu_2185_p1 = add_ln40_7_reg_2526;
assign zext_ln42_14_fu_2195_p1 = add_ln40_8_reg_2536;
assign zext_ln42_15_fu_2296_p1 = trunc_ln42_32_fu_2293_p1;
assign zext_ln42_1_fu_1061_p1 = add_ln42_fu_1056_p2;
assign zext_ln42_2_fu_1077_p1 = add_ln42_1_fu_1072_p2;
assign zext_ln42_3_fu_1094_p1 = add_ln40_reg_2375;
assign zext_ln42_4_fu_1279_p1 = add_ln42_2_fu_1274_p2;
assign zext_ln42_5_fu_1295_p1 = add_ln40_1_reg_2390;
assign zext_ln42_6_fu_1475_p1 = add_ln40_2_reg_2400;
assign zext_ln42_7_fu_1490_p1 = add_ln40_3_reg_2410;
assign zext_ln42_8_fu_1675_p1 = add_ln42_3_fu_1670_p2;
assign zext_ln42_9_fu_1691_p1 = add_ln40_4_reg_2491;
assign zext_ln42_fu_1046_p1 = s_reg_2338;
endmodule 