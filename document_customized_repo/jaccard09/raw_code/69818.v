module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_34,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty,min_p_66_out,min_p_66_out_ap_vld,grp_fu_453_p_din0,grp_fu_453_p_din1,grp_fu_453_p_opcode,grp_fu_453_p_dout0,grp_fu_453_p_ce,grp_fu_1050_p_din0,grp_fu_1050_p_din1,grp_fu_1050_p_opcode,grp_fu_1050_p_dout0,grp_fu_1050_p_ce,grp_fu_1054_p_din0,grp_fu_1054_p_din1,grp_fu_1054_p_opcode,grp_fu_1054_p_dout0,grp_fu_1054_p_ce); 
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
input  [63:0] min_p_34;
input  [7:0] empty_9;
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
input  [4:0] lshr_ln;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
input  [0:0] empty_10;
input  [63:0] bitcast_ln24;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [11:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [11:0] empty;
output  [63:0] min_p_66_out;
output   min_p_66_out_ap_vld;
output  [63:0] grp_fu_453_p_din0;
output  [63:0] grp_fu_453_p_din1;
output  [1:0] grp_fu_453_p_opcode;
input  [63:0] grp_fu_453_p_dout0;
output   grp_fu_453_p_ce;
output  [63:0] grp_fu_1050_p_din0;
output  [63:0] grp_fu_1050_p_din1;
output  [1:0] grp_fu_1050_p_opcode;
input  [63:0] grp_fu_1050_p_dout0;
output   grp_fu_1050_p_ce;
output  [63:0] grp_fu_1054_p_din0;
output  [63:0] grp_fu_1054_p_din1;
output  [4:0] grp_fu_1054_p_opcode;
input  [0:0] grp_fu_1054_p_dout0;
output   grp_fu_1054_p_ce;
reg ap_idle;
reg min_p_66_out_ap_vld;
(* fsm_encoding = "none" *) reg   [32:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_subdone;
reg   [0:0] tmp_119_reg_3112;
reg    ap_condition_exit_pp0_iter0_stage32;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_635_p3;
reg   [63:0] reg_649;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] grp_fu_642_p3;
reg   [63:0] reg_653;
reg   [63:0] reg_657;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_663;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_669;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_675;
reg   [63:0] reg_681;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_687;
reg   [63:0] reg_693;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_699;
reg   [63:0] reg_705;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_711;
reg   [63:0] reg_717;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_723;
reg   [63:0] reg_729;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_3002;
wire   [3:0] lshr_ln7_1_fu_752_p4;
reg   [3:0] lshr_ln7_1_reg_3012;
wire   [10:0] shl_ln1_fu_777_p3;
reg   [10:0] shl_ln1_reg_3033;
wire   [5:0] add_ln25_fu_829_p2;
reg   [5:0] add_ln25_reg_3061;
wire   [5:0] add_ln25_1_fu_877_p2;
reg   [5:0] add_ln25_1_reg_3076;
wire   [5:0] add_ln25_2_fu_906_p2;
reg   [5:0] add_ln25_2_reg_3086;
wire   [5:0] add_ln25_3_fu_935_p2;
reg   [5:0] add_ln25_3_reg_3096;
wire   [6:0] add_ln25_9_fu_964_p2;
reg   [6:0] add_ln25_9_reg_3106;
reg   [0:0] tmp_119_reg_3112_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_3116;
reg   [63:0] llike_2_load_reg_3121;
reg   [63:0] llike_3_load_reg_3126;
reg   [63:0] llike_load_1_reg_3141;
reg   [63:0] llike_1_load_1_reg_3156;
reg   [63:0] llike_2_load_1_reg_3161;
reg   [63:0] llike_3_load_1_reg_3166;
reg   [63:0] llike_load_2_reg_3171;
wire   [5:0] add_ln25_4_fu_1035_p2;
reg   [5:0] add_ln25_4_reg_3181;
wire   [5:0] add_ln25_5_fu_1062_p2;
reg   [5:0] add_ln25_5_reg_3191;
wire   [5:0] add_ln25_6_fu_1089_p2;
reg   [5:0] add_ln25_6_reg_3201;
wire   [5:0] add_ln25_7_fu_1133_p2;
reg   [5:0] add_ln25_7_reg_3216;
wire   [5:0] add_ln25_8_fu_1160_p2;
reg   [5:0] add_ln25_8_reg_3226;
wire   [63:0] bitcast_ln27_fu_1210_p1;
wire   [63:0] bitcast_ln27_1_fu_1215_p1;
reg   [63:0] llike_1_load_2_reg_3271;
reg   [63:0] llike_2_load_2_reg_3276;
reg   [63:0] llike_3_load_2_reg_3281;
reg   [63:0] llike_load_3_reg_3286;
reg   [63:0] llike_1_load_3_reg_3291;
reg   [63:0] llike_2_load_3_reg_3296;
reg   [63:0] llike_3_load_3_reg_3301;
reg   [63:0] llike_load_reg_3306;
wire   [63:0] bitcast_ln27_2_fu_1260_p1;
wire   [63:0] bitcast_ln27_3_fu_1265_p1;
wire   [63:0] bitcast_ln27_4_fu_1294_p1;
wire   [63:0] bitcast_ln27_5_fu_1299_p1;
reg   [5:0] tmp_116_reg_3371;
wire   [63:0] bitcast_ln27_6_fu_1359_p1;
wire   [63:0] bitcast_ln27_7_fu_1364_p1;
wire   [63:0] bitcast_ln27_8_fu_1393_p1;
wire   [63:0] bitcast_ln27_9_fu_1398_p1;
wire   [63:0] bitcast_ln27_10_fu_1427_p1;
wire   [63:0] bitcast_ln27_11_fu_1432_p1;
wire   [63:0] bitcast_ln27_12_fu_1465_p1;
wire   [63:0] bitcast_ln27_13_fu_1470_p1;
wire   [63:0] bitcast_ln27_14_fu_1475_p1;
wire   [63:0] bitcast_ln27_15_fu_1480_p1;
reg   [63:0] add52_12_reg_3486;
reg   [63:0] add52_13_reg_3491;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] add52_14_reg_3496;
reg   [63:0] min_p_35_reg_3501;
wire   [0:0] and_ln29_1_fu_1566_p2;
reg   [0:0] and_ln29_1_reg_3508;
wire   [63:0] min_p_37_fu_1572_p3;
reg   [63:0] min_p_37_reg_3513;
wire   [0:0] and_ln29_3_fu_1656_p2;
reg   [0:0] and_ln29_3_reg_3520;
wire   [63:0] min_p_39_fu_1662_p3;
reg   [63:0] min_p_39_reg_3525;
wire   [0:0] and_ln29_5_fu_1746_p2;
reg   [0:0] and_ln29_5_reg_3532;
wire   [63:0] min_p_41_fu_1752_p3;
reg   [63:0] min_p_41_reg_3537;
reg   [63:0] p_30_reg_3544;
wire   [0:0] and_ln29_7_fu_1836_p2;
reg   [0:0] and_ln29_7_reg_3551;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] min_p_43_fu_1842_p3;
reg   [63:0] min_p_43_reg_3556;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [0:0] and_ln29_9_fu_1926_p2;
reg   [0:0] and_ln29_9_reg_3563;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] min_p_45_fu_1932_p3;
reg   [63:0] min_p_45_reg_3568;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [0:0] and_ln29_11_fu_2016_p2;
reg   [0:0] and_ln29_11_reg_3575;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] min_p_47_fu_2022_p3;
reg   [63:0] min_p_47_reg_3580;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [0:0] and_ln29_13_fu_2106_p2;
reg   [0:0] and_ln29_13_reg_3587;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [63:0] min_p_49_fu_2112_p3;
reg   [63:0] min_p_49_reg_3592;
wire    ap_block_pp0_stage32_11001;
wire   [0:0] and_ln29_15_fu_2206_p2;
reg   [0:0] and_ln29_15_reg_3599;
wire   [63:0] min_p_51_fu_2212_p3;
reg   [63:0] min_p_51_reg_3604;
wire   [0:0] and_ln29_17_fu_2296_p2;
reg   [0:0] and_ln29_17_reg_3611;
wire   [63:0] min_p_53_fu_2302_p3;
reg   [63:0] min_p_53_reg_3616;
wire   [0:0] and_ln29_19_fu_2386_p2;
reg   [0:0] and_ln29_19_reg_3623;
wire   [63:0] min_p_55_fu_2392_p3;
reg   [63:0] min_p_55_reg_3628;
wire   [0:0] and_ln29_21_fu_2476_p2;
reg   [0:0] and_ln29_21_reg_3635;
wire   [63:0] min_p_57_fu_2482_p3;
reg   [63:0] min_p_57_reg_3640;
wire   [0:0] and_ln29_23_fu_2566_p2;
reg   [0:0] and_ln29_23_reg_3647;
wire   [63:0] min_p_59_fu_2572_p3;
reg   [63:0] min_p_59_reg_3652;
wire   [0:0] and_ln29_25_fu_2656_p2;
reg   [0:0] and_ln29_25_reg_3659;
wire   [63:0] min_p_61_fu_2662_p3;
reg   [63:0] min_p_61_reg_3664;
wire   [0:0] and_ln29_27_fu_2746_p2;
reg   [0:0] and_ln29_27_reg_3671;
wire   [63:0] min_p_63_fu_2752_p3;
reg   [63:0] min_p_63_reg_3676;
wire   [0:0] and_ln29_29_fu_2836_p2;
reg   [0:0] and_ln29_29_reg_3683;
wire   [63:0] min_p_65_fu_2842_p3;
reg   [63:0] min_p_65_reg_3688;
reg   [0:0] tmp_112_reg_3695;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage17_subdone;
wire   [63:0] zext_ln26_fu_770_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_793_p1;
wire   [63:0] zext_ln27_1_fu_823_p1;
wire   [63:0] zext_ln26_1_fu_853_p1;
wire   [63:0] zext_ln26_2_fu_872_p1;
wire   [63:0] zext_ln26_3_fu_901_p1;
wire   [63:0] zext_ln26_4_fu_930_p1;
wire   [63:0] zext_ln26_5_fu_959_p1;
wire   [63:0] zext_ln27_2_fu_1000_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_1012_p1;
wire   [63:0] zext_ln26_6_fu_1030_p1;
wire   [63:0] zext_ln26_7_fu_1057_p1;
wire   [63:0] zext_ln26_8_fu_1084_p1;
wire   [63:0] zext_ln26_9_fu_1111_p1;
wire   [63:0] zext_ln26_10_fu_1128_p1;
wire   [63:0] zext_ln26_11_fu_1155_p1;
wire   [63:0] zext_ln26_12_fu_1182_p1;
wire   [63:0] zext_ln26_14_fu_1205_p1;
wire   [63:0] zext_ln27_4_fu_1242_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_1254_p1;
wire   [63:0] zext_ln27_6_fu_1276_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_1288_p1;
wire   [63:0] zext_ln27_8_fu_1326_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln27_9_fu_1338_p1;
wire   [63:0] zext_ln27_10_fu_1375_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln27_11_fu_1387_p1;
wire   [63:0] zext_ln27_12_fu_1409_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln27_13_fu_1421_p1;
wire   [63:0] zext_ln27_14_fu_1443_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln27_15_fu_1459_p1;
reg   [63:0] min_p_fu_134;
wire   [63:0] min_p_67_fu_2931_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage18;
reg   [5:0] prev_fu_138;
wire   [5:0] add_ln25_10_fu_2119_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg   [11:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
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
reg   [63:0] grp_fu_623_p0;
reg   [63:0] grp_fu_623_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_627_p0;
reg   [63:0] grp_fu_627_p1;
reg   [63:0] grp_fu_631_p0;
reg   [63:0] grp_fu_631_p1;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage32;
wire   [11:0] tmp_s_fu_762_p3;
wire   [10:0] add_ln_fu_785_p3;
wire   [10:0] add_ln27_fu_799_p2;
wire   [5:0] tmp_70_fu_805_p4;
wire   [10:0] add_ln27_2_fu_815_p3;
wire   [3:0] lshr_ln8_s_fu_835_p4;
wire   [11:0] tmp_78_fu_845_p3;
wire   [3:0] add_ln8_fu_858_p2;
wire   [11:0] tmp_82_fu_864_p3;
wire   [3:0] lshr_ln8_1_fu_883_p4;
wire   [11:0] tmp_90_fu_893_p3;
wire   [3:0] lshr_ln8_2_fu_912_p4;
wire   [11:0] tmp_94_fu_922_p3;
wire   [3:0] lshr_ln8_3_fu_941_p4;
wire   [11:0] tmp_98_fu_951_p3;
wire   [6:0] zext_ln16_fu_748_p1;
wire   [10:0] add_ln27_1_fu_978_p2;
wire   [5:0] tmp_74_fu_983_p4;
wire   [10:0] add_ln27_4_fu_993_p3;
wire   [10:0] add_ln27_5_fu_1006_p3;
wire   [3:0] add_ln8_3_fu_1018_p2;
wire   [11:0] tmp_102_fu_1023_p3;
wire   [3:0] lshr_ln8_4_fu_1040_p4;
wire   [11:0] tmp_110_fu_1050_p3;
wire   [3:0] lshr_ln8_5_fu_1067_p4;
wire   [11:0] tmp_113_fu_1077_p3;
wire   [3:0] lshr_ln8_6_fu_1094_p4;
wire   [11:0] tmp_114_fu_1104_p3;
wire   [3:0] add_ln8_4_fu_1116_p2;
wire   [11:0] tmp_115_fu_1121_p3;
wire   [3:0] lshr_ln8_7_fu_1138_p4;
wire   [11:0] tmp_117_fu_1148_p3;
wire   [3:0] lshr_ln8_8_fu_1165_p4;
wire   [11:0] tmp_118_fu_1175_p3;
wire   [4:0] lshr_ln8_9_fu_1187_p4;
wire   [11:0] zext_ln26_13_fu_1196_p1;
wire   [11:0] add_ln26_fu_1200_p2;
wire   [10:0] add_ln27_3_fu_1220_p2;
wire   [5:0] tmp_86_fu_1225_p4;
wire   [10:0] add_ln27_7_fu_1235_p3;
wire   [10:0] add_ln27_8_fu_1248_p3;
wire   [10:0] add_ln27_9_fu_1270_p3;
wire   [10:0] add_ln27_s_fu_1282_p3;
wire   [10:0] add_ln27_6_fu_1304_p2;
wire   [5:0] tmp_106_fu_1309_p4;
wire   [10:0] add_ln27_10_fu_1319_p3;
wire   [10:0] add_ln27_11_fu_1332_p3;
wire   [10:0] add_ln27_14_fu_1344_p2;
wire   [10:0] add_ln27_12_fu_1369_p3;
wire   [10:0] add_ln27_13_fu_1381_p3;
wire   [10:0] add_ln27_15_fu_1403_p3;
wire   [10:0] add_ln27_16_fu_1415_p3;
wire   [10:0] add_ln27_17_fu_1437_p3;
wire   [5:0] trunc_ln27_fu_1449_p1;
wire   [10:0] add_ln27_18_fu_1452_p3;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln29_fu_1489_p1;
wire   [63:0] bitcast_ln29_1_fu_1507_p1;
wire   [10:0] tmp_50_fu_1493_p4;
wire   [51:0] trunc_ln29_fu_1503_p1;
wire   [0:0] icmp_ln29_1_fu_1530_p2;
wire   [0:0] icmp_ln29_fu_1524_p2;
wire   [10:0] tmp_52_fu_1510_p4;
wire   [51:0] trunc_ln29_1_fu_1520_p1;
wire   [0:0] icmp_ln29_3_fu_1548_p2;
wire   [0:0] icmp_ln29_2_fu_1542_p2;
wire   [0:0] or_ln29_fu_1536_p2;
wire   [0:0] and_ln29_fu_1560_p2;
wire   [0:0] or_ln29_1_fu_1554_p2;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln29_2_fu_1579_p1;
wire   [63:0] bitcast_ln29_3_fu_1597_p1;
wire   [10:0] tmp_54_fu_1583_p4;
wire   [51:0] trunc_ln29_2_fu_1593_p1;
wire   [0:0] icmp_ln29_5_fu_1620_p2;
wire   [0:0] icmp_ln29_4_fu_1614_p2;
wire   [10:0] tmp_55_fu_1600_p4;
wire   [51:0] trunc_ln29_3_fu_1610_p1;
wire   [0:0] icmp_ln29_7_fu_1638_p2;
wire   [0:0] icmp_ln29_6_fu_1632_p2;
wire   [0:0] or_ln29_3_fu_1644_p2;
wire   [0:0] or_ln29_2_fu_1626_p2;
wire   [0:0] and_ln29_2_fu_1650_p2;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln29_4_fu_1669_p1;
wire   [63:0] bitcast_ln29_5_fu_1687_p1;
wire   [10:0] tmp_57_fu_1673_p4;
wire   [51:0] trunc_ln29_4_fu_1683_p1;
wire   [0:0] icmp_ln29_9_fu_1710_p2;
wire   [0:0] icmp_ln29_8_fu_1704_p2;
wire   [10:0] tmp_59_fu_1690_p4;
wire   [51:0] trunc_ln29_5_fu_1700_p1;
wire   [0:0] icmp_ln29_11_fu_1728_p2;
wire   [0:0] icmp_ln29_10_fu_1722_p2;
wire   [0:0] or_ln29_5_fu_1734_p2;
wire   [0:0] or_ln29_4_fu_1716_p2;
wire   [0:0] and_ln29_4_fu_1740_p2;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln29_6_fu_1759_p1;
wire   [63:0] bitcast_ln29_7_fu_1777_p1;
wire   [10:0] tmp_61_fu_1763_p4;
wire   [51:0] trunc_ln29_6_fu_1773_p1;
wire   [0:0] icmp_ln29_13_fu_1800_p2;
wire   [0:0] icmp_ln29_12_fu_1794_p2;
wire   [10:0] tmp_63_fu_1780_p4;
wire   [51:0] trunc_ln29_7_fu_1790_p1;
wire   [0:0] icmp_ln29_15_fu_1818_p2;
wire   [0:0] icmp_ln29_14_fu_1812_p2;
wire   [0:0] or_ln29_7_fu_1824_p2;
wire   [0:0] or_ln29_6_fu_1806_p2;
wire   [0:0] and_ln29_6_fu_1830_p2;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln29_8_fu_1849_p1;
wire   [63:0] bitcast_ln29_9_fu_1867_p1;
wire   [10:0] tmp_65_fu_1853_p4;
wire   [51:0] trunc_ln29_8_fu_1863_p1;
wire   [0:0] icmp_ln29_17_fu_1890_p2;
wire   [0:0] icmp_ln29_16_fu_1884_p2;
wire   [10:0] tmp_67_fu_1870_p4;
wire   [51:0] trunc_ln29_9_fu_1880_p1;
wire   [0:0] icmp_ln29_19_fu_1908_p2;
wire   [0:0] icmp_ln29_18_fu_1902_p2;
wire   [0:0] or_ln29_9_fu_1914_p2;
wire   [0:0] or_ln29_8_fu_1896_p2;
wire   [0:0] and_ln29_8_fu_1920_p2;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln29_10_fu_1939_p1;
wire   [63:0] bitcast_ln29_11_fu_1957_p1;
wire   [10:0] tmp_69_fu_1943_p4;
wire   [51:0] trunc_ln29_10_fu_1953_p1;
wire   [0:0] icmp_ln29_21_fu_1980_p2;
wire   [0:0] icmp_ln29_20_fu_1974_p2;
wire   [10:0] tmp_71_fu_1960_p4;
wire   [51:0] trunc_ln29_11_fu_1970_p1;
wire   [0:0] icmp_ln29_23_fu_1998_p2;
wire   [0:0] icmp_ln29_22_fu_1992_p2;
wire   [0:0] or_ln29_11_fu_2004_p2;
wire   [0:0] or_ln29_10_fu_1986_p2;
wire   [0:0] and_ln29_10_fu_2010_p2;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln29_12_fu_2029_p1;
wire   [63:0] bitcast_ln29_13_fu_2047_p1;
wire   [10:0] tmp_73_fu_2033_p4;
wire   [51:0] trunc_ln29_12_fu_2043_p1;
wire   [0:0] icmp_ln29_25_fu_2070_p2;
wire   [0:0] icmp_ln29_24_fu_2064_p2;
wire   [10:0] tmp_75_fu_2050_p4;
wire   [51:0] trunc_ln29_13_fu_2060_p1;
wire   [0:0] icmp_ln29_27_fu_2088_p2;
wire   [0:0] icmp_ln29_26_fu_2082_p2;
wire   [0:0] or_ln29_13_fu_2094_p2;
wire   [0:0] or_ln29_12_fu_2076_p2;
wire   [0:0] and_ln29_12_fu_2100_p2;
wire   [63:0] bitcast_ln29_14_fu_2129_p1;
wire   [63:0] bitcast_ln29_15_fu_2147_p1;
wire   [10:0] tmp_77_fu_2133_p4;
wire   [51:0] trunc_ln29_14_fu_2143_p1;
wire   [0:0] icmp_ln29_29_fu_2170_p2;
wire   [0:0] icmp_ln29_28_fu_2164_p2;
wire   [10:0] tmp_79_fu_2150_p4;
wire   [51:0] trunc_ln29_15_fu_2160_p1;
wire   [0:0] icmp_ln29_31_fu_2188_p2;
wire   [0:0] icmp_ln29_30_fu_2182_p2;
wire   [0:0] or_ln29_15_fu_2194_p2;
wire   [0:0] or_ln29_14_fu_2176_p2;
wire   [0:0] and_ln29_14_fu_2200_p2;
wire   [63:0] bitcast_ln29_16_fu_2219_p1;
wire   [63:0] bitcast_ln29_17_fu_2237_p1;
wire   [10:0] tmp_81_fu_2223_p4;
wire   [51:0] trunc_ln29_16_fu_2233_p1;
wire   [0:0] icmp_ln29_33_fu_2260_p2;
wire   [0:0] icmp_ln29_32_fu_2254_p2;
wire   [10:0] tmp_83_fu_2240_p4;
wire   [51:0] trunc_ln29_17_fu_2250_p1;
wire   [0:0] icmp_ln29_35_fu_2278_p2;
wire   [0:0] icmp_ln29_34_fu_2272_p2;
wire   [0:0] or_ln29_17_fu_2284_p2;
wire   [0:0] or_ln29_16_fu_2266_p2;
wire   [0:0] and_ln29_16_fu_2290_p2;
wire   [63:0] bitcast_ln29_18_fu_2309_p1;
wire   [63:0] bitcast_ln29_19_fu_2327_p1;
wire   [10:0] tmp_85_fu_2313_p4;
wire   [51:0] trunc_ln29_18_fu_2323_p1;
wire   [0:0] icmp_ln29_37_fu_2350_p2;
wire   [0:0] icmp_ln29_36_fu_2344_p2;
wire   [10:0] tmp_87_fu_2330_p4;
wire   [51:0] trunc_ln29_19_fu_2340_p1;
wire   [0:0] icmp_ln29_39_fu_2368_p2;
wire   [0:0] icmp_ln29_38_fu_2362_p2;
wire   [0:0] or_ln29_19_fu_2374_p2;
wire   [0:0] or_ln29_18_fu_2356_p2;
wire   [0:0] and_ln29_18_fu_2380_p2;
wire   [63:0] bitcast_ln29_20_fu_2399_p1;
wire   [63:0] bitcast_ln29_21_fu_2417_p1;
wire   [10:0] tmp_89_fu_2403_p4;
wire   [51:0] trunc_ln29_20_fu_2413_p1;
wire   [0:0] icmp_ln29_41_fu_2440_p2;
wire   [0:0] icmp_ln29_40_fu_2434_p2;
wire   [10:0] tmp_91_fu_2420_p4;
wire   [51:0] trunc_ln29_21_fu_2430_p1;
wire   [0:0] icmp_ln29_43_fu_2458_p2;
wire   [0:0] icmp_ln29_42_fu_2452_p2;
wire   [0:0] or_ln29_21_fu_2464_p2;
wire   [0:0] or_ln29_20_fu_2446_p2;
wire   [0:0] and_ln29_20_fu_2470_p2;
wire   [63:0] bitcast_ln29_22_fu_2489_p1;
wire   [63:0] bitcast_ln29_23_fu_2507_p1;
wire   [10:0] tmp_93_fu_2493_p4;
wire   [51:0] trunc_ln29_22_fu_2503_p1;
wire   [0:0] icmp_ln29_45_fu_2530_p2;
wire   [0:0] icmp_ln29_44_fu_2524_p2;
wire   [10:0] tmp_95_fu_2510_p4;
wire   [51:0] trunc_ln29_23_fu_2520_p1;
wire   [0:0] icmp_ln29_47_fu_2548_p2;
wire   [0:0] icmp_ln29_46_fu_2542_p2;
wire   [0:0] or_ln29_23_fu_2554_p2;
wire   [0:0] or_ln29_22_fu_2536_p2;
wire   [0:0] and_ln29_22_fu_2560_p2;
wire   [63:0] bitcast_ln29_24_fu_2579_p1;
wire   [63:0] bitcast_ln29_25_fu_2597_p1;
wire   [10:0] tmp_97_fu_2583_p4;
wire   [51:0] trunc_ln29_24_fu_2593_p1;
wire   [0:0] icmp_ln29_49_fu_2620_p2;
wire   [0:0] icmp_ln29_48_fu_2614_p2;
wire   [10:0] tmp_99_fu_2600_p4;
wire   [51:0] trunc_ln29_25_fu_2610_p1;
wire   [0:0] icmp_ln29_51_fu_2638_p2;
wire   [0:0] icmp_ln29_50_fu_2632_p2;
wire   [0:0] or_ln29_25_fu_2644_p2;
wire   [0:0] or_ln29_24_fu_2626_p2;
wire   [0:0] and_ln29_24_fu_2650_p2;
wire   [63:0] bitcast_ln29_26_fu_2669_p1;
wire   [63:0] bitcast_ln29_27_fu_2687_p1;
wire   [10:0] tmp_101_fu_2673_p4;
wire   [51:0] trunc_ln29_26_fu_2683_p1;
wire   [0:0] icmp_ln29_53_fu_2710_p2;
wire   [0:0] icmp_ln29_52_fu_2704_p2;
wire   [10:0] tmp_103_fu_2690_p4;
wire   [51:0] trunc_ln29_27_fu_2700_p1;
wire   [0:0] icmp_ln29_55_fu_2728_p2;
wire   [0:0] icmp_ln29_54_fu_2722_p2;
wire   [0:0] or_ln29_27_fu_2734_p2;
wire   [0:0] or_ln29_26_fu_2716_p2;
wire   [0:0] and_ln29_26_fu_2740_p2;
wire   [63:0] bitcast_ln29_28_fu_2759_p1;
wire   [63:0] bitcast_ln29_29_fu_2777_p1;
wire   [10:0] tmp_105_fu_2763_p4;
wire   [51:0] trunc_ln29_28_fu_2773_p1;
wire   [0:0] icmp_ln29_57_fu_2800_p2;
wire   [0:0] icmp_ln29_56_fu_2794_p2;
wire   [10:0] tmp_107_fu_2780_p4;
wire   [51:0] trunc_ln29_29_fu_2790_p1;
wire   [0:0] icmp_ln29_59_fu_2818_p2;
wire   [0:0] icmp_ln29_58_fu_2812_p2;
wire   [0:0] or_ln29_29_fu_2824_p2;
wire   [0:0] or_ln29_28_fu_2806_p2;
wire   [0:0] and_ln29_28_fu_2830_p2;
wire   [63:0] bitcast_ln29_30_fu_2850_p1;
wire   [63:0] bitcast_ln29_31_fu_2867_p1;
wire   [10:0] tmp_109_fu_2853_p4;
wire   [51:0] trunc_ln29_30_fu_2863_p1;
wire   [0:0] icmp_ln29_61_fu_2890_p2;
wire   [0:0] icmp_ln29_60_fu_2884_p2;
wire   [10:0] tmp_111_fu_2870_p4;
wire   [51:0] trunc_ln29_31_fu_2880_p1;
wire   [0:0] icmp_ln29_63_fu_2908_p2;
wire   [0:0] icmp_ln29_62_fu_2902_p2;
wire   [0:0] or_ln29_31_fu_2914_p2;
wire   [0:0] or_ln29_30_fu_2896_p2;
wire   [0:0] and_ln29_30_fu_2920_p2;
wire   [0:0] and_ln29_31_fu_2926_p2;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage28_00001;
wire    ap_block_pp0_stage30_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [32:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage16_subdone;
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
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 33'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_134 = 64'd0;
#0 prev_fu_138 = 6'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage15) | ((1'b0 == ap_block_pp0_stage17_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage32_subdone) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage17_subdone) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_134 <= min_p_34;
    end else if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_119_reg_3112_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        min_p_fu_134 <= min_p_67_fu_2931_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_138 <= 6'd1;
    end else if (((tmp_119_reg_3112 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        prev_fu_138 <= add_ln25_10_fu_2119_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add52_12_reg_3486 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_13_reg_3491 <= grp_fu_453_p_dout0;
        add52_14_reg_3496 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_3076 <= add_ln25_1_fu_877_p2;
        add_ln25_2_reg_3086 <= add_ln25_2_fu_906_p2;
        add_ln25_3_reg_3096 <= add_ln25_3_fu_935_p2;
        add_ln25_9_reg_3106 <= add_ln25_9_fu_964_p2;
        add_ln25_reg_3061 <= add_ln25_fu_829_p2;
        and_ln29_15_reg_3599 <= and_ln29_15_fu_2206_p2;
        lshr_ln7_1_reg_3012 <= {{ap_sig_allocacmp_prev_1[5:2]}};
        prev_1_reg_3002 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_3033[10 : 5] <= shl_ln1_fu_777_p3[10 : 5];
        tmp_119_reg_3112 <= add_ln25_9_fu_964_p2[32'd6];
        tmp_119_reg_3112_pp0_iter1_reg <= tmp_119_reg_3112;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_4_reg_3181 <= add_ln25_4_fu_1035_p2;
        add_ln25_5_reg_3191 <= add_ln25_5_fu_1062_p2;
        add_ln25_6_reg_3201 <= add_ln25_6_fu_1089_p2;
        add_ln25_7_reg_3216 <= add_ln25_7_fu_1133_p2;
        add_ln25_8_reg_3226 <= add_ln25_8_fu_1160_p2;
        min_p_51_reg_3604 <= min_p_51_fu_2212_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        and_ln29_11_reg_3575 <= and_ln29_11_fu_2016_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        and_ln29_13_reg_3587 <= and_ln29_13_fu_2106_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_17_reg_3611 <= and_ln29_17_fu_2296_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_19_reg_3623 <= and_ln29_19_fu_2386_p2;
        tmp_116_reg_3371 <= {{add_ln27_14_fu_1344_p2[10:5]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        and_ln29_1_reg_3508 <= and_ln29_1_fu_1566_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_21_reg_3635 <= and_ln29_21_fu_2476_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_23_reg_3647 <= and_ln29_23_fu_2566_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_25_reg_3659 <= and_ln29_25_fu_2656_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_27_reg_3671 <= and_ln29_27_fu_2746_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_29_reg_3683 <= and_ln29_29_fu_2836_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        and_ln29_3_reg_3520 <= and_ln29_3_fu_1656_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        and_ln29_5_reg_3532 <= and_ln29_5_fu_1746_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        and_ln29_7_reg_3551 <= and_ln29_7_fu_1836_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        and_ln29_9_reg_3563 <= and_ln29_9_fu_1926_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_3156 <= llike_1_q0;
        llike_1_load_reg_3116 <= llike_1_q1;
        llike_2_load_1_reg_3161 <= llike_2_q0;
        llike_2_load_reg_3121 <= llike_2_q1;
        llike_3_load_1_reg_3166 <= llike_3_q0;
        llike_3_load_reg_3126 <= llike_3_q1;
        llike_load_1_reg_3141 <= llike_q1;
        llike_load_2_reg_3171 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_3271 <= llike_1_q1;
        llike_1_load_3_reg_3291 <= llike_1_q0;
        llike_2_load_2_reg_3276 <= llike_2_q1;
        llike_2_load_3_reg_3296 <= llike_2_q0;
        llike_3_load_2_reg_3281 <= llike_3_q1;
        llike_3_load_3_reg_3301 <= llike_3_q0;
        llike_load_3_reg_3286 <= llike_q1;
        llike_load_reg_3306 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        min_p_35_reg_3501 <= min_p_fu_134;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        min_p_37_reg_3513 <= min_p_37_fu_1572_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        min_p_39_reg_3525 <= min_p_39_fu_1662_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        min_p_41_reg_3537 <= min_p_41_fu_1752_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        min_p_43_reg_3556 <= min_p_43_fu_1842_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        min_p_45_reg_3568 <= min_p_45_fu_1932_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        min_p_47_reg_3580 <= min_p_47_fu_2022_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage32_11001) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        min_p_49_reg_3592 <= min_p_49_fu_2112_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_53_reg_3616 <= min_p_53_fu_2302_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_55_reg_3628 <= min_p_55_fu_2392_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_57_reg_3640 <= min_p_57_fu_2482_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_59_reg_3652 <= min_p_59_fu_2572_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_61_reg_3664 <= min_p_61_fu_2662_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_63_reg_3676 <= min_p_63_fu_2752_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_65_reg_3688 <= min_p_65_fu_2842_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        p_30_reg_3544 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_649 <= grp_fu_635_p3;
        reg_653 <= grp_fu_642_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_657 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_663 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_669 <= grp_fu_453_p_dout0;
        reg_675 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_681 <= grp_fu_453_p_dout0;
        reg_687 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_693 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_699 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_705 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        reg_711 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_717 <= grp_fu_453_p_dout0;
        reg_723 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_729 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_112_reg_3695 <= grp_fu_1054_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_119_reg_3112 == 1'd1) & (1'b0 == ap_block_pp0_stage32_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage32 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_119_reg_3112_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_138;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_623_p0 = add52_13_reg_3491;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_623_p0 = reg_729;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_623_p0 = reg_717;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_623_p0 = reg_705;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_623_p0 = reg_693;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_623_p0 = reg_681;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_623_p0 = reg_669;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_623_p0 = reg_657;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_623_p0 = llike_3_load_3_reg_3301;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_623_p0 = llike_1_load_3_reg_3291;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_623_p0 = llike_3_load_2_reg_3281;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_623_p0 = llike_1_load_2_reg_3271;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_623_p0 = llike_3_load_1_reg_3166;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_623_p0 = llike_1_load_1_reg_3156;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_623_p0 = llike_3_load_reg_3126;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_623_p0 = llike_1_load_reg_3116;
        end else begin
            grp_fu_623_p0 = 'bx;
        end
    end else begin
        grp_fu_623_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_623_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_623_p1 = bitcast_ln27_14_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_623_p1 = bitcast_ln27_12_fu_1465_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_623_p1 = bitcast_ln27_10_fu_1427_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_623_p1 = bitcast_ln27_8_fu_1393_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_623_p1 = bitcast_ln27_6_fu_1359_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_623_p1 = bitcast_ln27_4_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_623_p1 = bitcast_ln27_2_fu_1260_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_623_p1 = bitcast_ln27_fu_1210_p1;
    end else begin
        grp_fu_623_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_627_p0 = add52_14_reg_3496;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_627_p0 = add52_12_reg_3486;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_627_p0 = reg_723;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_627_p0 = reg_711;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_627_p0 = reg_699;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_627_p0 = reg_687;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_627_p0 = reg_675;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_627_p0 = reg_663;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_627_p0 = llike_load_reg_3306;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_627_p0 = llike_2_load_3_reg_3296;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_627_p0 = llike_load_3_reg_3286;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_627_p0 = llike_2_load_2_reg_3276;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_627_p0 = llike_load_2_reg_3171;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_627_p0 = llike_2_load_1_reg_3161;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_627_p0 = llike_load_1_reg_3141;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_627_p0 = llike_2_load_reg_3121;
        end else begin
            grp_fu_627_p0 = 'bx;
        end
    end else begin
        grp_fu_627_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_627_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_627_p1 = bitcast_ln27_15_fu_1480_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_627_p1 = bitcast_ln27_13_fu_1470_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_627_p1 = bitcast_ln27_11_fu_1432_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_627_p1 = bitcast_ln27_9_fu_1398_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_627_p1 = bitcast_ln27_7_fu_1364_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_627_p1 = bitcast_ln27_5_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_627_p1 = bitcast_ln27_3_fu_1265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_627_p1 = bitcast_ln27_1_fu_1215_p1;
    end else begin
        grp_fu_627_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_631_p0 = p_30_reg_3544;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_631_p0 = reg_729;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_631_p0 = reg_723;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_631_p0 = reg_717;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_631_p0 = reg_705;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_631_p0 = reg_711;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_631_p0 = reg_693;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_631_p0 = reg_699;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_631_p0 = reg_687;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_631_p0 = reg_681;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_631_p0 = reg_675;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_631_p0 = reg_669;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_631_p0 = reg_663;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)))) begin
        grp_fu_631_p0 = reg_657;
    end else begin
        grp_fu_631_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_631_p1 = min_p_65_fu_2842_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_631_p1 = min_p_63_fu_2752_p3;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_631_p1 = min_p_61_fu_2662_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_631_p1 = min_p_59_fu_2572_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_631_p1 = min_p_57_fu_2482_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_631_p1 = min_p_55_fu_2392_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_631_p1 = min_p_53_fu_2302_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_631_p1 = min_p_51_fu_2212_p3;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_631_p1 = min_p_49_fu_2112_p3;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_631_p1 = min_p_47_fu_2022_p3;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_631_p1 = min_p_45_fu_1932_p3;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_631_p1 = min_p_43_fu_1842_p3;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_631_p1 = min_p_41_fu_1752_p3;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_631_p1 = min_p_39_fu_1662_p3;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_631_p1 = min_p_37_fu_1572_p3;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_631_p1 = min_p_fu_134;
    end else begin
        grp_fu_631_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_10_fu_1128_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_2_fu_872_p1;
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
            llike_1_address1_local = zext_ln26_6_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln26_fu_770_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln26_11_fu_1155_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_3_fu_901_p1;
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
            llike_2_address1_local = zext_ln26_7_fu_1057_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address1_local = zext_ln26_fu_770_p1;
        end else begin
            llike_2_address1_local = 'bx;
        end
    end else begin
        llike_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln26_12_fu_1182_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_4_fu_930_p1;
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
            llike_3_address1_local = zext_ln26_8_fu_1084_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address1_local = zext_ln26_fu_770_p1;
        end else begin
            llike_3_address1_local = 'bx;
        end
    end else begin
        llike_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_14_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_5_fu_959_p1;
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
            llike_address1_local = zext_ln26_9_fu_1111_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_1_fu_853_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_119_reg_3112_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_66_out_ap_vld = 1'b1;
    end else begin
        min_p_66_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address0_local = zext_ln27_15_fu_1459_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address0_local = zext_ln27_13_fu_1421_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address0_local = zext_ln27_11_fu_1387_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address0_local = zext_ln27_9_fu_1338_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_1288_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_823_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_0_address1_local = zext_ln27_14_fu_1443_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_0_address1_local = zext_ln27_12_fu_1409_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_0_address1_local = zext_ln27_10_fu_1375_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln27_8_fu_1326_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln27_6_fu_1276_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_1242_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_1000_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_793_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address0_local = zext_ln27_15_fu_1459_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address0_local = zext_ln27_13_fu_1421_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address0_local = zext_ln27_11_fu_1387_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address0_local = zext_ln27_9_fu_1338_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln27_7_fu_1288_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_823_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            transition_1_address1_local = zext_ln27_14_fu_1443_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            transition_1_address1_local = zext_ln27_12_fu_1409_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            transition_1_address1_local = zext_ln27_10_fu_1375_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln27_8_fu_1326_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln27_6_fu_1276_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_1242_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_1000_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_793_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
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
assign add_ln25_10_fu_2119_p2 = (prev_1_reg_3002 + 6'd16);
assign add_ln25_1_fu_877_p2 = (ap_sig_allocacmp_prev_1 + 6'd5);
assign add_ln25_2_fu_906_p2 = (ap_sig_allocacmp_prev_1 + 6'd6);
assign add_ln25_3_fu_935_p2 = (ap_sig_allocacmp_prev_1 + 6'd7);
assign add_ln25_4_fu_1035_p2 = (prev_1_reg_3002 + 6'd9);
assign add_ln25_5_fu_1062_p2 = (prev_1_reg_3002 + 6'd10);
assign add_ln25_6_fu_1089_p2 = (prev_1_reg_3002 + 6'd11);
assign add_ln25_7_fu_1133_p2 = (prev_1_reg_3002 + 6'd13);
assign add_ln25_8_fu_1160_p2 = (prev_1_reg_3002 + 6'd14);
assign add_ln25_9_fu_964_p2 = (zext_ln16_fu_748_p1 + 7'd15);
assign add_ln25_fu_829_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln26_fu_1200_p2 = (empty + zext_ln26_13_fu_1196_p1);
assign add_ln27_10_fu_1319_p3 = {{tmp_106_fu_1309_p4}, {lshr_ln}};
assign add_ln27_11_fu_1332_p3 = {{add_ln25_4_reg_3181}, {lshr_ln}};
assign add_ln27_12_fu_1369_p3 = {{add_ln25_5_reg_3191}, {lshr_ln}};
assign add_ln27_13_fu_1381_p3 = {{add_ln25_6_reg_3201}, {lshr_ln}};
assign add_ln27_14_fu_1344_p2 = (shl_ln1_reg_3033 + 11'd384);
assign add_ln27_15_fu_1403_p3 = {{tmp_116_reg_3371}, {lshr_ln}};
assign add_ln27_16_fu_1415_p3 = {{add_ln25_7_reg_3216}, {lshr_ln}};
assign add_ln27_17_fu_1437_p3 = {{add_ln25_8_reg_3226}, {lshr_ln}};
assign add_ln27_18_fu_1452_p3 = {{trunc_ln27_fu_1449_p1}, {lshr_ln}};
assign add_ln27_1_fu_978_p2 = (shl_ln1_reg_3033 + 11'd64);
assign add_ln27_2_fu_815_p3 = {{tmp_70_fu_805_p4}, {lshr_ln}};
assign add_ln27_3_fu_1220_p2 = (shl_ln1_reg_3033 + 11'd128);
assign add_ln27_4_fu_993_p3 = {{tmp_74_fu_983_p4}, {lshr_ln}};
assign add_ln27_5_fu_1006_p3 = {{add_ln25_reg_3061}, {lshr_ln}};
assign add_ln27_6_fu_1304_p2 = (shl_ln1_reg_3033 + 11'd256);
assign add_ln27_7_fu_1235_p3 = {{tmp_86_fu_1225_p4}, {lshr_ln}};
assign add_ln27_8_fu_1248_p3 = {{add_ln25_1_reg_3076}, {lshr_ln}};
assign add_ln27_9_fu_1270_p3 = {{add_ln25_2_reg_3086}, {lshr_ln}};
assign add_ln27_fu_799_p2 = (shl_ln1_fu_777_p3 + 11'd32);
assign add_ln27_s_fu_1282_p3 = {{add_ln25_3_reg_3096}, {lshr_ln}};
assign add_ln8_3_fu_1018_p2 = (lshr_ln7_1_reg_3012 + 4'd2);
assign add_ln8_4_fu_1116_p2 = (lshr_ln7_1_reg_3012 + 4'd3);
assign add_ln8_fu_858_p2 = (lshr_ln7_1_fu_752_p4 + 4'd1);
assign add_ln_fu_785_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_2010_p2 = (or_ln29_11_fu_2004_p2 & or_ln29_10_fu_1986_p2);
assign and_ln29_11_fu_2016_p2 = (grp_fu_1054_p_dout0 & and_ln29_10_fu_2010_p2);
assign and_ln29_12_fu_2100_p2 = (or_ln29_13_fu_2094_p2 & or_ln29_12_fu_2076_p2);
assign and_ln29_13_fu_2106_p2 = (grp_fu_1054_p_dout0 & and_ln29_12_fu_2100_p2);
assign and_ln29_14_fu_2200_p2 = (or_ln29_15_fu_2194_p2 & or_ln29_14_fu_2176_p2);
assign and_ln29_15_fu_2206_p2 = (grp_fu_1054_p_dout0 & and_ln29_14_fu_2200_p2);
assign and_ln29_16_fu_2290_p2 = (or_ln29_17_fu_2284_p2 & or_ln29_16_fu_2266_p2);
assign and_ln29_17_fu_2296_p2 = (grp_fu_1054_p_dout0 & and_ln29_16_fu_2290_p2);
assign and_ln29_18_fu_2380_p2 = (or_ln29_19_fu_2374_p2 & or_ln29_18_fu_2356_p2);
assign and_ln29_19_fu_2386_p2 = (grp_fu_1054_p_dout0 & and_ln29_18_fu_2380_p2);
assign and_ln29_1_fu_1566_p2 = (or_ln29_1_fu_1554_p2 & and_ln29_fu_1560_p2);
assign and_ln29_20_fu_2470_p2 = (or_ln29_21_fu_2464_p2 & or_ln29_20_fu_2446_p2);
assign and_ln29_21_fu_2476_p2 = (grp_fu_1054_p_dout0 & and_ln29_20_fu_2470_p2);
assign and_ln29_22_fu_2560_p2 = (or_ln29_23_fu_2554_p2 & or_ln29_22_fu_2536_p2);
assign and_ln29_23_fu_2566_p2 = (grp_fu_1054_p_dout0 & and_ln29_22_fu_2560_p2);
assign and_ln29_24_fu_2650_p2 = (or_ln29_25_fu_2644_p2 & or_ln29_24_fu_2626_p2);
assign and_ln29_25_fu_2656_p2 = (grp_fu_1054_p_dout0 & and_ln29_24_fu_2650_p2);
assign and_ln29_26_fu_2740_p2 = (or_ln29_27_fu_2734_p2 & or_ln29_26_fu_2716_p2);
assign and_ln29_27_fu_2746_p2 = (grp_fu_1054_p_dout0 & and_ln29_26_fu_2740_p2);
assign and_ln29_28_fu_2830_p2 = (or_ln29_29_fu_2824_p2 & or_ln29_28_fu_2806_p2);
assign and_ln29_29_fu_2836_p2 = (grp_fu_1054_p_dout0 & and_ln29_28_fu_2830_p2);
assign and_ln29_2_fu_1650_p2 = (or_ln29_3_fu_1644_p2 & or_ln29_2_fu_1626_p2);
assign and_ln29_30_fu_2920_p2 = (or_ln29_31_fu_2914_p2 & or_ln29_30_fu_2896_p2);
assign and_ln29_31_fu_2926_p2 = (tmp_112_reg_3695 & and_ln29_30_fu_2920_p2);
assign and_ln29_3_fu_1656_p2 = (grp_fu_1054_p_dout0 & and_ln29_2_fu_1650_p2);
assign and_ln29_4_fu_1740_p2 = (or_ln29_5_fu_1734_p2 & or_ln29_4_fu_1716_p2);
assign and_ln29_5_fu_1746_p2 = (grp_fu_1054_p_dout0 & and_ln29_4_fu_1740_p2);
assign and_ln29_6_fu_1830_p2 = (or_ln29_7_fu_1824_p2 & or_ln29_6_fu_1806_p2);
assign and_ln29_7_fu_1836_p2 = (grp_fu_1054_p_dout0 & and_ln29_6_fu_1830_p2);
assign and_ln29_8_fu_1920_p2 = (or_ln29_9_fu_1914_p2 & or_ln29_8_fu_1896_p2);
assign and_ln29_9_fu_1926_p2 = (grp_fu_1054_p_dout0 & and_ln29_8_fu_1920_p2);
assign and_ln29_fu_1560_p2 = (or_ln29_fu_1536_p2 & grp_fu_1054_p_dout0);
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
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage32;
assign ap_ready = ap_ready_sig;
assign bitcast_ln27_10_fu_1427_p1 = reg_649;
assign bitcast_ln27_11_fu_1432_p1 = reg_653;
assign bitcast_ln27_12_fu_1465_p1 = reg_649;
assign bitcast_ln27_13_fu_1470_p1 = reg_653;
assign bitcast_ln27_14_fu_1475_p1 = reg_649;
assign bitcast_ln27_15_fu_1480_p1 = reg_653;
assign bitcast_ln27_1_fu_1215_p1 = reg_653;
assign bitcast_ln27_2_fu_1260_p1 = reg_649;
assign bitcast_ln27_3_fu_1265_p1 = reg_653;
assign bitcast_ln27_4_fu_1294_p1 = reg_649;
assign bitcast_ln27_5_fu_1299_p1 = reg_653;
assign bitcast_ln27_6_fu_1359_p1 = reg_649;
assign bitcast_ln27_7_fu_1364_p1 = reg_653;
assign bitcast_ln27_8_fu_1393_p1 = reg_649;
assign bitcast_ln27_9_fu_1398_p1 = reg_653;
assign bitcast_ln27_fu_1210_p1 = reg_649;
assign bitcast_ln29_10_fu_1939_p1 = reg_687;
assign bitcast_ln29_11_fu_1957_p1 = min_p_45_reg_3568;
assign bitcast_ln29_12_fu_2029_p1 = reg_657;
assign bitcast_ln29_13_fu_2047_p1 = min_p_47_reg_3580;
assign bitcast_ln29_14_fu_2129_p1 = reg_699;
assign bitcast_ln29_15_fu_2147_p1 = min_p_49_reg_3592;
assign bitcast_ln29_16_fu_2219_p1 = reg_693;
assign bitcast_ln29_17_fu_2237_p1 = min_p_51_reg_3604;
assign bitcast_ln29_18_fu_2309_p1 = reg_711;
assign bitcast_ln29_19_fu_2327_p1 = min_p_53_reg_3616;
assign bitcast_ln29_1_fu_1507_p1 = min_p_35_reg_3501;
assign bitcast_ln29_20_fu_2399_p1 = reg_705;
assign bitcast_ln29_21_fu_2417_p1 = min_p_55_reg_3628;
assign bitcast_ln29_22_fu_2489_p1 = reg_663;
assign bitcast_ln29_23_fu_2507_p1 = min_p_57_reg_3640;
assign bitcast_ln29_24_fu_2579_p1 = reg_717;
assign bitcast_ln29_25_fu_2597_p1 = min_p_59_reg_3652;
assign bitcast_ln29_26_fu_2669_p1 = reg_723;
assign bitcast_ln29_27_fu_2687_p1 = min_p_61_reg_3664;
assign bitcast_ln29_28_fu_2759_p1 = reg_729;
assign bitcast_ln29_29_fu_2777_p1 = min_p_63_reg_3676;
assign bitcast_ln29_2_fu_1579_p1 = reg_663;
assign bitcast_ln29_30_fu_2850_p1 = p_30_reg_3544;
assign bitcast_ln29_31_fu_2867_p1 = min_p_65_reg_3688;
assign bitcast_ln29_3_fu_1597_p1 = min_p_37_reg_3513;
assign bitcast_ln29_4_fu_1669_p1 = reg_669;
assign bitcast_ln29_5_fu_1687_p1 = min_p_39_reg_3525;
assign bitcast_ln29_6_fu_1759_p1 = reg_675;
assign bitcast_ln29_7_fu_1777_p1 = min_p_41_reg_3537;
assign bitcast_ln29_8_fu_1849_p1 = reg_681;
assign bitcast_ln29_9_fu_1867_p1 = min_p_43_reg_3556;
assign bitcast_ln29_fu_1489_p1 = reg_657;
assign grp_fu_1050_p_ce = 1'b1;
assign grp_fu_1050_p_din0 = grp_fu_627_p0;
assign grp_fu_1050_p_din1 = grp_fu_627_p1;
assign grp_fu_1050_p_opcode = 2'd0;
assign grp_fu_1054_p_ce = 1'b1;
assign grp_fu_1054_p_din0 = grp_fu_631_p0;
assign grp_fu_1054_p_din1 = grp_fu_631_p1;
assign grp_fu_1054_p_opcode = 5'd4;
assign grp_fu_453_p_ce = 1'b1;
assign grp_fu_453_p_din0 = grp_fu_623_p0;
assign grp_fu_453_p_din1 = grp_fu_623_p1;
assign grp_fu_453_p_opcode = 2'd0;
assign grp_fu_635_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_642_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign icmp_ln29_10_fu_1722_p2 = ((tmp_59_fu_1690_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1728_p2 = ((trunc_ln29_5_fu_1700_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1794_p2 = ((tmp_61_fu_1763_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1800_p2 = ((trunc_ln29_6_fu_1773_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1812_p2 = ((tmp_63_fu_1780_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1818_p2 = ((trunc_ln29_7_fu_1790_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1884_p2 = ((tmp_65_fu_1853_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1890_p2 = ((trunc_ln29_8_fu_1863_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1902_p2 = ((tmp_67_fu_1870_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1908_p2 = ((trunc_ln29_9_fu_1880_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_1530_p2 = ((trunc_ln29_fu_1503_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1974_p2 = ((tmp_69_fu_1943_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1980_p2 = ((trunc_ln29_10_fu_1953_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1992_p2 = ((tmp_71_fu_1960_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1998_p2 = ((trunc_ln29_11_fu_1970_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_2064_p2 = ((tmp_73_fu_2033_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_2070_p2 = ((trunc_ln29_12_fu_2043_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_2082_p2 = ((tmp_75_fu_2050_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_2088_p2 = ((trunc_ln29_13_fu_2060_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_2164_p2 = ((tmp_77_fu_2133_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_2170_p2 = ((trunc_ln29_14_fu_2143_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1542_p2 = ((tmp_52_fu_1510_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_2182_p2 = ((tmp_79_fu_2150_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_2188_p2 = ((trunc_ln29_15_fu_2160_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_32_fu_2254_p2 = ((tmp_81_fu_2223_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_33_fu_2260_p2 = ((trunc_ln29_16_fu_2233_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_34_fu_2272_p2 = ((tmp_83_fu_2240_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_35_fu_2278_p2 = ((trunc_ln29_17_fu_2250_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_36_fu_2344_p2 = ((tmp_85_fu_2313_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_37_fu_2350_p2 = ((trunc_ln29_18_fu_2323_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_38_fu_2362_p2 = ((tmp_87_fu_2330_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_39_fu_2368_p2 = ((trunc_ln29_19_fu_2340_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1548_p2 = ((trunc_ln29_1_fu_1520_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_40_fu_2434_p2 = ((tmp_89_fu_2403_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_41_fu_2440_p2 = ((trunc_ln29_20_fu_2413_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_42_fu_2452_p2 = ((tmp_91_fu_2420_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_43_fu_2458_p2 = ((trunc_ln29_21_fu_2430_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_44_fu_2524_p2 = ((tmp_93_fu_2493_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_45_fu_2530_p2 = ((trunc_ln29_22_fu_2503_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_46_fu_2542_p2 = ((tmp_95_fu_2510_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_47_fu_2548_p2 = ((trunc_ln29_23_fu_2520_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_48_fu_2614_p2 = ((tmp_97_fu_2583_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_49_fu_2620_p2 = ((trunc_ln29_24_fu_2593_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1614_p2 = ((tmp_54_fu_1583_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_50_fu_2632_p2 = ((tmp_99_fu_2600_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_51_fu_2638_p2 = ((trunc_ln29_25_fu_2610_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_52_fu_2704_p2 = ((tmp_101_fu_2673_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_53_fu_2710_p2 = ((trunc_ln29_26_fu_2683_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_54_fu_2722_p2 = ((tmp_103_fu_2690_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_55_fu_2728_p2 = ((trunc_ln29_27_fu_2700_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_56_fu_2794_p2 = ((tmp_105_fu_2763_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_57_fu_2800_p2 = ((trunc_ln29_28_fu_2773_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_58_fu_2812_p2 = ((tmp_107_fu_2780_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_59_fu_2818_p2 = ((trunc_ln29_29_fu_2790_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1620_p2 = ((trunc_ln29_2_fu_1593_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_60_fu_2884_p2 = ((tmp_109_fu_2853_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_61_fu_2890_p2 = ((trunc_ln29_30_fu_2863_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_62_fu_2902_p2 = ((tmp_111_fu_2870_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_63_fu_2908_p2 = ((trunc_ln29_31_fu_2880_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1632_p2 = ((tmp_55_fu_1600_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1638_p2 = ((trunc_ln29_3_fu_1610_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1704_p2 = ((tmp_57_fu_1673_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1710_p2 = ((trunc_ln29_4_fu_1683_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1524_p2 = ((tmp_50_fu_1493_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign lshr_ln7_1_fu_752_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_1_fu_883_p4 = {{add_ln25_1_fu_877_p2[5:2]}};
assign lshr_ln8_2_fu_912_p4 = {{add_ln25_2_fu_906_p2[5:2]}};
assign lshr_ln8_3_fu_941_p4 = {{add_ln25_3_fu_935_p2[5:2]}};
assign lshr_ln8_4_fu_1040_p4 = {{add_ln25_4_fu_1035_p2[5:2]}};
assign lshr_ln8_5_fu_1067_p4 = {{add_ln25_5_fu_1062_p2[5:2]}};
assign lshr_ln8_6_fu_1094_p4 = {{add_ln25_6_fu_1089_p2[5:2]}};
assign lshr_ln8_7_fu_1138_p4 = {{add_ln25_7_fu_1133_p2[5:2]}};
assign lshr_ln8_8_fu_1165_p4 = {{add_ln25_8_fu_1160_p2[5:2]}};
assign lshr_ln8_9_fu_1187_p4 = {{add_ln25_9_reg_3106[6:2]}};
assign lshr_ln8_s_fu_835_p4 = {{add_ln25_fu_829_p2[5:2]}};
assign min_p_37_fu_1572_p3 = ((and_ln29_1_reg_3508[0:0] == 1'b1) ? reg_657 : min_p_35_reg_3501);
assign min_p_39_fu_1662_p3 = ((and_ln29_3_reg_3520[0:0] == 1'b1) ? reg_663 : min_p_37_reg_3513);
assign min_p_41_fu_1752_p3 = ((and_ln29_5_reg_3532[0:0] == 1'b1) ? reg_669 : min_p_39_reg_3525);
assign min_p_43_fu_1842_p3 = ((and_ln29_7_reg_3551[0:0] == 1'b1) ? reg_675 : min_p_41_reg_3537);
assign min_p_45_fu_1932_p3 = ((and_ln29_9_reg_3563[0:0] == 1'b1) ? reg_681 : min_p_43_reg_3556);
assign min_p_47_fu_2022_p3 = ((and_ln29_11_reg_3575[0:0] == 1'b1) ? reg_687 : min_p_45_reg_3568);
assign min_p_49_fu_2112_p3 = ((and_ln29_13_reg_3587[0:0] == 1'b1) ? reg_657 : min_p_47_reg_3580);
assign min_p_51_fu_2212_p3 = ((and_ln29_15_reg_3599[0:0] == 1'b1) ? reg_699 : min_p_49_reg_3592);
assign min_p_53_fu_2302_p3 = ((and_ln29_17_reg_3611[0:0] == 1'b1) ? reg_693 : min_p_51_reg_3604);
assign min_p_55_fu_2392_p3 = ((and_ln29_19_reg_3623[0:0] == 1'b1) ? reg_711 : min_p_53_reg_3616);
assign min_p_57_fu_2482_p3 = ((and_ln29_21_reg_3635[0:0] == 1'b1) ? reg_705 : min_p_55_reg_3628);
assign min_p_59_fu_2572_p3 = ((and_ln29_23_reg_3647[0:0] == 1'b1) ? reg_663 : min_p_57_reg_3640);
assign min_p_61_fu_2662_p3 = ((and_ln29_25_reg_3659[0:0] == 1'b1) ? reg_717 : min_p_59_reg_3652);
assign min_p_63_fu_2752_p3 = ((and_ln29_27_reg_3671[0:0] == 1'b1) ? reg_723 : min_p_61_reg_3664);
assign min_p_65_fu_2842_p3 = ((and_ln29_29_reg_3683[0:0] == 1'b1) ? reg_729 : min_p_63_reg_3676);
assign min_p_66_out = ((and_ln29_29_reg_3683[0:0] == 1'b1) ? reg_729 : min_p_63_reg_3676);
assign min_p_67_fu_2931_p3 = ((and_ln29_31_fu_2926_p2[0:0] == 1'b1) ? p_30_reg_3544 : min_p_65_reg_3688);
assign or_ln29_10_fu_1986_p2 = (icmp_ln29_21_fu_1980_p2 | icmp_ln29_20_fu_1974_p2);
assign or_ln29_11_fu_2004_p2 = (icmp_ln29_23_fu_1998_p2 | icmp_ln29_22_fu_1992_p2);
assign or_ln29_12_fu_2076_p2 = (icmp_ln29_25_fu_2070_p2 | icmp_ln29_24_fu_2064_p2);
assign or_ln29_13_fu_2094_p2 = (icmp_ln29_27_fu_2088_p2 | icmp_ln29_26_fu_2082_p2);
assign or_ln29_14_fu_2176_p2 = (icmp_ln29_29_fu_2170_p2 | icmp_ln29_28_fu_2164_p2);
assign or_ln29_15_fu_2194_p2 = (icmp_ln29_31_fu_2188_p2 | icmp_ln29_30_fu_2182_p2);
assign or_ln29_16_fu_2266_p2 = (icmp_ln29_33_fu_2260_p2 | icmp_ln29_32_fu_2254_p2);
assign or_ln29_17_fu_2284_p2 = (icmp_ln29_35_fu_2278_p2 | icmp_ln29_34_fu_2272_p2);
assign or_ln29_18_fu_2356_p2 = (icmp_ln29_37_fu_2350_p2 | icmp_ln29_36_fu_2344_p2);
assign or_ln29_19_fu_2374_p2 = (icmp_ln29_39_fu_2368_p2 | icmp_ln29_38_fu_2362_p2);
assign or_ln29_1_fu_1554_p2 = (icmp_ln29_3_fu_1548_p2 | icmp_ln29_2_fu_1542_p2);
assign or_ln29_20_fu_2446_p2 = (icmp_ln29_41_fu_2440_p2 | icmp_ln29_40_fu_2434_p2);
assign or_ln29_21_fu_2464_p2 = (icmp_ln29_43_fu_2458_p2 | icmp_ln29_42_fu_2452_p2);
assign or_ln29_22_fu_2536_p2 = (icmp_ln29_45_fu_2530_p2 | icmp_ln29_44_fu_2524_p2);
assign or_ln29_23_fu_2554_p2 = (icmp_ln29_47_fu_2548_p2 | icmp_ln29_46_fu_2542_p2);
assign or_ln29_24_fu_2626_p2 = (icmp_ln29_49_fu_2620_p2 | icmp_ln29_48_fu_2614_p2);
assign or_ln29_25_fu_2644_p2 = (icmp_ln29_51_fu_2638_p2 | icmp_ln29_50_fu_2632_p2);
assign or_ln29_26_fu_2716_p2 = (icmp_ln29_53_fu_2710_p2 | icmp_ln29_52_fu_2704_p2);
assign or_ln29_27_fu_2734_p2 = (icmp_ln29_55_fu_2728_p2 | icmp_ln29_54_fu_2722_p2);
assign or_ln29_28_fu_2806_p2 = (icmp_ln29_57_fu_2800_p2 | icmp_ln29_56_fu_2794_p2);
assign or_ln29_29_fu_2824_p2 = (icmp_ln29_59_fu_2818_p2 | icmp_ln29_58_fu_2812_p2);
assign or_ln29_2_fu_1626_p2 = (icmp_ln29_5_fu_1620_p2 | icmp_ln29_4_fu_1614_p2);
assign or_ln29_30_fu_2896_p2 = (icmp_ln29_61_fu_2890_p2 | icmp_ln29_60_fu_2884_p2);
assign or_ln29_31_fu_2914_p2 = (icmp_ln29_63_fu_2908_p2 | icmp_ln29_62_fu_2902_p2);
assign or_ln29_3_fu_1644_p2 = (icmp_ln29_7_fu_1638_p2 | icmp_ln29_6_fu_1632_p2);
assign or_ln29_4_fu_1716_p2 = (icmp_ln29_9_fu_1710_p2 | icmp_ln29_8_fu_1704_p2);
assign or_ln29_5_fu_1734_p2 = (icmp_ln29_11_fu_1728_p2 | icmp_ln29_10_fu_1722_p2);
assign or_ln29_6_fu_1806_p2 = (icmp_ln29_13_fu_1800_p2 | icmp_ln29_12_fu_1794_p2);
assign or_ln29_7_fu_1824_p2 = (icmp_ln29_15_fu_1818_p2 | icmp_ln29_14_fu_1812_p2);
assign or_ln29_8_fu_1896_p2 = (icmp_ln29_17_fu_1890_p2 | icmp_ln29_16_fu_1884_p2);
assign or_ln29_9_fu_1914_p2 = (icmp_ln29_19_fu_1908_p2 | icmp_ln29_18_fu_1902_p2);
assign or_ln29_fu_1536_p2 = (icmp_ln29_fu_1524_p2 | icmp_ln29_1_fu_1530_p2);
assign shl_ln1_fu_777_p3 = {{ap_sig_allocacmp_prev_1}, {5'd0}};
assign tmp_101_fu_2673_p4 = {{bitcast_ln29_26_fu_2669_p1[62:52]}};
assign tmp_102_fu_1023_p3 = {{empty_9}, {add_ln8_3_fu_1018_p2}};
assign tmp_103_fu_2690_p4 = {{bitcast_ln29_27_fu_2687_p1[62:52]}};
assign tmp_105_fu_2763_p4 = {{bitcast_ln29_28_fu_2759_p1[62:52]}};
assign tmp_106_fu_1309_p4 = {{add_ln27_6_fu_1304_p2[10:5]}};
assign tmp_107_fu_2780_p4 = {{bitcast_ln29_29_fu_2777_p1[62:52]}};
assign tmp_109_fu_2853_p4 = {{bitcast_ln29_30_fu_2850_p1[62:52]}};
assign tmp_110_fu_1050_p3 = {{empty_9}, {lshr_ln8_4_fu_1040_p4}};
assign tmp_111_fu_2870_p4 = {{bitcast_ln29_31_fu_2867_p1[62:52]}};
assign tmp_113_fu_1077_p3 = {{empty_9}, {lshr_ln8_5_fu_1067_p4}};
assign tmp_114_fu_1104_p3 = {{empty_9}, {lshr_ln8_6_fu_1094_p4}};
assign tmp_115_fu_1121_p3 = {{empty_9}, {add_ln8_4_fu_1116_p2}};
assign tmp_117_fu_1148_p3 = {{empty_9}, {lshr_ln8_7_fu_1138_p4}};
assign tmp_118_fu_1175_p3 = {{empty_9}, {lshr_ln8_8_fu_1165_p4}};
assign tmp_50_fu_1493_p4 = {{bitcast_ln29_fu_1489_p1[62:52]}};
assign tmp_52_fu_1510_p4 = {{bitcast_ln29_1_fu_1507_p1[62:52]}};
assign tmp_54_fu_1583_p4 = {{bitcast_ln29_2_fu_1579_p1[62:52]}};
assign tmp_55_fu_1600_p4 = {{bitcast_ln29_3_fu_1597_p1[62:52]}};
assign tmp_57_fu_1673_p4 = {{bitcast_ln29_4_fu_1669_p1[62:52]}};
assign tmp_59_fu_1690_p4 = {{bitcast_ln29_5_fu_1687_p1[62:52]}};
assign tmp_61_fu_1763_p4 = {{bitcast_ln29_6_fu_1759_p1[62:52]}};
assign tmp_63_fu_1780_p4 = {{bitcast_ln29_7_fu_1777_p1[62:52]}};
assign tmp_65_fu_1853_p4 = {{bitcast_ln29_8_fu_1849_p1[62:52]}};
assign tmp_67_fu_1870_p4 = {{bitcast_ln29_9_fu_1867_p1[62:52]}};
assign tmp_69_fu_1943_p4 = {{bitcast_ln29_10_fu_1939_p1[62:52]}};
assign tmp_70_fu_805_p4 = {{add_ln27_fu_799_p2[10:5]}};
assign tmp_71_fu_1960_p4 = {{bitcast_ln29_11_fu_1957_p1[62:52]}};
assign tmp_73_fu_2033_p4 = {{bitcast_ln29_12_fu_2029_p1[62:52]}};
assign tmp_74_fu_983_p4 = {{add_ln27_1_fu_978_p2[10:5]}};
assign tmp_75_fu_2050_p4 = {{bitcast_ln29_13_fu_2047_p1[62:52]}};
assign tmp_77_fu_2133_p4 = {{bitcast_ln29_14_fu_2129_p1[62:52]}};
assign tmp_78_fu_845_p3 = {{empty_9}, {lshr_ln8_s_fu_835_p4}};
assign tmp_79_fu_2150_p4 = {{bitcast_ln29_15_fu_2147_p1[62:52]}};
assign tmp_81_fu_2223_p4 = {{bitcast_ln29_16_fu_2219_p1[62:52]}};
assign tmp_82_fu_864_p3 = {{empty_9}, {add_ln8_fu_858_p2}};
assign tmp_83_fu_2240_p4 = {{bitcast_ln29_17_fu_2237_p1[62:52]}};
assign tmp_85_fu_2313_p4 = {{bitcast_ln29_18_fu_2309_p1[62:52]}};
assign tmp_86_fu_1225_p4 = {{add_ln27_3_fu_1220_p2[10:5]}};
assign tmp_87_fu_2330_p4 = {{bitcast_ln29_19_fu_2327_p1[62:52]}};
assign tmp_89_fu_2403_p4 = {{bitcast_ln29_20_fu_2399_p1[62:52]}};
assign tmp_90_fu_893_p3 = {{empty_9}, {lshr_ln8_1_fu_883_p4}};
assign tmp_91_fu_2420_p4 = {{bitcast_ln29_21_fu_2417_p1[62:52]}};
assign tmp_93_fu_2493_p4 = {{bitcast_ln29_22_fu_2489_p1[62:52]}};
assign tmp_94_fu_922_p3 = {{empty_9}, {lshr_ln8_2_fu_912_p4}};
assign tmp_95_fu_2510_p4 = {{bitcast_ln29_23_fu_2507_p1[62:52]}};
assign tmp_97_fu_2583_p4 = {{bitcast_ln29_24_fu_2579_p1[62:52]}};
assign tmp_98_fu_951_p3 = {{empty_9}, {lshr_ln8_3_fu_941_p4}};
assign tmp_99_fu_2600_p4 = {{bitcast_ln29_25_fu_2597_p1[62:52]}};
assign tmp_s_fu_762_p3 = {{empty_9}, {lshr_ln7_1_fu_752_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln27_fu_1449_p1 = add_ln25_9_reg_3106[5:0];
assign trunc_ln29_10_fu_1953_p1 = bitcast_ln29_10_fu_1939_p1[51:0];
assign trunc_ln29_11_fu_1970_p1 = bitcast_ln29_11_fu_1957_p1[51:0];
assign trunc_ln29_12_fu_2043_p1 = bitcast_ln29_12_fu_2029_p1[51:0];
assign trunc_ln29_13_fu_2060_p1 = bitcast_ln29_13_fu_2047_p1[51:0];
assign trunc_ln29_14_fu_2143_p1 = bitcast_ln29_14_fu_2129_p1[51:0];
assign trunc_ln29_15_fu_2160_p1 = bitcast_ln29_15_fu_2147_p1[51:0];
assign trunc_ln29_16_fu_2233_p1 = bitcast_ln29_16_fu_2219_p1[51:0];
assign trunc_ln29_17_fu_2250_p1 = bitcast_ln29_17_fu_2237_p1[51:0];
assign trunc_ln29_18_fu_2323_p1 = bitcast_ln29_18_fu_2309_p1[51:0];
assign trunc_ln29_19_fu_2340_p1 = bitcast_ln29_19_fu_2327_p1[51:0];
assign trunc_ln29_1_fu_1520_p1 = bitcast_ln29_1_fu_1507_p1[51:0];
assign trunc_ln29_20_fu_2413_p1 = bitcast_ln29_20_fu_2399_p1[51:0];
assign trunc_ln29_21_fu_2430_p1 = bitcast_ln29_21_fu_2417_p1[51:0];
assign trunc_ln29_22_fu_2503_p1 = bitcast_ln29_22_fu_2489_p1[51:0];
assign trunc_ln29_23_fu_2520_p1 = bitcast_ln29_23_fu_2507_p1[51:0];
assign trunc_ln29_24_fu_2593_p1 = bitcast_ln29_24_fu_2579_p1[51:0];
assign trunc_ln29_25_fu_2610_p1 = bitcast_ln29_25_fu_2597_p1[51:0];
assign trunc_ln29_26_fu_2683_p1 = bitcast_ln29_26_fu_2669_p1[51:0];
assign trunc_ln29_27_fu_2700_p1 = bitcast_ln29_27_fu_2687_p1[51:0];
assign trunc_ln29_28_fu_2773_p1 = bitcast_ln29_28_fu_2759_p1[51:0];
assign trunc_ln29_29_fu_2790_p1 = bitcast_ln29_29_fu_2777_p1[51:0];
assign trunc_ln29_2_fu_1593_p1 = bitcast_ln29_2_fu_1579_p1[51:0];
assign trunc_ln29_30_fu_2863_p1 = bitcast_ln29_30_fu_2850_p1[51:0];
assign trunc_ln29_31_fu_2880_p1 = bitcast_ln29_31_fu_2867_p1[51:0];
assign trunc_ln29_3_fu_1610_p1 = bitcast_ln29_3_fu_1597_p1[51:0];
assign trunc_ln29_4_fu_1683_p1 = bitcast_ln29_4_fu_1669_p1[51:0];
assign trunc_ln29_5_fu_1700_p1 = bitcast_ln29_5_fu_1687_p1[51:0];
assign trunc_ln29_6_fu_1773_p1 = bitcast_ln29_6_fu_1759_p1[51:0];
assign trunc_ln29_7_fu_1790_p1 = bitcast_ln29_7_fu_1777_p1[51:0];
assign trunc_ln29_8_fu_1863_p1 = bitcast_ln29_8_fu_1849_p1[51:0];
assign trunc_ln29_9_fu_1880_p1 = bitcast_ln29_9_fu_1867_p1[51:0];
assign trunc_ln29_fu_1503_p1 = bitcast_ln29_fu_1489_p1[51:0];
assign zext_ln16_fu_748_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_10_fu_1128_p1 = tmp_115_fu_1121_p3;
assign zext_ln26_11_fu_1155_p1 = tmp_117_fu_1148_p3;
assign zext_ln26_12_fu_1182_p1 = tmp_118_fu_1175_p3;
assign zext_ln26_13_fu_1196_p1 = lshr_ln8_9_fu_1187_p4;
assign zext_ln26_14_fu_1205_p1 = add_ln26_fu_1200_p2;
assign zext_ln26_1_fu_853_p1 = tmp_78_fu_845_p3;
assign zext_ln26_2_fu_872_p1 = tmp_82_fu_864_p3;
assign zext_ln26_3_fu_901_p1 = tmp_90_fu_893_p3;
assign zext_ln26_4_fu_930_p1 = tmp_94_fu_922_p3;
assign zext_ln26_5_fu_959_p1 = tmp_98_fu_951_p3;
assign zext_ln26_6_fu_1030_p1 = tmp_102_fu_1023_p3;
assign zext_ln26_7_fu_1057_p1 = tmp_110_fu_1050_p3;
assign zext_ln26_8_fu_1084_p1 = tmp_113_fu_1077_p3;
assign zext_ln26_9_fu_1111_p1 = tmp_114_fu_1104_p3;
assign zext_ln26_fu_770_p1 = tmp_s_fu_762_p3;
assign zext_ln27_10_fu_1375_p1 = add_ln27_12_fu_1369_p3;
assign zext_ln27_11_fu_1387_p1 = add_ln27_13_fu_1381_p3;
assign zext_ln27_12_fu_1409_p1 = add_ln27_15_fu_1403_p3;
assign zext_ln27_13_fu_1421_p1 = add_ln27_16_fu_1415_p3;
assign zext_ln27_14_fu_1443_p1 = add_ln27_17_fu_1437_p3;
assign zext_ln27_15_fu_1459_p1 = add_ln27_18_fu_1452_p3;
assign zext_ln27_1_fu_823_p1 = add_ln27_2_fu_815_p3;
assign zext_ln27_2_fu_1000_p1 = add_ln27_4_fu_993_p3;
assign zext_ln27_3_fu_1012_p1 = add_ln27_5_fu_1006_p3;
assign zext_ln27_4_fu_1242_p1 = add_ln27_7_fu_1235_p3;
assign zext_ln27_5_fu_1254_p1 = add_ln27_8_fu_1248_p3;
assign zext_ln27_6_fu_1276_p1 = add_ln27_9_fu_1270_p3;
assign zext_ln27_7_fu_1288_p1 = add_ln27_s_fu_1282_p3;
assign zext_ln27_8_fu_1326_p1 = add_ln27_10_fu_1319_p3;
assign zext_ln27_9_fu_1338_p1 = add_ln27_11_fu_1332_p3;
assign zext_ln27_fu_793_p1 = add_ln_fu_785_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_3033[4:0] <= 5'b00000;
end
endmodule 