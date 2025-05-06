
module backprop_update_weights_45_46_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_164);  
parameter    ap_ST_fsm_pp0_stage0 = 48'd1;
parameter    ap_ST_fsm_pp0_stage1 = 48'd2;
parameter    ap_ST_fsm_pp0_stage2 = 48'd4;
parameter    ap_ST_fsm_pp0_stage3 = 48'd8;
parameter    ap_ST_fsm_pp0_stage4 = 48'd16;
parameter    ap_ST_fsm_pp0_stage5 = 48'd32;
parameter    ap_ST_fsm_pp0_stage6 = 48'd64;
parameter    ap_ST_fsm_pp0_stage7 = 48'd128;
parameter    ap_ST_fsm_pp0_stage8 = 48'd256;
parameter    ap_ST_fsm_pp0_stage9 = 48'd512;
parameter    ap_ST_fsm_pp0_stage10 = 48'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 48'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 48'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 48'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 48'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 48'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 48'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 48'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 48'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 48'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 48'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 48'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 48'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 48'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 48'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 48'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 48'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 48'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 48'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 48'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 48'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 48'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 48'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 48'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 48'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 48'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 48'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 48'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 48'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 48'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 48'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 48'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 48'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 48'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 48'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 48'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 48'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 48'd140737488355328;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_164;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [47:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_subdone;
reg   [0:0] tmp_reg_3336;
reg    ap_condition_exit_pp0_iter0_stage47;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_992;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_996;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_1000;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_1005;
reg   [63:0] reg_1010;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_1015;
reg   [63:0] reg_1020;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_1025;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_1030;
reg   [63:0] reg_1035;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_1040;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_1045;
reg   [63:0] reg_1050;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_1055;
reg   [63:0] reg_1060;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_1065;
reg   [63:0] reg_1070;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] reg_1075;
reg   [63:0] reg_1080;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_1085;
reg   [63:0] reg_1090;
reg   [63:0] reg_1094;
reg   [63:0] reg_1099;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_1104;
wire   [63:0] grp_fu_984_p2;
reg   [63:0] reg_1109;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34_11001;
wire    ap_CS_fsm_pp0_stage35;
wire    ap_block_pp0_stage35_11001;
wire    ap_CS_fsm_pp0_stage36;
wire    ap_block_pp0_stage36_11001;
wire    ap_CS_fsm_pp0_stage37;
wire    ap_block_pp0_stage37_11001;
wire    ap_CS_fsm_pp0_stage38;
wire    ap_block_pp0_stage38_11001;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40_11001;
wire    ap_CS_fsm_pp0_stage41;
wire    ap_block_pp0_stage41_11001;
wire    ap_CS_fsm_pp0_stage42;
wire    ap_block_pp0_stage42_11001;
wire    ap_CS_fsm_pp0_stage43;
wire    ap_block_pp0_stage43_11001;
wire    ap_CS_fsm_pp0_stage44;
wire    ap_block_pp0_stage44_11001;
wire    ap_CS_fsm_pp0_stage45;
wire    ap_block_pp0_stage45_11001;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
wire   [63:0] grp_fu_988_p2;
reg   [63:0] reg_1113;
reg   [63:0] reg_1117;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_1121;
reg   [63:0] reg_1125;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
reg   [63:0] reg_1129;
reg   [63:0] reg_1133;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_1137;
reg   [63:0] reg_1141;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_1145;
reg   [63:0] reg_1149;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_1153;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_4_reg_3331;
reg   [6:0] weights3_0_addr_reg_3340;
reg   [6:0] weights3_0_addr_reg_3340_pp0_iter1_reg;
wire   [7:0] empty_fu_1260_p2;
reg   [7:0] empty_reg_3345;
wire   [6:0] lshr_ln194_1_fu_1266_p4;
reg   [6:0] lshr_ln194_1_reg_3380;
reg   [3:0] tmp_34_reg_3385;
reg   [2:0] tmp_36_reg_3390;
reg   [1:0] tmp_37_reg_3395;
reg   [6:0] weights3_1_addr_reg_3400;
reg   [6:0] weights3_1_addr_reg_3400_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_48_reg_3405;
reg   [6:0] weights3_0_addr_48_reg_3405_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_48_reg_3410;
reg   [6:0] weights3_1_addr_48_reg_3410_pp0_iter1_reg;
wire   [5:0] or_ln194_1_fu_1311_p3;
reg   [5:0] or_ln194_1_reg_3415;
wire   [5:0] or_ln194_3_fu_1336_p3;
reg   [5:0] or_ln194_3_reg_3420;
reg   [6:0] weights3_0_addr_50_reg_3425;
reg   [6:0] weights3_0_addr_50_reg_3425_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_50_reg_3430;
reg   [6:0] weights3_1_addr_50_reg_3430_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_54_reg_3435;
reg   [6:0] weights3_0_addr_54_reg_3435_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_62_reg_3440;
reg   [6:0] weights3_0_addr_62_reg_3440_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_62_reg_3445;
reg   [6:0] weights3_1_addr_62_reg_3445_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_fu_1349_p1;
wire   [6:0] lshr_ln194_3_fu_1389_p4;
reg   [6:0] lshr_ln194_3_reg_3455;
wire   [63:0] bitcast_ln194_1_fu_1404_p1;
reg   [6:0] weights3_0_addr_49_reg_3465;
reg   [6:0] weights3_0_addr_49_reg_3465_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_49_reg_3470;
reg   [6:0] weights3_1_addr_49_reg_3470_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_51_reg_3475;
reg   [6:0] weights3_1_addr_51_reg_3475_pp0_iter1_reg;
wire   [6:0] zext_ln194_4_fu_1409_p1;
reg   [6:0] zext_ln194_4_reg_3480;
reg   [6:0] lshr_ln194_5_reg_3488;
wire   [63:0] bitcast_ln194_2_fu_1480_p1;
wire   [63:0] bitcast_ln194_3_fu_1485_p1;
reg   [6:0] weights3_0_addr_51_reg_3504;
reg   [6:0] weights3_0_addr_51_reg_3504_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_52_reg_3509;
reg   [6:0] weights3_0_addr_52_reg_3509_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_52_reg_3514;
reg   [6:0] weights3_1_addr_52_reg_3514_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_53_reg_3519;
reg   [6:0] weights3_0_addr_53_reg_3519_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_53_reg_3524;
reg   [6:0] weights3_1_addr_53_reg_3524_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_6_fu_1524_p1;
wire   [63:0] bitcast_ln194_7_fu_1529_p1;
reg   [6:0] weights3_1_addr_54_reg_3539;
reg   [6:0] weights3_1_addr_54_reg_3539_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_55_reg_3544;
reg   [6:0] weights3_0_addr_55_reg_3544_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_55_reg_3549;
reg   [6:0] weights3_1_addr_55_reg_3549_pp0_iter1_reg;
wire   [6:0] lshr_ln194_7_fu_1560_p4;
reg   [6:0] lshr_ln194_7_reg_3554;
wire   [63:0] bitcast_ln194_14_fu_1575_p1;
reg   [6:0] weights3_0_addr_56_reg_3564;
reg   [6:0] weights3_0_addr_56_reg_3564_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_56_reg_3569;
reg   [6:0] weights3_1_addr_56_reg_3569_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_57_reg_3574;
reg   [6:0] weights3_0_addr_57_reg_3574_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_57_reg_3579;
reg   [6:0] weights3_1_addr_57_reg_3579_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_30_fu_1580_p1;
reg   [6:0] lshr_ln194_9_reg_3589;
wire   [63:0] bitcast_ln194_4_fu_1641_p1;
reg   [6:0] weights3_0_addr_58_reg_3600;
reg   [6:0] weights3_0_addr_58_reg_3600_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_58_reg_3605;
reg   [6:0] weights3_1_addr_58_reg_3605_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_59_reg_3610;
reg   [6:0] weights3_0_addr_59_reg_3610_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_59_reg_3615;
reg   [6:0] weights3_1_addr_59_reg_3615_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_31_fu_1646_p1;
reg   [6:0] lshr_ln194_10_reg_3625;
wire   [63:0] bitcast_ln194_5_fu_1710_p1;
wire   [63:0] bitcast_ln194_8_fu_1715_p1;
reg   [6:0] weights3_0_addr_60_reg_3641;
reg   [6:0] weights3_0_addr_60_reg_3641_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_60_reg_3646;
reg   [6:0] weights3_1_addr_60_reg_3646_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_61_reg_3651;
reg   [6:0] weights3_0_addr_61_reg_3651_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_61_reg_3656;
reg   [6:0] weights3_1_addr_61_reg_3656_pp0_iter1_reg;
wire   [6:0] zext_ln194_21_fu_1720_p1;
reg   [6:0] zext_ln194_21_reg_3661;
wire   [63:0] bitcast_ln194_9_fu_1768_p1;
wire   [63:0] bitcast_ln194_10_fu_1773_p1;
reg   [6:0] weights3_0_addr_63_reg_3695;
reg   [6:0] weights3_0_addr_63_reg_3695_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_63_reg_3700;
reg   [6:0] weights3_1_addr_63_reg_3700_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_64_reg_3705;
reg   [6:0] weights3_0_addr_64_reg_3705_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_64_reg_3710;
reg   [6:0] weights3_1_addr_64_reg_3710_pp0_iter1_reg;
wire   [6:0] lshr_ln194_12_fu_1804_p4;
reg   [6:0] lshr_ln194_12_reg_3715;
wire   [63:0] bitcast_ln194_11_fu_1819_p1;
wire   [63:0] bitcast_ln194_12_fu_1824_p1;
reg   [6:0] weights3_0_addr_65_reg_3730;
reg   [6:0] weights3_0_addr_65_reg_3730_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_65_reg_3735;
reg   [6:0] weights3_1_addr_65_reg_3735_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_66_reg_3740;
reg   [6:0] weights3_0_addr_66_reg_3740_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_66_reg_3745;
reg   [6:0] weights3_1_addr_66_reg_3745_pp0_iter1_reg;
reg   [6:0] lshr_ln194_14_reg_3750;
wire   [63:0] bitcast_ln194_13_fu_1885_p1;
wire   [63:0] bitcast_ln194_15_fu_1890_p1;
reg   [6:0] weights3_0_addr_67_reg_3766;
reg   [6:0] weights3_0_addr_67_reg_3766_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_67_reg_3771;
reg   [6:0] weights3_1_addr_67_reg_3771_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_68_reg_3776;
reg   [6:0] weights3_0_addr_68_reg_3776_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_68_reg_3781;
reg   [6:0] weights3_1_addr_68_reg_3781_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_16_fu_1939_p1;
wire   [63:0] bitcast_ln194_17_fu_1944_p1;
reg   [6:0] weights3_0_addr_69_reg_3796;
reg   [6:0] weights3_0_addr_69_reg_3796_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_69_reg_3801;
reg   [6:0] weights3_1_addr_69_reg_3801_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_70_reg_3806;
reg   [6:0] weights3_0_addr_70_reg_3806_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_70_reg_3812;
reg   [6:0] weights3_1_addr_70_reg_3812_pp0_iter1_reg;
wire   [6:0] lshr_ln194_16_fu_1975_p4;
reg   [6:0] lshr_ln194_16_reg_3818;
wire   [63:0] bitcast_ln194_18_fu_1990_p1;
wire   [63:0] bitcast_ln194_19_fu_1995_p1;
reg   [63:0] weights3_0_load_70_reg_3833;
reg   [63:0] weights3_1_load_70_reg_3838;
reg   [6:0] weights3_0_addr_71_reg_3843;
reg   [6:0] weights3_0_addr_71_reg_3843_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_71_reg_3848;
reg   [6:0] weights3_1_addr_71_reg_3848_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_72_reg_3853;
reg   [6:0] weights3_0_addr_72_reg_3853_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_72_reg_3859;
reg   [6:0] weights3_1_addr_72_reg_3859_pp0_iter1_reg;
reg   [6:0] lshr_ln194_18_reg_3865;
wire   [63:0] bitcast_ln194_20_fu_2056_p1;
wire   [63:0] bitcast_ln194_21_fu_2061_p1;
reg   [63:0] weights3_0_load_72_reg_3881;
reg   [63:0] weights3_1_load_72_reg_3886;
reg   [6:0] weights3_0_addr_73_reg_3891;
reg   [6:0] weights3_0_addr_73_reg_3891_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_73_reg_3896;
reg   [6:0] weights3_1_addr_73_reg_3896_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_74_reg_3901;
reg   [6:0] weights3_0_addr_74_reg_3901_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_74_reg_3907;
reg   [6:0] weights3_1_addr_74_reg_3907_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_22_fu_2110_p1;
wire   [63:0] bitcast_ln194_23_fu_2115_p1;
reg   [63:0] weights3_0_load_74_reg_3923;
reg   [63:0] weights3_1_load_74_reg_3928;
reg   [6:0] weights3_0_addr_75_reg_3933;
reg   [6:0] weights3_0_addr_75_reg_3933_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_75_reg_3938;
reg   [6:0] weights3_1_addr_75_reg_3938_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_76_reg_3943;
reg   [6:0] weights3_0_addr_76_reg_3943_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_76_reg_3949;
reg   [6:0] weights3_1_addr_76_reg_3949_pp0_iter1_reg;
wire   [6:0] lshr_ln194_20_fu_2146_p4;
reg   [6:0] lshr_ln194_20_reg_3955;
wire   [63:0] bitcast_ln194_24_fu_2161_p1;
wire   [63:0] bitcast_ln194_25_fu_2166_p1;
reg   [63:0] weights3_0_load_76_reg_3970;
reg   [63:0] weights3_1_load_76_reg_3975;
reg   [6:0] weights3_0_addr_77_reg_3980;
reg   [6:0] weights3_0_addr_77_reg_3980_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_77_reg_3985;
reg   [6:0] weights3_1_addr_77_reg_3985_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_78_reg_3990;
reg   [6:0] weights3_0_addr_78_reg_3990_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_78_reg_3996;
reg   [6:0] weights3_1_addr_78_reg_3996_pp0_iter1_reg;
reg   [6:0] lshr_ln194_22_reg_4002;
wire   [63:0] bitcast_ln194_26_fu_2227_p1;
wire   [63:0] bitcast_ln194_27_fu_2232_p1;
reg   [63:0] weights3_0_load_78_reg_4018;
reg   [63:0] weights3_1_load_78_reg_4023;
reg   [6:0] weights3_0_addr_79_reg_4028;
reg   [6:0] weights3_0_addr_79_reg_4028_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_79_reg_4033;
reg   [6:0] weights3_1_addr_79_reg_4033_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_80_reg_4038;
reg   [6:0] weights3_0_addr_80_reg_4038_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_80_reg_4044;
reg   [6:0] weights3_1_addr_80_reg_4044_pp0_iter1_reg;
wire   [63:0] bitcast_ln194_28_fu_2281_p1;
wire   [63:0] bitcast_ln194_29_fu_2286_p1;
reg   [63:0] weights3_0_load_80_reg_4060;
reg   [63:0] weights3_1_load_80_reg_4065;
reg   [6:0] weights3_0_addr_81_reg_4070;
reg   [6:0] weights3_0_addr_81_reg_4070_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_81_reg_4075;
reg   [6:0] weights3_1_addr_81_reg_4075_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_82_reg_4080;
reg   [6:0] weights3_0_addr_82_reg_4080_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_82_reg_4080_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_82_reg_4085;
reg   [6:0] weights3_1_addr_82_reg_4085_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_82_reg_4085_pp0_iter2_reg;
wire   [6:0] lshr_ln194_24_fu_2317_p4;
reg   [6:0] lshr_ln194_24_reg_4090;
wire   [63:0] bitcast_ln194_32_fu_2332_p1;
wire   [63:0] bitcast_ln194_33_fu_2337_p1;
reg   [63:0] weights3_0_load_82_reg_4105;
reg   [63:0] weights3_1_load_82_reg_4110;
reg   [6:0] weights3_0_addr_83_reg_4115;
reg   [6:0] weights3_0_addr_83_reg_4115_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_83_reg_4115_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_83_reg_4121;
reg   [6:0] weights3_1_addr_83_reg_4121_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_83_reg_4121_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_84_reg_4127;
reg   [6:0] weights3_0_addr_84_reg_4127_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_84_reg_4127_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_84_reg_4132;
reg   [6:0] weights3_1_addr_84_reg_4132_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_84_reg_4132_pp0_iter2_reg;
reg   [6:0] lshr_ln194_26_reg_4137;
wire   [63:0] bitcast_ln194_34_fu_2398_p1;
wire   [63:0] bitcast_ln194_35_fu_2403_p1;
reg   [63:0] weights3_0_load_84_reg_4153;
reg   [63:0] weights3_1_load_84_reg_4158;
reg   [6:0] weights3_0_addr_85_reg_4163;
reg   [6:0] weights3_0_addr_85_reg_4163_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_85_reg_4163_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_85_reg_4169;
reg   [6:0] weights3_1_addr_85_reg_4169_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_85_reg_4169_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_86_reg_4175;
reg   [6:0] weights3_0_addr_86_reg_4175_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_86_reg_4175_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_86_reg_4180;
reg   [6:0] weights3_1_addr_86_reg_4180_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_86_reg_4180_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_36_fu_2452_p1;
wire   [63:0] bitcast_ln194_37_fu_2457_p1;
reg   [63:0] weights3_0_load_86_reg_4195;
reg   [63:0] weights3_1_load_86_reg_4200;
reg   [6:0] weights3_0_addr_87_reg_4205;
reg   [6:0] weights3_0_addr_87_reg_4205_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_87_reg_4205_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_87_reg_4211;
reg   [6:0] weights3_1_addr_87_reg_4211_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_87_reg_4211_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_88_reg_4217;
reg   [6:0] weights3_0_addr_88_reg_4217_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_88_reg_4217_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_88_reg_4222;
reg   [6:0] weights3_1_addr_88_reg_4222_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_88_reg_4222_pp0_iter2_reg;
wire   [6:0] lshr_ln194_28_fu_2488_p4;
reg   [6:0] lshr_ln194_28_reg_4227;
wire   [63:0] bitcast_ln194_38_fu_2503_p1;
wire   [63:0] bitcast_ln194_39_fu_2508_p1;
reg   [63:0] weights3_0_load_88_reg_4242;
reg   [63:0] weights3_1_load_88_reg_4247;
reg   [6:0] weights3_0_addr_89_reg_4252;
reg   [6:0] weights3_0_addr_89_reg_4252_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_89_reg_4252_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_89_reg_4258;
reg   [6:0] weights3_1_addr_89_reg_4258_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_89_reg_4258_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_90_reg_4264;
reg   [6:0] weights3_0_addr_90_reg_4264_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_90_reg_4264_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_90_reg_4269;
reg   [6:0] weights3_1_addr_90_reg_4269_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_90_reg_4269_pp0_iter2_reg;
reg   [6:0] lshr_ln194_30_reg_4274;
reg   [6:0] lshr_ln194_31_reg_4280;
wire   [63:0] bitcast_ln194_40_fu_2584_p1;
wire   [63:0] bitcast_ln194_41_fu_2589_p1;
reg   [63:0] weights3_0_load_90_reg_4295;
reg   [63:0] weights3_1_load_90_reg_4300;
reg   [6:0] weights3_0_addr_91_reg_4305;
reg   [6:0] weights3_0_addr_91_reg_4305_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_91_reg_4305_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_91_reg_4311;
reg   [6:0] weights3_1_addr_91_reg_4311_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_91_reg_4311_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_92_reg_4317;
reg   [6:0] weights3_0_addr_92_reg_4317_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_92_reg_4317_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_92_reg_4322;
reg   [6:0] weights3_1_addr_92_reg_4322_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_92_reg_4322_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_42_fu_2622_p1;
wire   [63:0] bitcast_ln194_43_fu_2627_p1;
reg   [63:0] weights3_0_load_92_reg_4337;
reg   [63:0] weights3_1_load_92_reg_4342;
reg   [6:0] weights3_0_addr_93_reg_4347;
reg   [6:0] weights3_0_addr_93_reg_4347_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_93_reg_4347_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_93_reg_4353;
reg   [6:0] weights3_1_addr_93_reg_4353_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_93_reg_4353_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_94_reg_4359;
reg   [6:0] weights3_0_addr_94_reg_4359_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_94_reg_4359_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_94_reg_4364;
reg   [6:0] weights3_1_addr_94_reg_4364_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_94_reg_4364_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_44_fu_2632_p1;
wire   [63:0] bitcast_ln194_45_fu_2637_p1;
reg   [63:0] weights3_0_load_94_reg_4379;
reg   [63:0] weights3_1_load_94_reg_4384;
wire   [63:0] bitcast_ln194_46_fu_2642_p1;
wire   [63:0] bitcast_ln194_47_fu_2646_p1;
wire   [63:0] bitcast_ln194_48_fu_2650_p1;
wire   [63:0] bitcast_ln194_49_fu_2655_p1;
wire   [63:0] bitcast_ln194_50_fu_2660_p1;
wire   [63:0] bitcast_ln194_51_fu_2664_p1;
wire   [63:0] bitcast_ln194_52_fu_2668_p1;
wire   [63:0] bitcast_ln194_53_fu_2673_p1;
wire   [63:0] bitcast_ln194_54_fu_2678_p1;
wire   [63:0] bitcast_ln194_55_fu_2682_p1;
wire   [63:0] bitcast_ln194_56_fu_2686_p1;
wire   [63:0] bitcast_ln194_57_fu_2691_p1;
wire   [63:0] bitcast_ln194_58_fu_2696_p1;
wire   [63:0] bitcast_ln194_59_fu_2700_p1;
wire   [63:0] bitcast_ln194_60_fu_2704_p1;
wire   [63:0] bitcast_ln194_61_fu_2709_p1;
wire   [63:0] bitcast_ln194_62_fu_2714_p1;
wire   [63:0] bitcast_ln194_63_fu_2718_p1;
wire   [63:0] bitcast_ln194_64_fu_2722_p1;
wire   [63:0] bitcast_ln194_65_fu_2727_p1;
wire   [63:0] bitcast_ln194_66_fu_2732_p1;
wire   [63:0] bitcast_ln194_67_fu_2736_p1;
wire   [63:0] bitcast_ln194_68_fu_2740_p1;
wire   [63:0] bitcast_ln194_69_fu_2745_p1;
wire   [63:0] bitcast_ln194_70_fu_2750_p1;
wire   [63:0] bitcast_ln194_71_fu_2754_p1;
wire   [63:0] bitcast_ln194_72_fu_2758_p1;
wire   [63:0] bitcast_ln194_73_fu_2763_p1;
wire   [63:0] bitcast_ln194_74_fu_2768_p1;
wire   [63:0] bitcast_ln194_75_fu_2772_p1;
wire   [63:0] bitcast_ln194_76_fu_2776_p1;
wire   [63:0] bitcast_ln194_77_fu_2781_p1;
wire   [63:0] bitcast_ln194_78_fu_2786_p1;
wire   [63:0] bitcast_ln194_79_fu_2790_p1;
wire   [63:0] bitcast_ln194_80_fu_2794_p1;
wire   [63:0] bitcast_ln194_81_fu_2799_p1;
wire   [63:0] bitcast_ln194_82_fu_2804_p1;
wire   [63:0] bitcast_ln194_83_fu_2808_p1;
wire   [63:0] bitcast_ln194_84_fu_2812_p1;
wire   [63:0] bitcast_ln194_85_fu_2817_p1;
wire   [63:0] bitcast_ln194_86_fu_2822_p1;
wire   [63:0] bitcast_ln194_87_fu_2826_p1;
wire   [63:0] bitcast_ln194_88_fu_2830_p1;
wire   [63:0] bitcast_ln194_89_fu_2835_p1;
wire   [63:0] bitcast_ln194_90_fu_2840_p1;
wire    ap_block_pp0_stage47_11001;
wire   [63:0] bitcast_ln194_91_fu_2844_p1;
wire   [63:0] bitcast_ln194_92_fu_2858_p1;
wire   [63:0] bitcast_ln194_93_fu_2863_p1;
wire   [63:0] bitcast_ln194_94_fu_2868_p1;
wire   [63:0] bitcast_ln194_95_fu_2872_p1;
reg   [63:0] div213_3_reg_4639;
reg   [63:0] div213_3_1_reg_4644;
reg   [63:0] div213_3_2_reg_4649;
reg   [63:0] div213_4_reg_4654;
reg   [63:0] div213_4_1_reg_4659;
reg   [63:0] div213_5_reg_4664;
reg   [63:0] div213_5_1_reg_4669;
reg   [63:0] div213_5_2_reg_4674;
reg   [63:0] div213_6_reg_4679;
reg   [63:0] div213_6_1_reg_4684;
reg   [63:0] div213_6_2_reg_4689;
reg   [63:0] div213_7_reg_4694;
reg   [63:0] div213_23_1_reg_4699;
reg   [63:0] div213_23_2_reg_4704;
reg   [63:0] div213_24_reg_4709;
reg   [63:0] div213_24_1_reg_4714;
reg   [63:0] div213_24_2_reg_4719;
reg   [63:0] div213_25_reg_4724;
reg   [63:0] div213_25_1_reg_4729;
reg   [63:0] div213_25_2_reg_4734;
reg   [63:0] div213_26_reg_4739;
reg   [63:0] div213_26_1_reg_4744;
reg   [63:0] div213_26_2_reg_4749;
reg   [63:0] div213_27_reg_4754;
reg   [63:0] div213_27_1_reg_4759;
reg   [63:0] div213_27_2_reg_4764;
reg   [63:0] div213_28_reg_4769;
reg   [63:0] div213_28_1_reg_4774;
reg   [63:0] div213_28_2_reg_4779;
reg   [63:0] div213_29_reg_4784;
reg   [63:0] div213_29_1_reg_4789;
reg   [63:0] div213_29_2_reg_4794;
reg   [63:0] div213_30_reg_4799;
reg   [63:0] div213_30_1_reg_4804;
reg   [63:0] div213_30_2_reg_4809;
reg   [63:0] div213_31_reg_4814;
reg   [63:0] div213_31_1_reg_4819;
reg   [63:0] div213_31_2_reg_4824;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_1211_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln192_fu_1235_p1;
wire   [63:0] zext_ln194_1_fu_1276_p1;
wire   [63:0] zext_ln194_5_fu_1318_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] or_ln194_2_cast_fu_1331_p1;
wire   [63:0] zext_ln194_22_fu_1343_p1;
wire   [63:0] zext_ln194_2_fu_1369_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_3_fu_1379_p1;
wire   [63:0] zext_ln194_6_fu_1399_p1;
wire   [63:0] add_ln194_2_cast_fu_1418_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_7_fu_1438_p1;
wire   [63:0] zext_ln194_8_fu_1448_p1;
wire   [63:0] zext_ln194_9_fu_1459_p1;
wire   [63:0] zext_ln194_10_fu_1490_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln194_11_fu_1509_p1;
wire   [63:0] zext_ln194_12_fu_1519_p1;
wire   [63:0] zext_ln194_13_fu_1539_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] add_ln194_9_cast_fu_1550_p1;
wire   [63:0] zext_ln194_14_fu_1570_p1;
wire   [63:0] zext_ln194_15_fu_1600_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln194_16_fu_1610_p1;
wire   [63:0] zext_ln194_17_fu_1620_p1;
wire   [63:0] add_ln194_13_cast_fu_1656_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln194_18_fu_1661_p1;
wire   [63:0] zext_ln194_19_fu_1680_p1;
wire   [63:0] zext_ln194_20_fu_1690_p1;
wire   [63:0] add_ln194_16_cast_fu_1729_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln194_23_fu_1734_p1;
wire   [63:0] zext_ln194_24_fu_1753_p1;
wire   [63:0] zext_ln194_25_fu_1763_p1;
wire   [63:0] zext_ln194_26_fu_1783_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] add_ln194_20_cast_fu_1794_p1;
wire   [63:0] zext_ln194_27_fu_1814_p1;
wire   [63:0] zext_ln194_28_fu_1844_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln194_29_fu_1854_p1;
wire   [63:0] zext_ln194_30_fu_1864_p1;
wire   [63:0] add_ln194_24_cast_fu_1900_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln194_31_fu_1905_p1;
wire   [63:0] zext_ln194_32_fu_1924_p1;
wire   [63:0] zext_ln194_33_fu_1934_p1;
wire   [63:0] zext_ln194_34_fu_1954_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] add_ln194_28_cast_fu_1965_p1;
wire   [63:0] zext_ln194_35_fu_1985_p1;
wire   [63:0] zext_ln194_36_fu_2015_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln194_37_fu_2025_p1;
wire   [63:0] zext_ln194_38_fu_2035_p1;
wire   [63:0] add_ln194_32_cast_fu_2071_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln194_39_fu_2076_p1;
wire   [63:0] zext_ln194_40_fu_2095_p1;
wire   [63:0] zext_ln194_41_fu_2105_p1;
wire   [63:0] zext_ln194_42_fu_2125_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] add_ln194_36_cast_fu_2136_p1;
wire   [63:0] zext_ln194_43_fu_2156_p1;
wire   [63:0] zext_ln194_44_fu_2186_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln194_45_fu_2196_p1;
wire   [63:0] zext_ln194_46_fu_2206_p1;
wire   [63:0] add_ln194_40_cast_fu_2242_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln194_47_fu_2247_p1;
wire   [63:0] zext_ln194_48_fu_2266_p1;
wire   [63:0] zext_ln194_49_fu_2276_p1;
wire   [63:0] zext_ln194_50_fu_2296_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] add_ln194_44_cast_fu_2307_p1;
wire   [63:0] zext_ln194_51_fu_2327_p1;
wire   [63:0] zext_ln194_52_fu_2357_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln194_53_fu_2367_p1;
wire   [63:0] zext_ln194_54_fu_2377_p1;
wire   [63:0] add_ln194_48_cast_fu_2413_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln194_55_fu_2418_p1;
wire   [63:0] zext_ln194_56_fu_2437_p1;
wire   [63:0] zext_ln194_57_fu_2447_p1;
wire   [63:0] zext_ln194_58_fu_2467_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] add_ln194_52_cast_fu_2478_p1;
wire   [63:0] zext_ln194_59_fu_2498_p1;
wire   [63:0] zext_ln194_60_fu_2528_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln194_61_fu_2538_p1;
wire   [63:0] zext_ln194_62_fu_2548_p1;
wire   [63:0] add_ln194_56_cast_fu_2599_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln194_63_fu_2604_p1;
wire   [63:0] zext_ln194_64_fu_2608_p1;
wire   [63:0] zext_ln194_65_fu_2617_p1;
reg   [6:0] i_fu_190;
wire   [6:0] add_ln192_fu_2848_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln194_96_fu_2876_p1;
wire    ap_block_pp0_stage24;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_97_fu_2881_p1;
wire   [63:0] bitcast_ln194_99_fu_2896_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln194_103_fu_2901_p1;
wire   [63:0] bitcast_ln194_98_fu_2916_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] bitcast_ln194_111_fu_2921_p1;
wire   [63:0] bitcast_ln194_100_fu_2935_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln194_101_fu_2940_p1;
wire   [63:0] bitcast_ln194_102_fu_2952_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] bitcast_ln194_104_fu_2956_p1;
wire   [63:0] bitcast_ln194_105_fu_2968_p1;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln194_106_fu_2972_p1;
wire   [63:0] bitcast_ln194_107_fu_2984_p1;
wire    ap_block_pp0_stage30;
wire   [63:0] bitcast_ln194_108_fu_2989_p1;
wire   [63:0] bitcast_ln194_109_fu_3004_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln194_110_fu_3009_p1;
wire   [63:0] bitcast_ln194_112_fu_3024_p1;
wire    ap_block_pp0_stage32;
wire   [63:0] bitcast_ln194_113_fu_3029_p1;
wire   [63:0] bitcast_ln194_114_fu_3044_p1;
wire    ap_block_pp0_stage33;
wire   [63:0] bitcast_ln194_115_fu_3049_p1;
wire   [63:0] bitcast_ln194_116_fu_3064_p1;
wire    ap_block_pp0_stage34;
wire   [63:0] bitcast_ln194_117_fu_3069_p1;
wire   [63:0] bitcast_ln194_118_fu_3084_p1;
wire    ap_block_pp0_stage35;
wire   [63:0] bitcast_ln194_119_fu_3094_p1;
wire    ap_block_pp0_stage36;
wire   [63:0] bitcast_ln194_120_fu_3104_p1;
wire    ap_block_pp0_stage37;
wire   [63:0] bitcast_ln194_121_fu_3114_p1;
wire    ap_block_pp0_stage38;
wire   [63:0] bitcast_ln194_122_fu_3124_p1;
wire    ap_block_pp0_stage39;
wire   [63:0] bitcast_ln194_123_fu_3134_p1;
wire    ap_block_pp0_stage40;
wire   [63:0] bitcast_ln194_124_fu_3144_p1;
wire    ap_block_pp0_stage41;
wire   [63:0] bitcast_ln194_125_fu_3154_p1;
wire    ap_block_pp0_stage42;
wire   [63:0] bitcast_ln194_126_fu_3164_p1;
wire    ap_block_pp0_stage43;
wire   [63:0] bitcast_ln194_127_fu_3174_p1;
wire    ap_block_pp0_stage44;
wire   [63:0] bitcast_ln194_128_fu_3184_p1;
wire    ap_block_pp0_stage45;
wire   [63:0] bitcast_ln194_129_fu_3194_p1;
wire    ap_block_pp0_stage46;
wire   [63:0] bitcast_ln194_130_fu_3204_p1;
wire    ap_block_pp0_stage47;
wire   [63:0] bitcast_ln194_131_fu_3214_p1;
wire   [63:0] bitcast_ln194_132_fu_3222_p1;
wire   [63:0] bitcast_ln194_133_fu_3230_p1;
wire   [63:0] bitcast_ln194_134_fu_3238_p1;
wire   [63:0] bitcast_ln194_135_fu_3246_p1;
wire   [63:0] bitcast_ln194_136_fu_3254_p1;
wire   [63:0] bitcast_ln194_137_fu_3262_p1;
wire   [63:0] bitcast_ln194_138_fu_3270_p1;
wire   [63:0] bitcast_ln194_139_fu_3278_p1;
wire   [63:0] bitcast_ln194_140_fu_3286_p1;
wire   [63:0] bitcast_ln194_141_fu_3294_p1;
wire   [63:0] bitcast_ln194_142_fu_3302_p1;
wire   [63:0] bitcast_ln194_143_fu_3310_p1;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln194_144_fu_2886_p1;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_145_fu_2891_p1;
wire   [63:0] bitcast_ln194_147_fu_2906_p1;
wire   [63:0] bitcast_ln194_159_fu_2911_p1;
wire   [63:0] bitcast_ln194_146_fu_2926_p1;
wire   [63:0] bitcast_ln194_148_fu_2931_p1;
wire   [63:0] bitcast_ln194_149_fu_2944_p1;
wire   [63:0] bitcast_ln194_150_fu_2948_p1;
wire   [63:0] bitcast_ln194_151_fu_2960_p1;
wire   [63:0] bitcast_ln194_152_fu_2964_p1;
wire   [63:0] bitcast_ln194_153_fu_2976_p1;
wire   [63:0] bitcast_ln194_154_fu_2980_p1;
wire   [63:0] bitcast_ln194_155_fu_2994_p1;
wire   [63:0] bitcast_ln194_156_fu_2999_p1;
wire   [63:0] bitcast_ln194_157_fu_3014_p1;
wire   [63:0] bitcast_ln194_158_fu_3019_p1;
wire   [63:0] bitcast_ln194_160_fu_3034_p1;
wire   [63:0] bitcast_ln194_161_fu_3039_p1;
wire   [63:0] bitcast_ln194_162_fu_3054_p1;
wire   [63:0] bitcast_ln194_163_fu_3059_p1;
wire   [63:0] bitcast_ln194_164_fu_3074_p1;
wire   [63:0] bitcast_ln194_165_fu_3079_p1;
wire   [63:0] bitcast_ln194_166_fu_3089_p1;
wire   [63:0] bitcast_ln194_167_fu_3099_p1;
wire   [63:0] bitcast_ln194_168_fu_3109_p1;
wire   [63:0] bitcast_ln194_169_fu_3119_p1;
wire   [63:0] bitcast_ln194_170_fu_3129_p1;
wire   [63:0] bitcast_ln194_171_fu_3139_p1;
wire   [63:0] bitcast_ln194_172_fu_3149_p1;
wire   [63:0] bitcast_ln194_173_fu_3159_p1;
wire   [63:0] bitcast_ln194_174_fu_3169_p1;
wire   [63:0] bitcast_ln194_175_fu_3179_p1;
wire   [63:0] bitcast_ln194_176_fu_3189_p1;
wire   [63:0] bitcast_ln194_177_fu_3199_p1;
wire   [63:0] bitcast_ln194_178_fu_3209_p1;
wire   [63:0] bitcast_ln194_179_fu_3218_p1;
wire   [63:0] bitcast_ln194_180_fu_3226_p1;
wire   [63:0] bitcast_ln194_181_fu_3234_p1;
wire   [63:0] bitcast_ln194_182_fu_3242_p1;
wire   [63:0] bitcast_ln194_183_fu_3250_p1;
wire   [63:0] bitcast_ln194_184_fu_3258_p1;
wire   [63:0] bitcast_ln194_185_fu_3266_p1;
wire   [63:0] bitcast_ln194_186_fu_3274_p1;
wire   [63:0] bitcast_ln194_187_fu_3282_p1;
wire   [63:0] bitcast_ln194_188_fu_3290_p1;
wire   [63:0] bitcast_ln194_189_fu_3298_p1;
wire   [63:0] bitcast_ln194_190_fu_3306_p1;
wire   [63:0] bitcast_ln194_191_fu_3314_p1;
reg   [63:0] grp_fu_984_p0;
reg   [63:0] grp_fu_988_p0;
wire   [5:0] lshr_ln7_fu_1173_p4;
wire   [4:0] tmp_35_fu_1187_p4;
wire   [6:0] p_shl1_fu_1197_p3;
wire   [6:0] zext_ln194_66_fu_1183_p1;
wire   [6:0] sub_ln194_fu_1205_p2;
wire   [4:0] tmp_s_fu_1217_p4;
wire   [5:0] or_ln5_fu_1227_p3;
wire   [5:0] or_ln6_fu_1240_p3;
wire   [7:0] p_shl_fu_1252_p3;
wire   [7:0] or_ln192_cast_fu_1248_p1;
wire   [5:0] or_ln194_2_fu_1324_p3;
wire   [7:0] add_ln194_fu_1354_p2;
wire   [6:0] lshr_ln194_2_fu_1359_p4;
wire   [6:0] add_ln194_1_fu_1374_p2;
wire   [7:0] empty_51_fu_1384_p2;
wire   [6:0] add_ln194_2_fu_1412_p2;
wire   [7:0] add_ln194_3_fu_1423_p2;
wire   [6:0] lshr_ln194_4_fu_1428_p4;
wire   [6:0] add_ln194_4_fu_1443_p2;
wire   [6:0] add_ln194_5_fu_1453_p2;
wire   [7:0] empty_52_fu_1465_p2;
wire   [7:0] add_ln194_6_fu_1494_p2;
wire   [6:0] lshr_ln194_6_fu_1499_p4;
wire   [6:0] add_ln194_7_fu_1514_p2;
wire   [6:0] add_ln194_8_fu_1534_p2;
wire   [6:0] add_ln194_9_fu_1545_p2;
wire   [7:0] empty_53_fu_1555_p2;
wire   [7:0] add_ln194_10_fu_1585_p2;
wire   [6:0] lshr_ln194_8_fu_1590_p4;
wire   [6:0] add_ln194_11_fu_1605_p2;
wire   [6:0] add_ln194_12_fu_1615_p2;
wire   [7:0] empty_54_fu_1626_p2;
wire   [6:0] add_ln194_13_fu_1651_p2;
wire   [7:0] add_ln194_14_fu_1665_p2;
wire   [6:0] lshr_ln194_s_fu_1670_p4;
wire   [6:0] add_ln194_15_fu_1685_p2;
wire   [7:0] empty_55_fu_1695_p2;
wire   [6:0] add_ln194_16_fu_1723_p2;
wire   [7:0] add_ln194_17_fu_1738_p2;
wire   [6:0] lshr_ln194_11_fu_1743_p4;
wire   [6:0] add_ln194_18_fu_1758_p2;
wire   [6:0] add_ln194_19_fu_1778_p2;
wire   [6:0] add_ln194_20_fu_1789_p2;
wire   [7:0] empty_56_fu_1799_p2;
wire   [7:0] add_ln194_21_fu_1829_p2;
wire   [6:0] lshr_ln194_13_fu_1834_p4;
wire   [6:0] add_ln194_22_fu_1849_p2;
wire   [6:0] add_ln194_23_fu_1859_p2;
wire   [7:0] empty_57_fu_1870_p2;
wire   [6:0] add_ln194_24_fu_1895_p2;
wire   [7:0] add_ln194_25_fu_1909_p2;
wire   [6:0] lshr_ln194_15_fu_1914_p4;
wire   [6:0] add_ln194_26_fu_1929_p2;
wire   [6:0] add_ln194_27_fu_1949_p2;
wire   [6:0] add_ln194_28_fu_1960_p2;
wire   [7:0] empty_58_fu_1970_p2;
wire   [7:0] add_ln194_29_fu_2000_p2;
wire   [6:0] lshr_ln194_17_fu_2005_p4;
wire   [6:0] add_ln194_30_fu_2020_p2;
wire   [6:0] add_ln194_31_fu_2030_p2;
wire   [7:0] empty_59_fu_2041_p2;
wire   [6:0] add_ln194_32_fu_2066_p2;
wire   [7:0] add_ln194_33_fu_2080_p2;
wire   [6:0] lshr_ln194_19_fu_2085_p4;
wire   [6:0] add_ln194_34_fu_2100_p2;
wire   [6:0] add_ln194_35_fu_2120_p2;
wire   [6:0] add_ln194_36_fu_2131_p2;
wire   [7:0] empty_60_fu_2141_p2;
wire   [7:0] add_ln194_37_fu_2171_p2;
wire   [6:0] lshr_ln194_21_fu_2176_p4;
wire   [6:0] add_ln194_38_fu_2191_p2;
wire   [6:0] add_ln194_39_fu_2201_p2;
wire   [7:0] empty_61_fu_2212_p2;
wire   [6:0] add_ln194_40_fu_2237_p2;
wire   [7:0] add_ln194_41_fu_2251_p2;
wire   [6:0] lshr_ln194_23_fu_2256_p4;
wire   [6:0] add_ln194_42_fu_2271_p2;
wire   [6:0] add_ln194_43_fu_2291_p2;
wire   [6:0] add_ln194_44_fu_2302_p2;
wire   [7:0] empty_62_fu_2312_p2;
wire   [7:0] add_ln194_45_fu_2342_p2;
wire   [6:0] lshr_ln194_25_fu_2347_p4;
wire   [6:0] add_ln194_46_fu_2362_p2;
wire   [6:0] add_ln194_47_fu_2372_p2;
wire   [7:0] empty_63_fu_2383_p2;
wire   [6:0] add_ln194_48_fu_2408_p2;
wire   [7:0] add_ln194_49_fu_2422_p2;
wire   [6:0] lshr_ln194_27_fu_2427_p4;
wire   [6:0] add_ln194_50_fu_2442_p2;
wire   [6:0] add_ln194_51_fu_2462_p2;
wire   [6:0] add_ln194_52_fu_2473_p2;
wire   [7:0] empty_64_fu_2483_p2;
wire   [7:0] add_ln194_53_fu_2513_p2;
wire   [6:0] lshr_ln194_29_fu_2518_p4;
wire   [6:0] add_ln194_54_fu_2533_p2;
wire   [6:0] add_ln194_55_fu_2543_p2;
wire   [7:0] empty_65_fu_2554_p2;
wire   [7:0] add_ln194_57_fu_2569_p2;
wire   [6:0] add_ln194_56_fu_2594_p2;
wire   [6:0] add_ln194_58_fu_2612_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [47:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
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
wire    ap_block_pp0_stage24_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 48'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_190 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U295(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_984_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_984_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U296(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_988_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_988_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage47),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage47)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage47_subdone) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage47_subdone) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_190 <= 7'd0;
    end else if (((tmp_reg_3336 == 1'd0) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        i_fu_190 <= add_ln192_fu_2848_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1000 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1000 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1005 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1005 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1010 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1010 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1015 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1015 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1020 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_1020 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_1025 <= weights3_0_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1025 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1030 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_1030 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1035 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_1035 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        reg_1040 <= weights3_1_q0;
    end else if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1040 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_1045 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        reg_1045 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            reg_1050 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1050 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            reg_1055 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1055 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            reg_1060 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1060 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            reg_1065 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1065 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            reg_1070 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_1070 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            reg_1075 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_1075 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            reg_1080 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_1080 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            reg_1085 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_1085 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            reg_1094 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            reg_1094 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            reg_1099 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_1099 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            reg_1104 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_1104 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage47_11001) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        div213_23_1_reg_4699 <= grp_fu_984_p2;
        div213_23_2_reg_4704 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div213_24_1_reg_4714 <= grp_fu_988_p2;
        div213_24_reg_4709 <= grp_fu_984_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_24_2_reg_4719 <= grp_fu_984_p2;
        div213_25_reg_4724 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_25_1_reg_4729 <= grp_fu_984_p2;
        div213_25_2_reg_4734 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_26_1_reg_4744 <= grp_fu_988_p2;
        div213_26_reg_4739 <= grp_fu_984_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_26_2_reg_4749 <= grp_fu_984_p2;
        div213_27_reg_4754 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_27_1_reg_4759 <= grp_fu_984_p2;
        div213_27_2_reg_4764 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div213_28_1_reg_4774 <= grp_fu_988_p2;
        div213_28_reg_4769 <= grp_fu_984_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div213_28_2_reg_4779 <= grp_fu_984_p2;
        div213_29_reg_4784 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div213_29_1_reg_4789 <= grp_fu_984_p2;
        div213_29_2_reg_4794 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        div213_30_1_reg_4804 <= grp_fu_988_p2;
        div213_30_reg_4799 <= grp_fu_984_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        div213_30_2_reg_4809 <= grp_fu_984_p2;
        div213_31_reg_4814 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_31_1_reg_4819 <= grp_fu_984_p2;
        div213_31_2_reg_4824 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        div213_3_1_reg_4644 <= grp_fu_988_p2;
        div213_3_reg_4639 <= grp_fu_984_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        div213_3_2_reg_4649 <= grp_fu_984_p2;
        div213_4_reg_4654 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        div213_4_1_reg_4659 <= grp_fu_984_p2;
        div213_5_reg_4664 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        div213_5_1_reg_4669 <= grp_fu_984_p2;
        div213_5_2_reg_4674 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        div213_6_1_reg_4684 <= grp_fu_988_p2;
        div213_6_reg_4679 <= grp_fu_984_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        div213_6_2_reg_4689 <= grp_fu_984_p2;
        div213_7_reg_4694 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_3345[7 : 1] <= empty_fu_1260_p2[7 : 1];
        i_4_reg_3331 <= ap_sig_allocacmp_i_4;
        lshr_ln194_1_reg_3380 <= {{empty_fu_1260_p2[7:1]}};
        tmp_34_reg_3385 <= {{sub_ln194_fu_1205_p2[5:2]}};
        tmp_36_reg_3390 <= {{sub_ln194_fu_1205_p2[5:3]}};
        tmp_37_reg_3395 <= {{sub_ln194_fu_1205_p2[5:4]}};
        tmp_reg_3336 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_0_addr_48_reg_3405[5 : 1] <= zext_ln192_fu_1235_p1[5 : 1];
        weights3_0_addr_48_reg_3405_pp0_iter1_reg[5 : 1] <= weights3_0_addr_48_reg_3405[5 : 1];
        weights3_0_addr_reg_3340 <= zext_ln194_fu_1211_p1;
        weights3_0_addr_reg_3340_pp0_iter1_reg <= weights3_0_addr_reg_3340;
        weights3_1_addr_48_reg_3410 <= zext_ln194_1_fu_1276_p1;
        weights3_1_addr_48_reg_3410_pp0_iter1_reg <= weights3_1_addr_48_reg_3410;
        weights3_1_addr_reg_3400 <= zext_ln194_fu_1211_p1;
        weights3_1_addr_reg_3400_pp0_iter1_reg <= weights3_1_addr_reg_3400;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln194_10_reg_3625 <= {{empty_55_fu_1695_p2[7:1]}};
        weights3_0_addr_60_reg_3641[6 : 2] <= add_ln194_13_cast_fu_1656_p1[6 : 2];
        weights3_0_addr_60_reg_3641_pp0_iter1_reg[6 : 2] <= weights3_0_addr_60_reg_3641[6 : 2];
        weights3_0_addr_61_reg_3651 <= zext_ln194_19_fu_1680_p1;
        weights3_0_addr_61_reg_3651_pp0_iter1_reg <= weights3_0_addr_61_reg_3651;
        weights3_1_addr_60_reg_3646 <= zext_ln194_18_fu_1661_p1;
        weights3_1_addr_60_reg_3646_pp0_iter1_reg <= weights3_1_addr_60_reg_3646;
        weights3_1_addr_61_reg_3656 <= zext_ln194_20_fu_1690_p1;
        weights3_1_addr_61_reg_3656_pp0_iter1_reg <= weights3_1_addr_61_reg_3656;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln194_12_reg_3715 <= {{empty_56_fu_1799_p2[7:1]}};
        weights3_0_addr_65_reg_3730[6 : 4] <= zext_ln194_26_fu_1783_p1[6 : 4];
        weights3_0_addr_65_reg_3730_pp0_iter1_reg[6 : 4] <= weights3_0_addr_65_reg_3730[6 : 4];
        weights3_0_addr_66_reg_3740[6 : 4] <= add_ln194_20_cast_fu_1794_p1[6 : 4];
        weights3_0_addr_66_reg_3740_pp0_iter1_reg[6 : 4] <= weights3_0_addr_66_reg_3740[6 : 4];
        weights3_1_addr_65_reg_3735[6 : 4] <= zext_ln194_26_fu_1783_p1[6 : 4];
        weights3_1_addr_65_reg_3735_pp0_iter1_reg[6 : 4] <= weights3_1_addr_65_reg_3735[6 : 4];
        weights3_1_addr_66_reg_3745 <= zext_ln194_27_fu_1814_p1;
        weights3_1_addr_66_reg_3745_pp0_iter1_reg <= weights3_1_addr_66_reg_3745;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln194_14_reg_3750 <= {{empty_57_fu_1870_p2[7:1]}};
        weights3_0_addr_67_reg_3766 <= zext_ln194_28_fu_1844_p1;
        weights3_0_addr_67_reg_3766_pp0_iter1_reg <= weights3_0_addr_67_reg_3766;
        weights3_0_addr_68_reg_3776[6 : 4] <= zext_ln194_30_fu_1864_p1[6 : 4];
        weights3_0_addr_68_reg_3776_pp0_iter1_reg[6 : 4] <= weights3_0_addr_68_reg_3776[6 : 4];
        weights3_1_addr_67_reg_3771 <= zext_ln194_29_fu_1854_p1;
        weights3_1_addr_67_reg_3771_pp0_iter1_reg <= weights3_1_addr_67_reg_3771;
        weights3_1_addr_68_reg_3781[6 : 4] <= zext_ln194_30_fu_1864_p1[6 : 4];
        weights3_1_addr_68_reg_3781_pp0_iter1_reg[6 : 4] <= weights3_1_addr_68_reg_3781[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln194_16_reg_3818 <= {{empty_58_fu_1970_p2[7:1]}};
        weights3_0_addr_71_reg_3843[6 : 4] <= zext_ln194_34_fu_1954_p1[6 : 4];
        weights3_0_addr_71_reg_3843_pp0_iter1_reg[6 : 4] <= weights3_0_addr_71_reg_3843[6 : 4];
        weights3_0_addr_72_reg_3853[6 : 4] <= add_ln194_28_cast_fu_1965_p1[6 : 4];
        weights3_0_addr_72_reg_3853_pp0_iter1_reg[6 : 4] <= weights3_0_addr_72_reg_3853[6 : 4];
        weights3_1_addr_71_reg_3848[6 : 4] <= zext_ln194_34_fu_1954_p1[6 : 4];
        weights3_1_addr_71_reg_3848_pp0_iter1_reg[6 : 4] <= weights3_1_addr_71_reg_3848[6 : 4];
        weights3_1_addr_72_reg_3859 <= zext_ln194_35_fu_1985_p1;
        weights3_1_addr_72_reg_3859_pp0_iter1_reg <= weights3_1_addr_72_reg_3859;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        lshr_ln194_18_reg_3865 <= {{empty_59_fu_2041_p2[7:1]}};
        weights3_0_addr_73_reg_3891 <= zext_ln194_36_fu_2015_p1;
        weights3_0_addr_73_reg_3891_pp0_iter1_reg <= weights3_0_addr_73_reg_3891;
        weights3_0_addr_74_reg_3901[6 : 4] <= zext_ln194_38_fu_2035_p1[6 : 4];
        weights3_0_addr_74_reg_3901_pp0_iter1_reg[6 : 4] <= weights3_0_addr_74_reg_3901[6 : 4];
        weights3_1_addr_73_reg_3896 <= zext_ln194_37_fu_2025_p1;
        weights3_1_addr_73_reg_3896_pp0_iter1_reg <= weights3_1_addr_73_reg_3896;
        weights3_1_addr_74_reg_3907[6 : 4] <= zext_ln194_38_fu_2035_p1[6 : 4];
        weights3_1_addr_74_reg_3907_pp0_iter1_reg[6 : 4] <= weights3_1_addr_74_reg_3907[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        lshr_ln194_20_reg_3955 <= {{empty_60_fu_2141_p2[7:1]}};
        weights3_0_addr_77_reg_3980[6 : 4] <= zext_ln194_42_fu_2125_p1[6 : 4];
        weights3_0_addr_77_reg_3980_pp0_iter1_reg[6 : 4] <= weights3_0_addr_77_reg_3980[6 : 4];
        weights3_0_addr_78_reg_3990[6 : 4] <= add_ln194_36_cast_fu_2136_p1[6 : 4];
        weights3_0_addr_78_reg_3990_pp0_iter1_reg[6 : 4] <= weights3_0_addr_78_reg_3990[6 : 4];
        weights3_1_addr_77_reg_3985[6 : 4] <= zext_ln194_42_fu_2125_p1[6 : 4];
        weights3_1_addr_77_reg_3985_pp0_iter1_reg[6 : 4] <= weights3_1_addr_77_reg_3985[6 : 4];
        weights3_1_addr_78_reg_3996 <= zext_ln194_43_fu_2156_p1;
        weights3_1_addr_78_reg_3996_pp0_iter1_reg <= weights3_1_addr_78_reg_3996;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        lshr_ln194_22_reg_4002 <= {{empty_61_fu_2212_p2[7:1]}};
        weights3_0_addr_79_reg_4028 <= zext_ln194_44_fu_2186_p1;
        weights3_0_addr_79_reg_4028_pp0_iter1_reg <= weights3_0_addr_79_reg_4028;
        weights3_0_addr_80_reg_4038[6 : 4] <= zext_ln194_46_fu_2206_p1[6 : 4];
        weights3_0_addr_80_reg_4038_pp0_iter1_reg[6 : 4] <= weights3_0_addr_80_reg_4038[6 : 4];
        weights3_1_addr_79_reg_4033 <= zext_ln194_45_fu_2196_p1;
        weights3_1_addr_79_reg_4033_pp0_iter1_reg <= weights3_1_addr_79_reg_4033;
        weights3_1_addr_80_reg_4044[6 : 4] <= zext_ln194_46_fu_2206_p1[6 : 4];
        weights3_1_addr_80_reg_4044_pp0_iter1_reg[6 : 4] <= weights3_1_addr_80_reg_4044[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        lshr_ln194_24_reg_4090 <= {{empty_62_fu_2312_p2[7:1]}};
        weights3_0_addr_83_reg_4115[6 : 4] <= zext_ln194_50_fu_2296_p1[6 : 4];
        weights3_0_addr_83_reg_4115_pp0_iter1_reg[6 : 4] <= weights3_0_addr_83_reg_4115[6 : 4];
        weights3_0_addr_83_reg_4115_pp0_iter2_reg[6 : 4] <= weights3_0_addr_83_reg_4115_pp0_iter1_reg[6 : 4];
        weights3_0_addr_84_reg_4127[6 : 4] <= add_ln194_44_cast_fu_2307_p1[6 : 4];
        weights3_0_addr_84_reg_4127_pp0_iter1_reg[6 : 4] <= weights3_0_addr_84_reg_4127[6 : 4];
        weights3_0_addr_84_reg_4127_pp0_iter2_reg[6 : 4] <= weights3_0_addr_84_reg_4127_pp0_iter1_reg[6 : 4];
        weights3_1_addr_83_reg_4121[6 : 4] <= zext_ln194_50_fu_2296_p1[6 : 4];
        weights3_1_addr_83_reg_4121_pp0_iter1_reg[6 : 4] <= weights3_1_addr_83_reg_4121[6 : 4];
        weights3_1_addr_83_reg_4121_pp0_iter2_reg[6 : 4] <= weights3_1_addr_83_reg_4121_pp0_iter1_reg[6 : 4];
        weights3_1_addr_84_reg_4132 <= zext_ln194_51_fu_2327_p1;
        weights3_1_addr_84_reg_4132_pp0_iter1_reg <= weights3_1_addr_84_reg_4132;
        weights3_1_addr_84_reg_4132_pp0_iter2_reg <= weights3_1_addr_84_reg_4132_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        lshr_ln194_26_reg_4137 <= {{empty_63_fu_2383_p2[7:1]}};
        weights3_0_addr_85_reg_4163 <= zext_ln194_52_fu_2357_p1;
        weights3_0_addr_85_reg_4163_pp0_iter1_reg <= weights3_0_addr_85_reg_4163;
        weights3_0_addr_85_reg_4163_pp0_iter2_reg <= weights3_0_addr_85_reg_4163_pp0_iter1_reg;
        weights3_0_addr_86_reg_4175[6 : 4] <= zext_ln194_54_fu_2377_p1[6 : 4];
        weights3_0_addr_86_reg_4175_pp0_iter1_reg[6 : 4] <= weights3_0_addr_86_reg_4175[6 : 4];
        weights3_0_addr_86_reg_4175_pp0_iter2_reg[6 : 4] <= weights3_0_addr_86_reg_4175_pp0_iter1_reg[6 : 4];
        weights3_1_addr_85_reg_4169 <= zext_ln194_53_fu_2367_p1;
        weights3_1_addr_85_reg_4169_pp0_iter1_reg <= weights3_1_addr_85_reg_4169;
        weights3_1_addr_85_reg_4169_pp0_iter2_reg <= weights3_1_addr_85_reg_4169_pp0_iter1_reg;
        weights3_1_addr_86_reg_4180[6 : 4] <= zext_ln194_54_fu_2377_p1[6 : 4];
        weights3_1_addr_86_reg_4180_pp0_iter1_reg[6 : 4] <= weights3_1_addr_86_reg_4180[6 : 4];
        weights3_1_addr_86_reg_4180_pp0_iter2_reg[6 : 4] <= weights3_1_addr_86_reg_4180_pp0_iter1_reg[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        lshr_ln194_28_reg_4227 <= {{empty_64_fu_2483_p2[7:1]}};
        weights3_0_addr_89_reg_4252[6 : 4] <= zext_ln194_58_fu_2467_p1[6 : 4];
        weights3_0_addr_89_reg_4252_pp0_iter1_reg[6 : 4] <= weights3_0_addr_89_reg_4252[6 : 4];
        weights3_0_addr_89_reg_4252_pp0_iter2_reg[6 : 4] <= weights3_0_addr_89_reg_4252_pp0_iter1_reg[6 : 4];
        weights3_0_addr_90_reg_4264[6 : 4] <= add_ln194_52_cast_fu_2478_p1[6 : 4];
        weights3_0_addr_90_reg_4264_pp0_iter1_reg[6 : 4] <= weights3_0_addr_90_reg_4264[6 : 4];
        weights3_0_addr_90_reg_4264_pp0_iter2_reg[6 : 4] <= weights3_0_addr_90_reg_4264_pp0_iter1_reg[6 : 4];
        weights3_1_addr_89_reg_4258[6 : 4] <= zext_ln194_58_fu_2467_p1[6 : 4];
        weights3_1_addr_89_reg_4258_pp0_iter1_reg[6 : 4] <= weights3_1_addr_89_reg_4258[6 : 4];
        weights3_1_addr_89_reg_4258_pp0_iter2_reg[6 : 4] <= weights3_1_addr_89_reg_4258_pp0_iter1_reg[6 : 4];
        weights3_1_addr_90_reg_4269 <= zext_ln194_59_fu_2498_p1;
        weights3_1_addr_90_reg_4269_pp0_iter1_reg <= weights3_1_addr_90_reg_4269;
        weights3_1_addr_90_reg_4269_pp0_iter2_reg <= weights3_1_addr_90_reg_4269_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        lshr_ln194_30_reg_4274 <= {{empty_65_fu_2554_p2[7:1]}};
        lshr_ln194_31_reg_4280 <= {{add_ln194_57_fu_2569_p2[7:1]}};
        weights3_0_addr_91_reg_4305 <= zext_ln194_60_fu_2528_p1;
        weights3_0_addr_91_reg_4305_pp0_iter1_reg <= weights3_0_addr_91_reg_4305;
        weights3_0_addr_91_reg_4305_pp0_iter2_reg <= weights3_0_addr_91_reg_4305_pp0_iter1_reg;
        weights3_0_addr_92_reg_4317[6 : 4] <= zext_ln194_62_fu_2548_p1[6 : 4];
        weights3_0_addr_92_reg_4317_pp0_iter1_reg[6 : 4] <= weights3_0_addr_92_reg_4317[6 : 4];
        weights3_0_addr_92_reg_4317_pp0_iter2_reg[6 : 4] <= weights3_0_addr_92_reg_4317_pp0_iter1_reg[6 : 4];
        weights3_1_addr_91_reg_4311 <= zext_ln194_61_fu_2538_p1;
        weights3_1_addr_91_reg_4311_pp0_iter1_reg <= weights3_1_addr_91_reg_4311;
        weights3_1_addr_91_reg_4311_pp0_iter2_reg <= weights3_1_addr_91_reg_4311_pp0_iter1_reg;
        weights3_1_addr_92_reg_4322[6 : 4] <= zext_ln194_62_fu_2548_p1[6 : 4];
        weights3_1_addr_92_reg_4322_pp0_iter1_reg[6 : 4] <= weights3_1_addr_92_reg_4322[6 : 4];
        weights3_1_addr_92_reg_4322_pp0_iter2_reg[6 : 4] <= weights3_1_addr_92_reg_4322_pp0_iter1_reg[6 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        lshr_ln194_3_reg_3455 <= {{empty_51_fu_1384_p2[7:1]}};
        weights3_0_addr_49_reg_3465 <= zext_ln194_2_fu_1369_p1;
        weights3_0_addr_49_reg_3465_pp0_iter1_reg <= weights3_0_addr_49_reg_3465;
        weights3_1_addr_49_reg_3470 <= zext_ln194_3_fu_1379_p1;
        weights3_1_addr_49_reg_3470_pp0_iter1_reg <= weights3_1_addr_49_reg_3470;
        weights3_1_addr_51_reg_3475 <= zext_ln194_6_fu_1399_p1;
        weights3_1_addr_51_reg_3475_pp0_iter1_reg <= weights3_1_addr_51_reg_3475;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln194_5_reg_3488 <= {{empty_52_fu_1465_p2[7:1]}};
        weights3_0_addr_51_reg_3504[6 : 2] <= add_ln194_2_cast_fu_1418_p1[6 : 2];
        weights3_0_addr_51_reg_3504_pp0_iter1_reg[6 : 2] <= weights3_0_addr_51_reg_3504[6 : 2];
        weights3_0_addr_52_reg_3509 <= zext_ln194_7_fu_1438_p1;
        weights3_0_addr_52_reg_3509_pp0_iter1_reg <= weights3_0_addr_52_reg_3509;
        weights3_0_addr_53_reg_3519[6 : 2] <= zext_ln194_9_fu_1459_p1[6 : 2];
        weights3_0_addr_53_reg_3519_pp0_iter1_reg[6 : 2] <= weights3_0_addr_53_reg_3519[6 : 2];
        weights3_1_addr_52_reg_3514 <= zext_ln194_8_fu_1448_p1;
        weights3_1_addr_52_reg_3514_pp0_iter1_reg <= weights3_1_addr_52_reg_3514;
        weights3_1_addr_53_reg_3524[6 : 2] <= zext_ln194_9_fu_1459_p1[6 : 2];
        weights3_1_addr_53_reg_3524_pp0_iter1_reg[6 : 2] <= weights3_1_addr_53_reg_3524[6 : 2];
        zext_ln194_4_reg_3480[5 : 2] <= zext_ln194_4_fu_1409_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln194_7_reg_3554 <= {{empty_53_fu_1555_p2[7:1]}};
        weights3_0_addr_56_reg_3564[6 : 2] <= zext_ln194_13_fu_1539_p1[6 : 2];
        weights3_0_addr_56_reg_3564_pp0_iter1_reg[6 : 2] <= weights3_0_addr_56_reg_3564[6 : 2];
        weights3_0_addr_57_reg_3574[6 : 2] <= add_ln194_9_cast_fu_1550_p1[6 : 2];
        weights3_0_addr_57_reg_3574_pp0_iter1_reg[6 : 2] <= weights3_0_addr_57_reg_3574[6 : 2];
        weights3_1_addr_56_reg_3569[6 : 2] <= zext_ln194_13_fu_1539_p1[6 : 2];
        weights3_1_addr_56_reg_3569_pp0_iter1_reg[6 : 2] <= weights3_1_addr_56_reg_3569[6 : 2];
        weights3_1_addr_57_reg_3579 <= zext_ln194_14_fu_1570_p1;
        weights3_1_addr_57_reg_3579_pp0_iter1_reg <= weights3_1_addr_57_reg_3579;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln194_9_reg_3589 <= {{empty_54_fu_1626_p2[7:1]}};
        weights3_0_addr_58_reg_3600 <= zext_ln194_15_fu_1600_p1;
        weights3_0_addr_58_reg_3600_pp0_iter1_reg <= weights3_0_addr_58_reg_3600;
        weights3_0_addr_59_reg_3610[6 : 2] <= zext_ln194_17_fu_1620_p1[6 : 2];
        weights3_0_addr_59_reg_3610_pp0_iter1_reg[6 : 2] <= weights3_0_addr_59_reg_3610[6 : 2];
        weights3_1_addr_58_reg_3605 <= zext_ln194_16_fu_1610_p1;
        weights3_1_addr_58_reg_3605_pp0_iter1_reg <= weights3_1_addr_58_reg_3605;
        weights3_1_addr_59_reg_3615[6 : 2] <= zext_ln194_17_fu_1620_p1[6 : 2];
        weights3_1_addr_59_reg_3615_pp0_iter1_reg[6 : 2] <= weights3_1_addr_59_reg_3615[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        or_ln194_1_reg_3415[5 : 2] <= or_ln194_1_fu_1311_p3[5 : 2];
        or_ln194_3_reg_3420[5 : 4] <= or_ln194_3_fu_1336_p3[5 : 4];
        weights3_0_addr_50_reg_3425[5 : 2] <= zext_ln194_5_fu_1318_p1[5 : 2];
        weights3_0_addr_50_reg_3425_pp0_iter1_reg[5 : 2] <= weights3_0_addr_50_reg_3425[5 : 2];
        weights3_0_addr_54_reg_3435[5 : 3] <= or_ln194_2_cast_fu_1331_p1[5 : 3];
        weights3_0_addr_54_reg_3435_pp0_iter1_reg[5 : 3] <= weights3_0_addr_54_reg_3435[5 : 3];
        weights3_0_addr_62_reg_3440[5 : 4] <= zext_ln194_22_fu_1343_p1[5 : 4];
        weights3_0_addr_62_reg_3440_pp0_iter1_reg[5 : 4] <= weights3_0_addr_62_reg_3440[5 : 4];
        weights3_1_addr_50_reg_3430[5 : 2] <= zext_ln194_5_fu_1318_p1[5 : 2];
        weights3_1_addr_50_reg_3430_pp0_iter1_reg[5 : 2] <= weights3_1_addr_50_reg_3430[5 : 2];
        weights3_1_addr_62_reg_3445[5 : 4] <= zext_ln194_22_fu_1343_p1[5 : 4];
        weights3_1_addr_62_reg_3445_pp0_iter1_reg[5 : 4] <= weights3_1_addr_62_reg_3445[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1090 <= weights3_0_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_1109 <= grp_fu_984_p2;
        reg_1113 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_1117 <= grp_fu_984_p2;
        reg_1121 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_1125 <= grp_fu_984_p2;
        reg_1129 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_1133 <= grp_fu_984_p2;
        reg_1137 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_1141 <= grp_fu_984_p2;
        reg_1145 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_1149 <= grp_fu_984_p2;
        reg_1153 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_992 <= weights3_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_996 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_addr_55_reg_3544 <= zext_ln194_11_fu_1509_p1;
        weights3_0_addr_55_reg_3544_pp0_iter1_reg <= weights3_0_addr_55_reg_3544;
        weights3_1_addr_54_reg_3539 <= zext_ln194_10_fu_1490_p1;
        weights3_1_addr_54_reg_3539_pp0_iter1_reg <= weights3_1_addr_54_reg_3539;
        weights3_1_addr_55_reg_3549 <= zext_ln194_12_fu_1519_p1;
        weights3_1_addr_55_reg_3549_pp0_iter1_reg <= weights3_1_addr_55_reg_3549;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_addr_63_reg_3695[6 : 4] <= add_ln194_16_cast_fu_1729_p1[6 : 4];
        weights3_0_addr_63_reg_3695_pp0_iter1_reg[6 : 4] <= weights3_0_addr_63_reg_3695[6 : 4];
        weights3_0_addr_64_reg_3705 <= zext_ln194_24_fu_1753_p1;
        weights3_0_addr_64_reg_3705_pp0_iter1_reg <= weights3_0_addr_64_reg_3705;
        weights3_1_addr_63_reg_3700 <= zext_ln194_23_fu_1734_p1;
        weights3_1_addr_63_reg_3700_pp0_iter1_reg <= weights3_1_addr_63_reg_3700;
        weights3_1_addr_64_reg_3710 <= zext_ln194_25_fu_1763_p1;
        weights3_1_addr_64_reg_3710_pp0_iter1_reg <= weights3_1_addr_64_reg_3710;
        zext_ln194_21_reg_3661[5 : 4] <= zext_ln194_21_fu_1720_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_addr_69_reg_3796[6 : 4] <= add_ln194_24_cast_fu_1900_p1[6 : 4];
        weights3_0_addr_69_reg_3796_pp0_iter1_reg[6 : 4] <= weights3_0_addr_69_reg_3796[6 : 4];
        weights3_0_addr_70_reg_3806 <= zext_ln194_32_fu_1924_p1;
        weights3_0_addr_70_reg_3806_pp0_iter1_reg <= weights3_0_addr_70_reg_3806;
        weights3_1_addr_69_reg_3801 <= zext_ln194_31_fu_1905_p1;
        weights3_1_addr_69_reg_3801_pp0_iter1_reg <= weights3_1_addr_69_reg_3801;
        weights3_1_addr_70_reg_3812 <= zext_ln194_33_fu_1934_p1;
        weights3_1_addr_70_reg_3812_pp0_iter1_reg <= weights3_1_addr_70_reg_3812;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_addr_75_reg_3933[6 : 4] <= add_ln194_32_cast_fu_2071_p1[6 : 4];
        weights3_0_addr_75_reg_3933_pp0_iter1_reg[6 : 4] <= weights3_0_addr_75_reg_3933[6 : 4];
        weights3_0_addr_76_reg_3943 <= zext_ln194_40_fu_2095_p1;
        weights3_0_addr_76_reg_3943_pp0_iter1_reg <= weights3_0_addr_76_reg_3943;
        weights3_1_addr_75_reg_3938 <= zext_ln194_39_fu_2076_p1;
        weights3_1_addr_75_reg_3938_pp0_iter1_reg <= weights3_1_addr_75_reg_3938;
        weights3_1_addr_76_reg_3949 <= zext_ln194_41_fu_2105_p1;
        weights3_1_addr_76_reg_3949_pp0_iter1_reg <= weights3_1_addr_76_reg_3949;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_addr_81_reg_4070[6 : 4] <= add_ln194_40_cast_fu_2242_p1[6 : 4];
        weights3_0_addr_81_reg_4070_pp0_iter1_reg[6 : 4] <= weights3_0_addr_81_reg_4070[6 : 4];
        weights3_0_addr_82_reg_4080 <= zext_ln194_48_fu_2266_p1;
        weights3_0_addr_82_reg_4080_pp0_iter1_reg <= weights3_0_addr_82_reg_4080;
        weights3_0_addr_82_reg_4080_pp0_iter2_reg <= weights3_0_addr_82_reg_4080_pp0_iter1_reg;
        weights3_1_addr_81_reg_4075 <= zext_ln194_47_fu_2247_p1;
        weights3_1_addr_81_reg_4075_pp0_iter1_reg <= weights3_1_addr_81_reg_4075;
        weights3_1_addr_82_reg_4085 <= zext_ln194_49_fu_2276_p1;
        weights3_1_addr_82_reg_4085_pp0_iter1_reg <= weights3_1_addr_82_reg_4085;
        weights3_1_addr_82_reg_4085_pp0_iter2_reg <= weights3_1_addr_82_reg_4085_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_addr_87_reg_4205[6 : 4] <= add_ln194_48_cast_fu_2413_p1[6 : 4];
        weights3_0_addr_87_reg_4205_pp0_iter1_reg[6 : 4] <= weights3_0_addr_87_reg_4205[6 : 4];
        weights3_0_addr_87_reg_4205_pp0_iter2_reg[6 : 4] <= weights3_0_addr_87_reg_4205_pp0_iter1_reg[6 : 4];
        weights3_0_addr_88_reg_4217 <= zext_ln194_56_fu_2437_p1;
        weights3_0_addr_88_reg_4217_pp0_iter1_reg <= weights3_0_addr_88_reg_4217;
        weights3_0_addr_88_reg_4217_pp0_iter2_reg <= weights3_0_addr_88_reg_4217_pp0_iter1_reg;
        weights3_1_addr_87_reg_4211 <= zext_ln194_55_fu_2418_p1;
        weights3_1_addr_87_reg_4211_pp0_iter1_reg <= weights3_1_addr_87_reg_4211;
        weights3_1_addr_87_reg_4211_pp0_iter2_reg <= weights3_1_addr_87_reg_4211_pp0_iter1_reg;
        weights3_1_addr_88_reg_4222 <= zext_ln194_57_fu_2447_p1;
        weights3_1_addr_88_reg_4222_pp0_iter1_reg <= weights3_1_addr_88_reg_4222;
        weights3_1_addr_88_reg_4222_pp0_iter2_reg <= weights3_1_addr_88_reg_4222_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_addr_93_reg_4347[6 : 4] <= add_ln194_56_cast_fu_2599_p1[6 : 4];
        weights3_0_addr_93_reg_4347_pp0_iter1_reg[6 : 4] <= weights3_0_addr_93_reg_4347[6 : 4];
        weights3_0_addr_93_reg_4347_pp0_iter2_reg[6 : 4] <= weights3_0_addr_93_reg_4347_pp0_iter1_reg[6 : 4];
        weights3_0_addr_94_reg_4359 <= zext_ln194_64_fu_2608_p1;
        weights3_0_addr_94_reg_4359_pp0_iter1_reg <= weights3_0_addr_94_reg_4359;
        weights3_0_addr_94_reg_4359_pp0_iter2_reg <= weights3_0_addr_94_reg_4359_pp0_iter1_reg;
        weights3_1_addr_93_reg_4353 <= zext_ln194_63_fu_2604_p1;
        weights3_1_addr_93_reg_4353_pp0_iter1_reg <= weights3_1_addr_93_reg_4353;
        weights3_1_addr_93_reg_4353_pp0_iter2_reg <= weights3_1_addr_93_reg_4353_pp0_iter1_reg;
        weights3_1_addr_94_reg_4364 <= zext_ln194_65_fu_2617_p1;
        weights3_1_addr_94_reg_4364_pp0_iter1_reg <= weights3_1_addr_94_reg_4364;
        weights3_1_addr_94_reg_4364_pp0_iter2_reg <= weights3_1_addr_94_reg_4364_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_load_70_reg_3833 <= weights3_0_q0;
        weights3_1_load_70_reg_3838 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_load_72_reg_3881 <= weights3_0_q0;
        weights3_1_load_72_reg_3886 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_load_74_reg_3923 <= weights3_0_q0;
        weights3_1_load_74_reg_3928 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_load_76_reg_3970 <= weights3_0_q0;
        weights3_1_load_76_reg_3975 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_load_78_reg_4018 <= weights3_0_q0;
        weights3_1_load_78_reg_4023 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_load_80_reg_4060 <= weights3_0_q0;
        weights3_1_load_80_reg_4065 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_load_82_reg_4105 <= weights3_0_q0;
        weights3_1_load_82_reg_4110 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_load_84_reg_4153 <= weights3_0_q0;
        weights3_1_load_84_reg_4158 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_load_86_reg_4195 <= weights3_0_q0;
        weights3_1_load_86_reg_4200 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_load_88_reg_4242 <= weights3_0_q0;
        weights3_1_load_88_reg_4247 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_load_90_reg_4295 <= weights3_0_q0;
        weights3_1_load_90_reg_4300 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_load_92_reg_4337 <= weights3_0_q0;
        weights3_1_load_92_reg_4342 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_0_load_94_reg_4379 <= weights3_0_q0;
        weights3_1_load_94_reg_4384 <= weights3_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_3336 == 1'd1) & (1'b0 == ap_block_pp0_stage47_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_condition_exit_pp0_iter0_stage47 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage47 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_984_p0 = bitcast_ln194_94_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_984_p0 = bitcast_ln194_92_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        grp_fu_984_p0 = bitcast_ln194_90_fu_2840_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        grp_fu_984_p0 = bitcast_ln194_88_fu_2830_p1;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        grp_fu_984_p0 = bitcast_ln194_86_fu_2822_p1;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        grp_fu_984_p0 = bitcast_ln194_84_fu_2812_p1;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        grp_fu_984_p0 = bitcast_ln194_82_fu_2804_p1;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        grp_fu_984_p0 = bitcast_ln194_80_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        grp_fu_984_p0 = bitcast_ln194_78_fu_2786_p1;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        grp_fu_984_p0 = bitcast_ln194_76_fu_2776_p1;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        grp_fu_984_p0 = bitcast_ln194_74_fu_2768_p1;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        grp_fu_984_p0 = bitcast_ln194_72_fu_2758_p1;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        grp_fu_984_p0 = bitcast_ln194_70_fu_2750_p1;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        grp_fu_984_p0 = bitcast_ln194_68_fu_2740_p1;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        grp_fu_984_p0 = bitcast_ln194_66_fu_2732_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        grp_fu_984_p0 = bitcast_ln194_64_fu_2722_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        grp_fu_984_p0 = bitcast_ln194_62_fu_2714_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_984_p0 = bitcast_ln194_60_fu_2704_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_984_p0 = bitcast_ln194_58_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_984_p0 = bitcast_ln194_56_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_984_p0 = bitcast_ln194_54_fu_2678_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_984_p0 = bitcast_ln194_52_fu_2668_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_984_p0 = bitcast_ln194_50_fu_2660_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_984_p0 = bitcast_ln194_48_fu_2650_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_984_p0 = bitcast_ln194_46_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_984_p0 = bitcast_ln194_44_fu_2632_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_984_p0 = bitcast_ln194_42_fu_2622_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_984_p0 = bitcast_ln194_40_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_984_p0 = bitcast_ln194_38_fu_2503_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_984_p0 = bitcast_ln194_36_fu_2452_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_984_p0 = bitcast_ln194_34_fu_2398_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_984_p0 = bitcast_ln194_32_fu_2332_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_984_p0 = bitcast_ln194_28_fu_2281_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_984_p0 = bitcast_ln194_26_fu_2227_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_984_p0 = bitcast_ln194_24_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_984_p0 = bitcast_ln194_22_fu_2110_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_984_p0 = bitcast_ln194_20_fu_2056_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_984_p0 = bitcast_ln194_18_fu_1990_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_984_p0 = bitcast_ln194_16_fu_1939_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_984_p0 = bitcast_ln194_13_fu_1885_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_984_p0 = bitcast_ln194_11_fu_1819_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_984_p0 = bitcast_ln194_9_fu_1768_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_984_p0 = bitcast_ln194_5_fu_1710_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_984_p0 = bitcast_ln194_4_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_984_p0 = bitcast_ln194_14_fu_1575_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_984_p0 = bitcast_ln194_6_fu_1524_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_984_p0 = bitcast_ln194_2_fu_1480_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_984_p0 = bitcast_ln194_fu_1349_p1;
    end else begin
        grp_fu_984_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_988_p0 = bitcast_ln194_95_fu_2872_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_988_p0 = bitcast_ln194_93_fu_2863_p1;
    end else if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        grp_fu_988_p0 = bitcast_ln194_91_fu_2844_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        grp_fu_988_p0 = bitcast_ln194_89_fu_2835_p1;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        grp_fu_988_p0 = bitcast_ln194_87_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        grp_fu_988_p0 = bitcast_ln194_85_fu_2817_p1;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        grp_fu_988_p0 = bitcast_ln194_83_fu_2808_p1;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        grp_fu_988_p0 = bitcast_ln194_81_fu_2799_p1;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        grp_fu_988_p0 = bitcast_ln194_79_fu_2790_p1;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        grp_fu_988_p0 = bitcast_ln194_77_fu_2781_p1;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        grp_fu_988_p0 = bitcast_ln194_75_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        grp_fu_988_p0 = bitcast_ln194_73_fu_2763_p1;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        grp_fu_988_p0 = bitcast_ln194_71_fu_2754_p1;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        grp_fu_988_p0 = bitcast_ln194_69_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        grp_fu_988_p0 = bitcast_ln194_67_fu_2736_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        grp_fu_988_p0 = bitcast_ln194_65_fu_2727_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        grp_fu_988_p0 = bitcast_ln194_63_fu_2718_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_988_p0 = bitcast_ln194_61_fu_2709_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_988_p0 = bitcast_ln194_59_fu_2700_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_988_p0 = bitcast_ln194_57_fu_2691_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_988_p0 = bitcast_ln194_55_fu_2682_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_988_p0 = bitcast_ln194_53_fu_2673_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_988_p0 = bitcast_ln194_51_fu_2664_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_988_p0 = bitcast_ln194_49_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_988_p0 = bitcast_ln194_47_fu_2646_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_988_p0 = bitcast_ln194_45_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_988_p0 = bitcast_ln194_43_fu_2627_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_988_p0 = bitcast_ln194_41_fu_2589_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_988_p0 = bitcast_ln194_39_fu_2508_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_988_p0 = bitcast_ln194_37_fu_2457_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_988_p0 = bitcast_ln194_35_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_988_p0 = bitcast_ln194_33_fu_2337_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_988_p0 = bitcast_ln194_29_fu_2286_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_988_p0 = bitcast_ln194_27_fu_2232_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_988_p0 = bitcast_ln194_25_fu_2166_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_988_p0 = bitcast_ln194_23_fu_2115_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_988_p0 = bitcast_ln194_21_fu_2061_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_988_p0 = bitcast_ln194_19_fu_1995_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_988_p0 = bitcast_ln194_17_fu_1944_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_988_p0 = bitcast_ln194_15_fu_1890_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_988_p0 = bitcast_ln194_12_fu_1824_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_988_p0 = bitcast_ln194_10_fu_1773_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_988_p0 = bitcast_ln194_8_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_988_p0 = bitcast_ln194_31_fu_1646_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_988_p0 = bitcast_ln194_30_fu_1580_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_988_p0 = bitcast_ln194_7_fu_1529_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_988_p0 = bitcast_ln194_3_fu_1485_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_988_p0 = bitcast_ln194_1_fu_1404_p1;
    end else begin
        grp_fu_988_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_0_address0_local = weights3_0_addr_94_reg_4359_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_0_address0_local = weights3_0_addr_93_reg_4347_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_0_address0_local = weights3_0_addr_92_reg_4317_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_0_address0_local = weights3_0_addr_91_reg_4305_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_0_address0_local = weights3_0_addr_90_reg_4264_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_0_address0_local = weights3_0_addr_89_reg_4252_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_0_address0_local = weights3_0_addr_88_reg_4217_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_0_address0_local = weights3_0_addr_87_reg_4205_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_0_address0_local = weights3_0_addr_86_reg_4175_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_0_address0_local = weights3_0_addr_85_reg_4163_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_0_address0_local = weights3_0_addr_84_reg_4127_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_0_address0_local = weights3_0_addr_83_reg_4115_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_0_address0_local = weights3_0_addr_82_reg_4080_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_0_address0_local = weights3_0_addr_68_reg_3776_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_0_address0_local = weights3_0_addr_66_reg_3740_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_0_address0_local = weights3_0_addr_64_reg_3705_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_0_address0_local = weights3_0_addr_61_reg_3651_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_0_address0_local = weights3_0_addr_59_reg_3610_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_0_address0_local = weights3_0_addr_57_reg_3574_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_0_address0_local = weights3_0_addr_55_reg_3544_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_0_address0_local = weights3_0_addr_52_reg_3509_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_0_address0_local = weights3_0_addr_62_reg_3440_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_0_address0_local = weights3_0_addr_54_reg_3435_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_0_address0_local = weights3_0_addr_48_reg_3405_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_address0_local = zext_ln194_64_fu_2608_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_address0_local = zext_ln194_62_fu_2548_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_address0_local = add_ln194_52_cast_fu_2478_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_address0_local = zext_ln194_56_fu_2437_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_address0_local = zext_ln194_54_fu_2377_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_address0_local = add_ln194_44_cast_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_address0_local = zext_ln194_48_fu_2266_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_address0_local = zext_ln194_46_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_address0_local = add_ln194_36_cast_fu_2136_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_address0_local = zext_ln194_40_fu_2095_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_address0_local = zext_ln194_38_fu_2035_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_address0_local = add_ln194_28_cast_fu_1965_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address0_local = zext_ln194_32_fu_1924_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address0_local = zext_ln194_30_fu_1864_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address0_local = add_ln194_20_cast_fu_1794_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address0_local = zext_ln194_24_fu_1753_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address0_local = zext_ln194_19_fu_1680_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address0_local = zext_ln194_17_fu_1620_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address0_local = add_ln194_9_cast_fu_1550_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = zext_ln194_11_fu_1509_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address0_local = zext_ln194_7_fu_1438_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = weights3_0_addr_62_reg_3440;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = or_ln194_2_cast_fu_1331_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = zext_ln192_fu_1235_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_0_address1_local = weights3_0_addr_81_reg_4070_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_0_address1_local = weights3_0_addr_80_reg_4038_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_0_address1_local = weights3_0_addr_79_reg_4028_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_0_address1_local = weights3_0_addr_78_reg_3990_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_0_address1_local = weights3_0_addr_77_reg_3980_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_0_address1_local = weights3_0_addr_76_reg_3943_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_0_address1_local = weights3_0_addr_75_reg_3933_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_0_address1_local = weights3_0_addr_74_reg_3901_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_0_address1_local = weights3_0_addr_73_reg_3891_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_0_address1_local = weights3_0_addr_72_reg_3853_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_0_address1_local = weights3_0_addr_71_reg_3843_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_0_address1_local = weights3_0_addr_70_reg_3806_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_0_address1_local = weights3_0_addr_69_reg_3796_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_0_address1_local = weights3_0_addr_67_reg_3766_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_0_address1_local = weights3_0_addr_65_reg_3730_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_0_address1_local = weights3_0_addr_63_reg_3695_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_0_address1_local = weights3_0_addr_60_reg_3641_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_0_address1_local = weights3_0_addr_58_reg_3600_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_0_address1_local = weights3_0_addr_56_reg_3564_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_0_address1_local = weights3_0_addr_53_reg_3519_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_0_address1_local = weights3_0_addr_51_reg_3504_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_0_address1_local = weights3_0_addr_49_reg_3465_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_0_address1_local = weights3_0_addr_50_reg_3425_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_0_address1_local = weights3_0_addr_reg_3340_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_address1_local = add_ln194_56_cast_fu_2599_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_address1_local = zext_ln194_60_fu_2528_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_address1_local = zext_ln194_58_fu_2467_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_address1_local = add_ln194_48_cast_fu_2413_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_address1_local = zext_ln194_52_fu_2357_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_address1_local = zext_ln194_50_fu_2296_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_address1_local = add_ln194_40_cast_fu_2242_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_address1_local = zext_ln194_44_fu_2186_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_address1_local = zext_ln194_42_fu_2125_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_address1_local = add_ln194_32_cast_fu_2071_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_address1_local = zext_ln194_36_fu_2015_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_address1_local = zext_ln194_34_fu_1954_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address1_local = add_ln194_24_cast_fu_1900_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address1_local = zext_ln194_28_fu_1844_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address1_local = zext_ln194_26_fu_1783_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address1_local = add_ln194_16_cast_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address1_local = add_ln194_13_cast_fu_1656_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address1_local = zext_ln194_15_fu_1600_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address1_local = zext_ln194_13_fu_1539_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address1_local = weights3_0_addr_53_reg_3519;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address1_local = add_ln194_2_cast_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = zext_ln194_2_fu_1369_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = zext_ln194_5_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_1211_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_0_d0_local = bitcast_ln194_143_fu_3310_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_0_d0_local = bitcast_ln194_142_fu_3302_p1;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_0_d0_local = bitcast_ln194_141_fu_3294_p1;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_0_d0_local = bitcast_ln194_140_fu_3286_p1;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_0_d0_local = bitcast_ln194_139_fu_3278_p1;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_0_d0_local = bitcast_ln194_138_fu_3270_p1;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_0_d0_local = bitcast_ln194_137_fu_3262_p1;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_0_d0_local = bitcast_ln194_136_fu_3254_p1;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_0_d0_local = bitcast_ln194_135_fu_3246_p1;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_0_d0_local = bitcast_ln194_134_fu_3238_p1;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_0_d0_local = bitcast_ln194_133_fu_3230_p1;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_0_d0_local = bitcast_ln194_132_fu_3222_p1;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_0_d0_local = bitcast_ln194_131_fu_3214_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_0_d0_local = bitcast_ln194_117_fu_3069_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_0_d0_local = bitcast_ln194_115_fu_3049_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_0_d0_local = bitcast_ln194_113_fu_3029_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_0_d0_local = bitcast_ln194_110_fu_3009_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_0_d0_local = bitcast_ln194_108_fu_2989_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_0_d0_local = bitcast_ln194_106_fu_2972_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_0_d0_local = bitcast_ln194_104_fu_2956_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_0_d0_local = bitcast_ln194_101_fu_2940_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_0_d0_local = bitcast_ln194_111_fu_2921_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_0_d0_local = bitcast_ln194_103_fu_2901_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_0_d0_local = bitcast_ln194_97_fu_2881_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage47) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            weights3_0_d1_local = bitcast_ln194_130_fu_3204_p1;
        end else if (((1'b0 == ap_block_pp0_stage46) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
            weights3_0_d1_local = bitcast_ln194_129_fu_3194_p1;
        end else if (((1'b0 == ap_block_pp0_stage45) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
            weights3_0_d1_local = bitcast_ln194_128_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage44) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
            weights3_0_d1_local = bitcast_ln194_127_fu_3174_p1;
        end else if (((1'b0 == ap_block_pp0_stage43) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
            weights3_0_d1_local = bitcast_ln194_126_fu_3164_p1;
        end else if (((1'b0 == ap_block_pp0_stage42) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
            weights3_0_d1_local = bitcast_ln194_125_fu_3154_p1;
        end else if (((1'b0 == ap_block_pp0_stage41) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
            weights3_0_d1_local = bitcast_ln194_124_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage40) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
            weights3_0_d1_local = bitcast_ln194_123_fu_3134_p1;
        end else if (((1'b0 == ap_block_pp0_stage39) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
            weights3_0_d1_local = bitcast_ln194_122_fu_3124_p1;
        end else if (((1'b0 == ap_block_pp0_stage38) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
            weights3_0_d1_local = bitcast_ln194_121_fu_3114_p1;
        end else if (((1'b0 == ap_block_pp0_stage37) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
            weights3_0_d1_local = bitcast_ln194_120_fu_3104_p1;
        end else if (((1'b0 == ap_block_pp0_stage36) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
            weights3_0_d1_local = bitcast_ln194_119_fu_3094_p1;
        end else if (((1'b0 == ap_block_pp0_stage35) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
            weights3_0_d1_local = bitcast_ln194_118_fu_3084_p1;
        end else if (((1'b0 == ap_block_pp0_stage34) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
            weights3_0_d1_local = bitcast_ln194_116_fu_3064_p1;
        end else if (((1'b0 == ap_block_pp0_stage33) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
            weights3_0_d1_local = bitcast_ln194_114_fu_3044_p1;
        end else if (((1'b0 == ap_block_pp0_stage32) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            weights3_0_d1_local = bitcast_ln194_112_fu_3024_p1;
        end else if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            weights3_0_d1_local = bitcast_ln194_109_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            weights3_0_d1_local = bitcast_ln194_107_fu_2984_p1;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            weights3_0_d1_local = bitcast_ln194_105_fu_2968_p1;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            weights3_0_d1_local = bitcast_ln194_102_fu_2952_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            weights3_0_d1_local = bitcast_ln194_100_fu_2935_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            weights3_0_d1_local = bitcast_ln194_98_fu_2916_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            weights3_0_d1_local = bitcast_ln194_99_fu_2896_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights3_0_d1_local = bitcast_ln194_96_fu_2876_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_1_address0_local = weights3_1_addr_94_reg_4364_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_1_address0_local = weights3_1_addr_93_reg_4353_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_1_address0_local = weights3_1_addr_92_reg_4322_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_1_address0_local = weights3_1_addr_91_reg_4311_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_1_address0_local = weights3_1_addr_90_reg_4269_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_1_address0_local = weights3_1_addr_89_reg_4258_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_1_address0_local = weights3_1_addr_88_reg_4222_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_1_address0_local = weights3_1_addr_87_reg_4211_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_1_address0_local = weights3_1_addr_86_reg_4180_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_1_address0_local = weights3_1_addr_85_reg_4169_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_1_address0_local = weights3_1_addr_84_reg_4132_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_1_address0_local = weights3_1_addr_83_reg_4121_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_1_address0_local = weights3_1_addr_82_reg_4085_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_1_address0_local = weights3_1_addr_68_reg_3781_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_1_address0_local = weights3_1_addr_66_reg_3745_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_1_address0_local = weights3_1_addr_64_reg_3710_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_1_address0_local = weights3_1_addr_61_reg_3656_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_1_address0_local = weights3_1_addr_59_reg_3615_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_1_address0_local = weights3_1_addr_57_reg_3579_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_1_address0_local = weights3_1_addr_55_reg_3549_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_1_address0_local = weights3_1_addr_53_reg_3524_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_1_address0_local = weights3_1_addr_51_reg_3475_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_1_address0_local = weights3_1_addr_62_reg_3445_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_1_address0_local = weights3_1_addr_48_reg_3410_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_address0_local = zext_ln194_65_fu_2617_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_address0_local = zext_ln194_62_fu_2548_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_address0_local = zext_ln194_59_fu_2498_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_address0_local = zext_ln194_57_fu_2447_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_address0_local = zext_ln194_54_fu_2377_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_address0_local = zext_ln194_51_fu_2327_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_address0_local = zext_ln194_49_fu_2276_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_address0_local = zext_ln194_46_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_address0_local = zext_ln194_43_fu_2156_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_address0_local = zext_ln194_41_fu_2105_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_address0_local = zext_ln194_38_fu_2035_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_address0_local = zext_ln194_35_fu_1985_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address0_local = zext_ln194_33_fu_1934_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address0_local = zext_ln194_30_fu_1864_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address0_local = zext_ln194_27_fu_1814_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address0_local = zext_ln194_25_fu_1763_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address0_local = zext_ln194_20_fu_1690_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address0_local = zext_ln194_17_fu_1620_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address0_local = zext_ln194_14_fu_1570_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = zext_ln194_12_fu_1519_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address0_local = zext_ln194_9_fu_1459_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = zext_ln194_6_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln194_22_fu_1343_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = zext_ln194_1_fu_1276_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_1_address1_local = weights3_1_addr_81_reg_4075_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_1_address1_local = weights3_1_addr_80_reg_4044_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_1_address1_local = weights3_1_addr_79_reg_4033_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_1_address1_local = weights3_1_addr_78_reg_3996_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_1_address1_local = weights3_1_addr_77_reg_3985_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_1_address1_local = weights3_1_addr_76_reg_3949_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_1_address1_local = weights3_1_addr_75_reg_3938_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_1_address1_local = weights3_1_addr_74_reg_3907_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_1_address1_local = weights3_1_addr_73_reg_3896_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_1_address1_local = weights3_1_addr_72_reg_3859_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_1_address1_local = weights3_1_addr_71_reg_3848_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_1_address1_local = weights3_1_addr_70_reg_3812_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_1_address1_local = weights3_1_addr_69_reg_3801_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_1_address1_local = weights3_1_addr_67_reg_3771_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_1_address1_local = weights3_1_addr_65_reg_3735_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_1_address1_local = weights3_1_addr_63_reg_3700_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_1_address1_local = weights3_1_addr_60_reg_3646_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_1_address1_local = weights3_1_addr_58_reg_3605_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_1_address1_local = weights3_1_addr_56_reg_3569_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_1_address1_local = weights3_1_addr_54_reg_3539_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_1_address1_local = weights3_1_addr_52_reg_3514_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_1_address1_local = weights3_1_addr_49_reg_3470_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_1_address1_local = weights3_1_addr_50_reg_3430_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_1_address1_local = weights3_1_addr_reg_3400_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_address1_local = zext_ln194_63_fu_2604_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_address1_local = zext_ln194_61_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_address1_local = zext_ln194_58_fu_2467_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_address1_local = zext_ln194_55_fu_2418_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_address1_local = zext_ln194_53_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_address1_local = zext_ln194_50_fu_2296_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_address1_local = zext_ln194_47_fu_2247_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_address1_local = zext_ln194_45_fu_2196_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_address1_local = zext_ln194_42_fu_2125_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_address1_local = zext_ln194_39_fu_2076_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_address1_local = zext_ln194_37_fu_2025_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_address1_local = zext_ln194_34_fu_1954_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address1_local = zext_ln194_31_fu_1905_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address1_local = zext_ln194_29_fu_1854_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address1_local = zext_ln194_26_fu_1783_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address1_local = zext_ln194_23_fu_1734_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address1_local = zext_ln194_18_fu_1661_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address1_local = zext_ln194_16_fu_1610_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address1_local = zext_ln194_13_fu_1539_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address1_local = zext_ln194_10_fu_1490_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address1_local = zext_ln194_8_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = zext_ln194_3_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = zext_ln194_5_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_1211_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage12_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        weights3_1_d0_local = bitcast_ln194_191_fu_3314_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        weights3_1_d0_local = bitcast_ln194_190_fu_3306_p1;
    end else if (((1'b0 == ap_block_pp0_stage45) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
        weights3_1_d0_local = bitcast_ln194_189_fu_3298_p1;
    end else if (((1'b0 == ap_block_pp0_stage44) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
        weights3_1_d0_local = bitcast_ln194_188_fu_3290_p1;
    end else if (((1'b0 == ap_block_pp0_stage43) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
        weights3_1_d0_local = bitcast_ln194_187_fu_3282_p1;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        weights3_1_d0_local = bitcast_ln194_186_fu_3274_p1;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        weights3_1_d0_local = bitcast_ln194_185_fu_3266_p1;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        weights3_1_d0_local = bitcast_ln194_184_fu_3258_p1;
    end else if (((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
        weights3_1_d0_local = bitcast_ln194_183_fu_3250_p1;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        weights3_1_d0_local = bitcast_ln194_182_fu_3242_p1;
    end else if (((1'b0 == ap_block_pp0_stage37) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        weights3_1_d0_local = bitcast_ln194_181_fu_3234_p1;
    end else if (((1'b0 == ap_block_pp0_stage36) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
        weights3_1_d0_local = bitcast_ln194_180_fu_3226_p1;
    end else if (((1'b0 == ap_block_pp0_stage35) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        weights3_1_d0_local = bitcast_ln194_179_fu_3218_p1;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        weights3_1_d0_local = bitcast_ln194_165_fu_3079_p1;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        weights3_1_d0_local = bitcast_ln194_163_fu_3059_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        weights3_1_d0_local = bitcast_ln194_161_fu_3039_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights3_1_d0_local = bitcast_ln194_158_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights3_1_d0_local = bitcast_ln194_156_fu_2999_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights3_1_d0_local = bitcast_ln194_154_fu_2980_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights3_1_d0_local = bitcast_ln194_152_fu_2964_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights3_1_d0_local = bitcast_ln194_150_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights3_1_d0_local = bitcast_ln194_148_fu_2931_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights3_1_d0_local = bitcast_ln194_159_fu_2911_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights3_1_d0_local = bitcast_ln194_145_fu_2891_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage47) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            weights3_1_d1_local = bitcast_ln194_178_fu_3209_p1;
        end else if (((1'b0 == ap_block_pp0_stage46) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
            weights3_1_d1_local = bitcast_ln194_177_fu_3199_p1;
        end else if (((1'b0 == ap_block_pp0_stage45) & (1'b1 == ap_CS_fsm_pp0_stage45))) begin
            weights3_1_d1_local = bitcast_ln194_176_fu_3189_p1;
        end else if (((1'b0 == ap_block_pp0_stage44) & (1'b1 == ap_CS_fsm_pp0_stage44))) begin
            weights3_1_d1_local = bitcast_ln194_175_fu_3179_p1;
        end else if (((1'b0 == ap_block_pp0_stage43) & (1'b1 == ap_CS_fsm_pp0_stage43))) begin
            weights3_1_d1_local = bitcast_ln194_174_fu_3169_p1;
        end else if (((1'b0 == ap_block_pp0_stage42) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
            weights3_1_d1_local = bitcast_ln194_173_fu_3159_p1;
        end else if (((1'b0 == ap_block_pp0_stage41) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
            weights3_1_d1_local = bitcast_ln194_172_fu_3149_p1;
        end else if (((1'b0 == ap_block_pp0_stage40) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
            weights3_1_d1_local = bitcast_ln194_171_fu_3139_p1;
        end else if (((1'b0 == ap_block_pp0_stage39) & (1'b1 == ap_CS_fsm_pp0_stage39))) begin
            weights3_1_d1_local = bitcast_ln194_170_fu_3129_p1;
        end else if (((1'b0 == ap_block_pp0_stage38) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
            weights3_1_d1_local = bitcast_ln194_169_fu_3119_p1;
        end else if (((1'b0 == ap_block_pp0_stage37) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
            weights3_1_d1_local = bitcast_ln194_168_fu_3109_p1;
        end else if (((1'b0 == ap_block_pp0_stage36) & (1'b1 == ap_CS_fsm_pp0_stage36))) begin
            weights3_1_d1_local = bitcast_ln194_167_fu_3099_p1;
        end else if (((1'b0 == ap_block_pp0_stage35) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
            weights3_1_d1_local = bitcast_ln194_166_fu_3089_p1;
        end else if (((1'b0 == ap_block_pp0_stage34) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
            weights3_1_d1_local = bitcast_ln194_164_fu_3074_p1;
        end else if (((1'b0 == ap_block_pp0_stage33) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
            weights3_1_d1_local = bitcast_ln194_162_fu_3054_p1;
        end else if (((1'b0 == ap_block_pp0_stage32) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
            weights3_1_d1_local = bitcast_ln194_160_fu_3034_p1;
        end else if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            weights3_1_d1_local = bitcast_ln194_157_fu_3014_p1;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            weights3_1_d1_local = bitcast_ln194_155_fu_2994_p1;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            weights3_1_d1_local = bitcast_ln194_153_fu_2976_p1;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            weights3_1_d1_local = bitcast_ln194_151_fu_2960_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            weights3_1_d1_local = bitcast_ln194_149_fu_2944_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            weights3_1_d1_local = bitcast_ln194_146_fu_2926_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            weights3_1_d1_local = bitcast_ln194_147_fu_2906_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights3_1_d1_local = bitcast_ln194_144_fu_2886_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage44_11001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44)) | ((1'b0 == ap_block_pp0_stage43_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage43)) | ((1'b0 == ap_block_pp0_stage42_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage36)) | ((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35)) | ((1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_2848_p2 = (i_4_reg_3331 + 7'd32);
assign add_ln194_10_fu_1585_p2 = (empty_reg_3345 + 8'd19);
assign add_ln194_11_fu_1605_p2 = (lshr_ln194_7_reg_3554 + 7'd1);
assign add_ln194_12_fu_1615_p2 = (zext_ln194_4_reg_3480 + 7'd9);
assign add_ln194_13_cast_fu_1656_p1 = add_ln194_13_fu_1651_p2;
assign add_ln194_13_fu_1651_p2 = (zext_ln194_4_reg_3480 + 7'd10);
assign add_ln194_14_fu_1665_p2 = (empty_reg_3345 + 8'd25);
assign add_ln194_15_fu_1685_p2 = (lshr_ln194_9_reg_3589 + 7'd1);
assign add_ln194_16_cast_fu_1729_p1 = add_ln194_16_fu_1723_p2;
assign add_ln194_16_fu_1723_p2 = (zext_ln194_21_fu_1720_p1 + 7'd1);
assign add_ln194_17_fu_1738_p2 = (empty_reg_3345 + 8'd31);
assign add_ln194_18_fu_1758_p2 = (lshr_ln194_10_reg_3625 + 7'd1);
assign add_ln194_19_fu_1778_p2 = (zext_ln194_21_reg_3661 + 7'd3);
assign add_ln194_1_fu_1374_p2 = (lshr_ln194_1_reg_3380 + 7'd1);
assign add_ln194_20_cast_fu_1794_p1 = add_ln194_20_fu_1789_p2;
assign add_ln194_20_fu_1789_p2 = (zext_ln194_21_reg_3661 + 7'd4);
assign add_ln194_21_fu_1829_p2 = (empty_reg_3345 + 8'd37);
assign add_ln194_22_fu_1849_p2 = (lshr_ln194_12_reg_3715 + 7'd1);
assign add_ln194_23_fu_1859_p2 = (zext_ln194_21_reg_3661 + 7'd6);
assign add_ln194_24_cast_fu_1900_p1 = add_ln194_24_fu_1895_p2;
assign add_ln194_24_fu_1895_p2 = (zext_ln194_21_reg_3661 + 7'd7);
assign add_ln194_25_fu_1909_p2 = (empty_reg_3345 + 8'd43);
assign add_ln194_26_fu_1929_p2 = (lshr_ln194_14_reg_3750 + 7'd1);
assign add_ln194_27_fu_1949_p2 = (zext_ln194_21_reg_3661 + 7'd9);
assign add_ln194_28_cast_fu_1965_p1 = add_ln194_28_fu_1960_p2;
assign add_ln194_28_fu_1960_p2 = (zext_ln194_21_reg_3661 + 7'd10);
assign add_ln194_29_fu_2000_p2 = (empty_reg_3345 + 8'd49);
assign add_ln194_2_cast_fu_1418_p1 = add_ln194_2_fu_1412_p2;
assign add_ln194_2_fu_1412_p2 = (zext_ln194_4_fu_1409_p1 + 7'd1);
assign add_ln194_30_fu_2020_p2 = (lshr_ln194_16_reg_3818 + 7'd1);
assign add_ln194_31_fu_2030_p2 = (zext_ln194_21_reg_3661 + 7'd12);
assign add_ln194_32_cast_fu_2071_p1 = add_ln194_32_fu_2066_p2;
assign add_ln194_32_fu_2066_p2 = (zext_ln194_21_reg_3661 + 7'd13);
assign add_ln194_33_fu_2080_p2 = (empty_reg_3345 + 8'd55);
assign add_ln194_34_fu_2100_p2 = (lshr_ln194_18_reg_3865 + 7'd1);
assign add_ln194_35_fu_2120_p2 = (zext_ln194_21_reg_3661 + 7'd15);
assign add_ln194_36_cast_fu_2136_p1 = add_ln194_36_fu_2131_p2;
assign add_ln194_36_fu_2131_p2 = (zext_ln194_21_reg_3661 + 7'd16);
assign add_ln194_37_fu_2171_p2 = (empty_reg_3345 + 8'd61);
assign add_ln194_38_fu_2191_p2 = (lshr_ln194_20_reg_3955 + 7'd1);
assign add_ln194_39_fu_2201_p2 = (zext_ln194_21_reg_3661 + 7'd18);
assign add_ln194_3_fu_1423_p2 = (empty_reg_3345 + 8'd7);
assign add_ln194_40_cast_fu_2242_p1 = add_ln194_40_fu_2237_p2;
assign add_ln194_40_fu_2237_p2 = (zext_ln194_21_reg_3661 + 7'd19);
assign add_ln194_41_fu_2251_p2 = (empty_reg_3345 + 8'd67);
assign add_ln194_42_fu_2271_p2 = (lshr_ln194_22_reg_4002 + 7'd1);
assign add_ln194_43_fu_2291_p2 = (zext_ln194_21_reg_3661 + 7'd21);
assign add_ln194_44_cast_fu_2307_p1 = add_ln194_44_fu_2302_p2;
assign add_ln194_44_fu_2302_p2 = (zext_ln194_21_reg_3661 + 7'd22);
assign add_ln194_45_fu_2342_p2 = (empty_reg_3345 + 8'd73);
assign add_ln194_46_fu_2362_p2 = (lshr_ln194_24_reg_4090 + 7'd1);
assign add_ln194_47_fu_2372_p2 = (zext_ln194_21_reg_3661 + 7'd24);
assign add_ln194_48_cast_fu_2413_p1 = add_ln194_48_fu_2408_p2;
assign add_ln194_48_fu_2408_p2 = (zext_ln194_21_reg_3661 + 7'd25);
assign add_ln194_49_fu_2422_p2 = (empty_reg_3345 + 8'd79);
assign add_ln194_4_fu_1443_p2 = (lshr_ln194_3_reg_3455 + 7'd1);
assign add_ln194_50_fu_2442_p2 = (lshr_ln194_26_reg_4137 + 7'd1);
assign add_ln194_51_fu_2462_p2 = (zext_ln194_21_reg_3661 + 7'd27);
assign add_ln194_52_cast_fu_2478_p1 = add_ln194_52_fu_2473_p2;
assign add_ln194_52_fu_2473_p2 = (zext_ln194_21_reg_3661 + 7'd28);
assign add_ln194_53_fu_2513_p2 = (empty_reg_3345 + 8'd85);
assign add_ln194_54_fu_2533_p2 = (lshr_ln194_28_reg_4227 + 7'd1);
assign add_ln194_55_fu_2543_p2 = (zext_ln194_21_reg_3661 + 7'd30);
assign add_ln194_56_cast_fu_2599_p1 = add_ln194_56_fu_2594_p2;
assign add_ln194_56_fu_2594_p2 = (zext_ln194_21_reg_3661 + 7'd31);
assign add_ln194_57_fu_2569_p2 = (empty_reg_3345 + 8'd91);
assign add_ln194_58_fu_2612_p2 = (lshr_ln194_30_reg_4274 + 7'd1);
assign add_ln194_5_fu_1453_p2 = (zext_ln194_4_fu_1409_p1 + 7'd3);
assign add_ln194_6_fu_1494_p2 = (empty_reg_3345 + 8'd13);
assign add_ln194_7_fu_1514_p2 = (lshr_ln194_5_reg_3488 + 7'd1);
assign add_ln194_8_fu_1534_p2 = (zext_ln194_4_reg_3480 + 7'd6);
assign add_ln194_9_cast_fu_1550_p1 = add_ln194_9_fu_1545_p2;
assign add_ln194_9_fu_1545_p2 = (zext_ln194_4_reg_3480 + 7'd7);
assign add_ln194_fu_1354_p2 = (empty_reg_3345 + 8'd1);
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
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_pp0_stage35 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_pp0_stage36 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_pp0_stage37 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_pp0_stage38 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage41 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_pp0_stage42 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_pp0_stage43 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_pp0_stage44 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_pp0_stage45 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
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
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage47;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_100_fu_2935_p1 = reg_1153;
assign bitcast_ln194_101_fu_2940_p1 = div213_3_1_reg_4644;
assign bitcast_ln194_102_fu_2952_p1 = div213_4_reg_4654;
assign bitcast_ln194_103_fu_2901_p1 = reg_1133;
assign bitcast_ln194_104_fu_2956_p1 = div213_5_1_reg_4669;
assign bitcast_ln194_105_fu_2968_p1 = div213_6_reg_4679;
assign bitcast_ln194_106_fu_2972_p1 = div213_6_2_reg_4689;
assign bitcast_ln194_107_fu_2984_p1 = reg_1109;
assign bitcast_ln194_108_fu_2989_p1 = reg_1117;
assign bitcast_ln194_109_fu_3004_p1 = reg_1125;
assign bitcast_ln194_10_fu_1773_p1 = reg_1030;
assign bitcast_ln194_110_fu_3009_p1 = reg_1133;
assign bitcast_ln194_111_fu_2921_p1 = reg_1137;
assign bitcast_ln194_112_fu_3024_p1 = reg_1141;
assign bitcast_ln194_113_fu_3029_p1 = reg_1149;
assign bitcast_ln194_114_fu_3044_p1 = reg_1109;
assign bitcast_ln194_115_fu_3049_p1 = reg_1117;
assign bitcast_ln194_116_fu_3064_p1 = reg_1125;
assign bitcast_ln194_117_fu_3069_p1 = reg_1109;
assign bitcast_ln194_118_fu_3084_p1 = reg_1109;
assign bitcast_ln194_119_fu_3094_p1 = reg_1109;
assign bitcast_ln194_11_fu_1819_p1 = reg_996;
assign bitcast_ln194_120_fu_3104_p1 = reg_1109;
assign bitcast_ln194_121_fu_3114_p1 = reg_1109;
assign bitcast_ln194_122_fu_3124_p1 = reg_1109;
assign bitcast_ln194_123_fu_3134_p1 = reg_1109;
assign bitcast_ln194_124_fu_3144_p1 = reg_1109;
assign bitcast_ln194_125_fu_3154_p1 = reg_1109;
assign bitcast_ln194_126_fu_3164_p1 = reg_1109;
assign bitcast_ln194_127_fu_3174_p1 = reg_1109;
assign bitcast_ln194_128_fu_3184_p1 = reg_1109;
assign bitcast_ln194_129_fu_3194_p1 = reg_1109;
assign bitcast_ln194_12_fu_1824_p1 = reg_1010;
assign bitcast_ln194_130_fu_3204_p1 = reg_1109;
assign bitcast_ln194_131_fu_3214_p1 = div213_23_1_reg_4699;
assign bitcast_ln194_132_fu_3222_p1 = div213_24_reg_4709;
assign bitcast_ln194_133_fu_3230_p1 = div213_24_2_reg_4719;
assign bitcast_ln194_134_fu_3238_p1 = div213_25_1_reg_4729;
assign bitcast_ln194_135_fu_3246_p1 = div213_26_reg_4739;
assign bitcast_ln194_136_fu_3254_p1 = div213_26_2_reg_4749;
assign bitcast_ln194_137_fu_3262_p1 = div213_27_1_reg_4759;
assign bitcast_ln194_138_fu_3270_p1 = div213_28_reg_4769;
assign bitcast_ln194_139_fu_3278_p1 = div213_28_2_reg_4779;
assign bitcast_ln194_13_fu_1885_p1 = reg_1035;
assign bitcast_ln194_140_fu_3286_p1 = div213_29_1_reg_4789;
assign bitcast_ln194_141_fu_3294_p1 = div213_30_reg_4799;
assign bitcast_ln194_142_fu_3302_p1 = div213_30_2_reg_4809;
assign bitcast_ln194_143_fu_3310_p1 = div213_31_1_reg_4819;
assign bitcast_ln194_144_fu_2886_p1 = reg_1113;
assign bitcast_ln194_145_fu_2891_p1 = reg_1121;
assign bitcast_ln194_146_fu_2926_p1 = reg_1149;
assign bitcast_ln194_147_fu_2906_p1 = reg_1129;
assign bitcast_ln194_148_fu_2931_p1 = div213_3_reg_4639;
assign bitcast_ln194_149_fu_2944_p1 = div213_3_2_reg_4649;
assign bitcast_ln194_14_fu_1575_p1 = reg_1010;
assign bitcast_ln194_150_fu_2948_p1 = div213_4_1_reg_4659;
assign bitcast_ln194_151_fu_2960_p1 = div213_5_reg_4664;
assign bitcast_ln194_152_fu_2964_p1 = div213_5_2_reg_4674;
assign bitcast_ln194_153_fu_2976_p1 = div213_6_1_reg_4684;
assign bitcast_ln194_154_fu_2980_p1 = div213_7_reg_4694;
assign bitcast_ln194_155_fu_2994_p1 = reg_1113;
assign bitcast_ln194_156_fu_2999_p1 = reg_1121;
assign bitcast_ln194_157_fu_3014_p1 = reg_1129;
assign bitcast_ln194_158_fu_3019_p1 = reg_1137;
assign bitcast_ln194_159_fu_2911_p1 = reg_1145;
assign bitcast_ln194_15_fu_1890_p1 = reg_1040;
assign bitcast_ln194_160_fu_3034_p1 = reg_1145;
assign bitcast_ln194_161_fu_3039_p1 = reg_1153;
assign bitcast_ln194_162_fu_3054_p1 = reg_1113;
assign bitcast_ln194_163_fu_3059_p1 = reg_1121;
assign bitcast_ln194_164_fu_3074_p1 = reg_1129;
assign bitcast_ln194_165_fu_3079_p1 = reg_1113;
assign bitcast_ln194_166_fu_3089_p1 = reg_1113;
assign bitcast_ln194_167_fu_3099_p1 = reg_1113;
assign bitcast_ln194_168_fu_3109_p1 = reg_1113;
assign bitcast_ln194_169_fu_3119_p1 = reg_1113;
assign bitcast_ln194_16_fu_1939_p1 = reg_1025;
assign bitcast_ln194_170_fu_3129_p1 = reg_1113;
assign bitcast_ln194_171_fu_3139_p1 = reg_1113;
assign bitcast_ln194_172_fu_3149_p1 = reg_1113;
assign bitcast_ln194_173_fu_3159_p1 = reg_1113;
assign bitcast_ln194_174_fu_3169_p1 = reg_1113;
assign bitcast_ln194_175_fu_3179_p1 = reg_1113;
assign bitcast_ln194_176_fu_3189_p1 = reg_1113;
assign bitcast_ln194_177_fu_3199_p1 = reg_1113;
assign bitcast_ln194_178_fu_3209_p1 = reg_1113;
assign bitcast_ln194_179_fu_3218_p1 = div213_23_2_reg_4704;
assign bitcast_ln194_17_fu_1944_p1 = reg_1045;
assign bitcast_ln194_180_fu_3226_p1 = div213_24_1_reg_4714;
assign bitcast_ln194_181_fu_3234_p1 = div213_25_reg_4724;
assign bitcast_ln194_182_fu_3242_p1 = div213_25_2_reg_4734;
assign bitcast_ln194_183_fu_3250_p1 = div213_26_1_reg_4744;
assign bitcast_ln194_184_fu_3258_p1 = div213_27_reg_4754;
assign bitcast_ln194_185_fu_3266_p1 = div213_27_2_reg_4764;
assign bitcast_ln194_186_fu_3274_p1 = div213_28_1_reg_4774;
assign bitcast_ln194_187_fu_3282_p1 = div213_29_reg_4784;
assign bitcast_ln194_188_fu_3290_p1 = div213_29_2_reg_4794;
assign bitcast_ln194_189_fu_3298_p1 = div213_30_1_reg_4804;
assign bitcast_ln194_18_fu_1990_p1 = reg_1000;
assign bitcast_ln194_190_fu_3306_p1 = div213_31_reg_4814;
assign bitcast_ln194_191_fu_3314_p1 = div213_31_2_reg_4824;
assign bitcast_ln194_19_fu_1995_p1 = reg_1015;
assign bitcast_ln194_1_fu_1404_p1 = reg_996;
assign bitcast_ln194_20_fu_2056_p1 = reg_1050;
assign bitcast_ln194_21_fu_2061_p1 = reg_1055;
assign bitcast_ln194_22_fu_2110_p1 = reg_992;
assign bitcast_ln194_23_fu_2115_p1 = reg_1005;
assign bitcast_ln194_24_fu_2161_p1 = reg_1060;
assign bitcast_ln194_25_fu_2166_p1 = reg_1065;
assign bitcast_ln194_26_fu_2227_p1 = reg_1030;
assign bitcast_ln194_27_fu_2232_p1 = reg_1020;
assign bitcast_ln194_28_fu_2281_p1 = reg_1070;
assign bitcast_ln194_29_fu_2286_p1 = reg_1075;
assign bitcast_ln194_2_fu_1480_p1 = reg_1000;
assign bitcast_ln194_30_fu_1580_p1 = reg_1025;
assign bitcast_ln194_31_fu_1646_p1 = reg_1015;
assign bitcast_ln194_32_fu_2332_p1 = reg_1010;
assign bitcast_ln194_33_fu_2337_p1 = reg_996;
assign bitcast_ln194_34_fu_2398_p1 = reg_1080;
assign bitcast_ln194_35_fu_2403_p1 = reg_1085;
assign bitcast_ln194_36_fu_2452_p1 = reg_1090;
assign bitcast_ln194_37_fu_2457_p1 = reg_1035;
assign bitcast_ln194_38_fu_2503_p1 = reg_1094;
assign bitcast_ln194_39_fu_2508_p1 = reg_1040;
assign bitcast_ln194_3_fu_1485_p1 = reg_1005;
assign bitcast_ln194_40_fu_2584_p1 = reg_1025;
assign bitcast_ln194_41_fu_2589_p1 = reg_1045;
assign bitcast_ln194_42_fu_2622_p1 = reg_1099;
assign bitcast_ln194_43_fu_2627_p1 = reg_1104;
assign bitcast_ln194_44_fu_2632_p1 = reg_1000;
assign bitcast_ln194_45_fu_2637_p1 = reg_1015;
assign bitcast_ln194_46_fu_2642_p1 = weights3_0_load_70_reg_3833;
assign bitcast_ln194_47_fu_2646_p1 = weights3_1_load_70_reg_3838;
assign bitcast_ln194_48_fu_2650_p1 = reg_1050;
assign bitcast_ln194_49_fu_2655_p1 = reg_1055;
assign bitcast_ln194_4_fu_1641_p1 = reg_1000;
assign bitcast_ln194_50_fu_2660_p1 = weights3_0_load_72_reg_3881;
assign bitcast_ln194_51_fu_2664_p1 = weights3_1_load_72_reg_3886;
assign bitcast_ln194_52_fu_2668_p1 = reg_992;
assign bitcast_ln194_53_fu_2673_p1 = reg_1005;
assign bitcast_ln194_54_fu_2678_p1 = weights3_0_load_74_reg_3923;
assign bitcast_ln194_55_fu_2682_p1 = weights3_1_load_74_reg_3928;
assign bitcast_ln194_56_fu_2686_p1 = reg_1060;
assign bitcast_ln194_57_fu_2691_p1 = reg_1065;
assign bitcast_ln194_58_fu_2696_p1 = weights3_0_load_76_reg_3970;
assign bitcast_ln194_59_fu_2700_p1 = weights3_1_load_76_reg_3975;
assign bitcast_ln194_5_fu_1710_p1 = reg_1005;
assign bitcast_ln194_60_fu_2704_p1 = reg_1030;
assign bitcast_ln194_61_fu_2709_p1 = reg_1020;
assign bitcast_ln194_62_fu_2714_p1 = weights3_0_load_78_reg_4018;
assign bitcast_ln194_63_fu_2718_p1 = weights3_1_load_78_reg_4023;
assign bitcast_ln194_64_fu_2722_p1 = reg_1070;
assign bitcast_ln194_65_fu_2727_p1 = reg_1075;
assign bitcast_ln194_66_fu_2732_p1 = weights3_0_load_80_reg_4060;
assign bitcast_ln194_67_fu_2736_p1 = weights3_1_load_80_reg_4065;
assign bitcast_ln194_68_fu_2740_p1 = reg_1010;
assign bitcast_ln194_69_fu_2745_p1 = reg_996;
assign bitcast_ln194_6_fu_1524_p1 = reg_992;
assign bitcast_ln194_70_fu_2750_p1 = weights3_0_load_82_reg_4105;
assign bitcast_ln194_71_fu_2754_p1 = weights3_1_load_82_reg_4110;
assign bitcast_ln194_72_fu_2758_p1 = reg_1080;
assign bitcast_ln194_73_fu_2763_p1 = reg_1085;
assign bitcast_ln194_74_fu_2768_p1 = weights3_0_load_84_reg_4153;
assign bitcast_ln194_75_fu_2772_p1 = weights3_1_load_84_reg_4158;
assign bitcast_ln194_76_fu_2776_p1 = reg_1090;
assign bitcast_ln194_77_fu_2781_p1 = reg_1035;
assign bitcast_ln194_78_fu_2786_p1 = weights3_0_load_86_reg_4195;
assign bitcast_ln194_79_fu_2790_p1 = weights3_1_load_86_reg_4200;
assign bitcast_ln194_7_fu_1529_p1 = reg_996;
assign bitcast_ln194_80_fu_2794_p1 = reg_1094;
assign bitcast_ln194_81_fu_2799_p1 = reg_1040;
assign bitcast_ln194_82_fu_2804_p1 = weights3_0_load_88_reg_4242;
assign bitcast_ln194_83_fu_2808_p1 = weights3_1_load_88_reg_4247;
assign bitcast_ln194_84_fu_2812_p1 = reg_1025;
assign bitcast_ln194_85_fu_2817_p1 = reg_1045;
assign bitcast_ln194_86_fu_2822_p1 = weights3_0_load_90_reg_4295;
assign bitcast_ln194_87_fu_2826_p1 = weights3_1_load_90_reg_4300;
assign bitcast_ln194_88_fu_2830_p1 = reg_1099;
assign bitcast_ln194_89_fu_2835_p1 = reg_1104;
assign bitcast_ln194_8_fu_1715_p1 = reg_992;
assign bitcast_ln194_90_fu_2840_p1 = weights3_0_load_92_reg_4337;
assign bitcast_ln194_91_fu_2844_p1 = weights3_1_load_92_reg_4342;
assign bitcast_ln194_92_fu_2858_p1 = reg_1000;
assign bitcast_ln194_93_fu_2863_p1 = reg_1015;
assign bitcast_ln194_94_fu_2868_p1 = weights3_0_load_94_reg_4379;
assign bitcast_ln194_95_fu_2872_p1 = weights3_1_load_94_reg_4384;
assign bitcast_ln194_96_fu_2876_p1 = reg_1109;
assign bitcast_ln194_97_fu_2881_p1 = reg_1117;
assign bitcast_ln194_98_fu_2916_p1 = reg_1141;
assign bitcast_ln194_99_fu_2896_p1 = reg_1125;
assign bitcast_ln194_9_fu_1768_p1 = reg_1020;
assign bitcast_ln194_fu_1349_p1 = reg_992;
assign empty_51_fu_1384_p2 = (empty_reg_3345 + 8'd6);
assign empty_52_fu_1465_p2 = (empty_reg_3345 + 8'd12);
assign empty_53_fu_1555_p2 = (empty_reg_3345 + 8'd18);
assign empty_54_fu_1626_p2 = (empty_reg_3345 + 8'd24);
assign empty_55_fu_1695_p2 = (empty_reg_3345 + 8'd30);
assign empty_56_fu_1799_p2 = (empty_reg_3345 + 8'd36);
assign empty_57_fu_1870_p2 = (empty_reg_3345 + 8'd42);
assign empty_58_fu_1970_p2 = (empty_reg_3345 + 8'd48);
assign empty_59_fu_2041_p2 = (empty_reg_3345 + 8'd54);
assign empty_60_fu_2141_p2 = (empty_reg_3345 + 8'd60);
assign empty_61_fu_2212_p2 = (empty_reg_3345 + 8'd66);
assign empty_62_fu_2312_p2 = (empty_reg_3345 + 8'd72);
assign empty_63_fu_2383_p2 = (empty_reg_3345 + 8'd78);
assign empty_64_fu_2483_p2 = (empty_reg_3345 + 8'd84);
assign empty_65_fu_2554_p2 = (empty_reg_3345 + 8'd90);
assign empty_fu_1260_p2 = (p_shl_fu_1252_p3 - or_ln192_cast_fu_1248_p1);
assign lshr_ln194_11_fu_1743_p4 = {{add_ln194_17_fu_1738_p2[7:1]}};
assign lshr_ln194_12_fu_1804_p4 = {{empty_56_fu_1799_p2[7:1]}};
assign lshr_ln194_13_fu_1834_p4 = {{add_ln194_21_fu_1829_p2[7:1]}};
assign lshr_ln194_15_fu_1914_p4 = {{add_ln194_25_fu_1909_p2[7:1]}};
assign lshr_ln194_16_fu_1975_p4 = {{empty_58_fu_1970_p2[7:1]}};
assign lshr_ln194_17_fu_2005_p4 = {{add_ln194_29_fu_2000_p2[7:1]}};
assign lshr_ln194_19_fu_2085_p4 = {{add_ln194_33_fu_2080_p2[7:1]}};
assign lshr_ln194_1_fu_1266_p4 = {{empty_fu_1260_p2[7:1]}};
assign lshr_ln194_20_fu_2146_p4 = {{empty_60_fu_2141_p2[7:1]}};
assign lshr_ln194_21_fu_2176_p4 = {{add_ln194_37_fu_2171_p2[7:1]}};
assign lshr_ln194_23_fu_2256_p4 = {{add_ln194_41_fu_2251_p2[7:1]}};
assign lshr_ln194_24_fu_2317_p4 = {{empty_62_fu_2312_p2[7:1]}};
assign lshr_ln194_25_fu_2347_p4 = {{add_ln194_45_fu_2342_p2[7:1]}};
assign lshr_ln194_27_fu_2427_p4 = {{add_ln194_49_fu_2422_p2[7:1]}};
assign lshr_ln194_28_fu_2488_p4 = {{empty_64_fu_2483_p2[7:1]}};
assign lshr_ln194_29_fu_2518_p4 = {{add_ln194_53_fu_2513_p2[7:1]}};
assign lshr_ln194_2_fu_1359_p4 = {{add_ln194_fu_1354_p2[7:1]}};
assign lshr_ln194_3_fu_1389_p4 = {{empty_51_fu_1384_p2[7:1]}};
assign lshr_ln194_4_fu_1428_p4 = {{add_ln194_3_fu_1423_p2[7:1]}};
assign lshr_ln194_6_fu_1499_p4 = {{add_ln194_6_fu_1494_p2[7:1]}};
assign lshr_ln194_7_fu_1560_p4 = {{empty_53_fu_1555_p2[7:1]}};
assign lshr_ln194_8_fu_1590_p4 = {{add_ln194_10_fu_1585_p2[7:1]}};
assign lshr_ln194_s_fu_1670_p4 = {{add_ln194_14_fu_1665_p2[7:1]}};
assign lshr_ln7_fu_1173_p4 = {{ap_sig_allocacmp_i_4[6:1]}};
assign or_ln192_cast_fu_1248_p1 = or_ln6_fu_1240_p3;
assign or_ln194_1_fu_1311_p3 = {{tmp_34_reg_3385}, {2'd3}};
assign or_ln194_2_cast_fu_1331_p1 = or_ln194_2_fu_1324_p3;
assign or_ln194_2_fu_1324_p3 = {{tmp_36_reg_3390}, {3'd7}};
assign or_ln194_3_fu_1336_p3 = {{tmp_37_reg_3395}, {4'd15}};
assign or_ln5_fu_1227_p3 = {{tmp_s_fu_1217_p4}, {1'd1}};
assign or_ln6_fu_1240_p3 = {{tmp_35_fu_1187_p4}, {1'd1}};
assign p_shl1_fu_1197_p3 = {{tmp_35_fu_1187_p4}, {2'd0}};
assign p_shl_fu_1252_p3 = {{tmp_35_fu_1187_p4}, {3'd4}};
assign sub_ln194_fu_1205_p2 = (p_shl1_fu_1197_p3 - zext_ln194_66_fu_1183_p1);
assign tmp_35_fu_1187_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
assign tmp_s_fu_1217_p4 = {{sub_ln194_fu_1205_p2[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = weights3_0_d0_local;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = weights3_1_d0_local;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign zext_ln192_fu_1235_p1 = or_ln5_fu_1227_p3;
assign zext_ln194_10_fu_1490_p1 = lshr_ln194_5_reg_3488;
assign zext_ln194_11_fu_1509_p1 = lshr_ln194_6_fu_1499_p4;
assign zext_ln194_12_fu_1519_p1 = add_ln194_7_fu_1514_p2;
assign zext_ln194_13_fu_1539_p1 = add_ln194_8_fu_1534_p2;
assign zext_ln194_14_fu_1570_p1 = lshr_ln194_7_fu_1560_p4;
assign zext_ln194_15_fu_1600_p1 = lshr_ln194_8_fu_1590_p4;
assign zext_ln194_16_fu_1610_p1 = add_ln194_11_fu_1605_p2;
assign zext_ln194_17_fu_1620_p1 = add_ln194_12_fu_1615_p2;
assign zext_ln194_18_fu_1661_p1 = lshr_ln194_9_reg_3589;
assign zext_ln194_19_fu_1680_p1 = lshr_ln194_s_fu_1670_p4;
assign zext_ln194_1_fu_1276_p1 = lshr_ln194_1_fu_1266_p4;
assign zext_ln194_20_fu_1690_p1 = add_ln194_15_fu_1685_p2;
assign zext_ln194_21_fu_1720_p1 = or_ln194_3_reg_3420;
assign zext_ln194_22_fu_1343_p1 = or_ln194_3_fu_1336_p3;
assign zext_ln194_23_fu_1734_p1 = lshr_ln194_10_reg_3625;
assign zext_ln194_24_fu_1753_p1 = lshr_ln194_11_fu_1743_p4;
assign zext_ln194_25_fu_1763_p1 = add_ln194_18_fu_1758_p2;
assign zext_ln194_26_fu_1783_p1 = add_ln194_19_fu_1778_p2;
assign zext_ln194_27_fu_1814_p1 = lshr_ln194_12_fu_1804_p4;
assign zext_ln194_28_fu_1844_p1 = lshr_ln194_13_fu_1834_p4;
assign zext_ln194_29_fu_1854_p1 = add_ln194_22_fu_1849_p2;
assign zext_ln194_2_fu_1369_p1 = lshr_ln194_2_fu_1359_p4;
assign zext_ln194_30_fu_1864_p1 = add_ln194_23_fu_1859_p2;
assign zext_ln194_31_fu_1905_p1 = lshr_ln194_14_reg_3750;
assign zext_ln194_32_fu_1924_p1 = lshr_ln194_15_fu_1914_p4;
assign zext_ln194_33_fu_1934_p1 = add_ln194_26_fu_1929_p2;
assign zext_ln194_34_fu_1954_p1 = add_ln194_27_fu_1949_p2;
assign zext_ln194_35_fu_1985_p1 = lshr_ln194_16_fu_1975_p4;
assign zext_ln194_36_fu_2015_p1 = lshr_ln194_17_fu_2005_p4;
assign zext_ln194_37_fu_2025_p1 = add_ln194_30_fu_2020_p2;
assign zext_ln194_38_fu_2035_p1 = add_ln194_31_fu_2030_p2;
assign zext_ln194_39_fu_2076_p1 = lshr_ln194_18_reg_3865;
assign zext_ln194_3_fu_1379_p1 = add_ln194_1_fu_1374_p2;
assign zext_ln194_40_fu_2095_p1 = lshr_ln194_19_fu_2085_p4;
assign zext_ln194_41_fu_2105_p1 = add_ln194_34_fu_2100_p2;
assign zext_ln194_42_fu_2125_p1 = add_ln194_35_fu_2120_p2;
assign zext_ln194_43_fu_2156_p1 = lshr_ln194_20_fu_2146_p4;
assign zext_ln194_44_fu_2186_p1 = lshr_ln194_21_fu_2176_p4;
assign zext_ln194_45_fu_2196_p1 = add_ln194_38_fu_2191_p2;
assign zext_ln194_46_fu_2206_p1 = add_ln194_39_fu_2201_p2;
assign zext_ln194_47_fu_2247_p1 = lshr_ln194_22_reg_4002;
assign zext_ln194_48_fu_2266_p1 = lshr_ln194_23_fu_2256_p4;
assign zext_ln194_49_fu_2276_p1 = add_ln194_42_fu_2271_p2;
assign zext_ln194_4_fu_1409_p1 = or_ln194_1_reg_3415;
assign zext_ln194_50_fu_2296_p1 = add_ln194_43_fu_2291_p2;
assign zext_ln194_51_fu_2327_p1 = lshr_ln194_24_fu_2317_p4;
assign zext_ln194_52_fu_2357_p1 = lshr_ln194_25_fu_2347_p4;
assign zext_ln194_53_fu_2367_p1 = add_ln194_46_fu_2362_p2;
assign zext_ln194_54_fu_2377_p1 = add_ln194_47_fu_2372_p2;
assign zext_ln194_55_fu_2418_p1 = lshr_ln194_26_reg_4137;
assign zext_ln194_56_fu_2437_p1 = lshr_ln194_27_fu_2427_p4;
assign zext_ln194_57_fu_2447_p1 = add_ln194_50_fu_2442_p2;
assign zext_ln194_58_fu_2467_p1 = add_ln194_51_fu_2462_p2;
assign zext_ln194_59_fu_2498_p1 = lshr_ln194_28_fu_2488_p4;
assign zext_ln194_5_fu_1318_p1 = or_ln194_1_fu_1311_p3;
assign zext_ln194_60_fu_2528_p1 = lshr_ln194_29_fu_2518_p4;
assign zext_ln194_61_fu_2538_p1 = add_ln194_54_fu_2533_p2;
assign zext_ln194_62_fu_2548_p1 = add_ln194_55_fu_2543_p2;
assign zext_ln194_63_fu_2604_p1 = lshr_ln194_30_reg_4274;
assign zext_ln194_64_fu_2608_p1 = lshr_ln194_31_reg_4280;
assign zext_ln194_65_fu_2617_p1 = add_ln194_58_fu_2612_p2;
assign zext_ln194_66_fu_1183_p1 = lshr_ln7_fu_1173_p4;
assign zext_ln194_6_fu_1399_p1 = lshr_ln194_3_fu_1389_p4;
assign zext_ln194_7_fu_1438_p1 = lshr_ln194_4_fu_1428_p4;
assign zext_ln194_8_fu_1448_p1 = add_ln194_4_fu_1443_p2;
assign zext_ln194_9_fu_1459_p1 = add_ln194_5_fu_1453_p2;
assign zext_ln194_fu_1211_p1 = sub_ln194_fu_1205_p2;
always @ (posedge ap_clk) begin
    empty_reg_3345[0] <= 1'b1;
    weights3_0_addr_48_reg_3405[0] <= 1'b1;
    weights3_0_addr_48_reg_3405[6] <= 1'b0;
    weights3_0_addr_48_reg_3405_pp0_iter1_reg[0] <= 1'b1;
    weights3_0_addr_48_reg_3405_pp0_iter1_reg[6] <= 1'b0;
    or_ln194_1_reg_3415[1:0] <= 2'b11;
    or_ln194_3_reg_3420[3:0] <= 4'b1111;
    weights3_0_addr_50_reg_3425[1:0] <= 2'b11;
    weights3_0_addr_50_reg_3425[6] <= 1'b0;
    weights3_0_addr_50_reg_3425_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_50_reg_3425_pp0_iter1_reg[6] <= 1'b0;
    weights3_1_addr_50_reg_3430[1:0] <= 2'b11;
    weights3_1_addr_50_reg_3430[6] <= 1'b0;
    weights3_1_addr_50_reg_3430_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_1_addr_50_reg_3430_pp0_iter1_reg[6] <= 1'b0;
    weights3_0_addr_54_reg_3435[2:0] <= 3'b111;
    weights3_0_addr_54_reg_3435[6] <= 1'b0;
    weights3_0_addr_54_reg_3435_pp0_iter1_reg[2:0] <= 3'b111;
    weights3_0_addr_54_reg_3435_pp0_iter1_reg[6] <= 1'b0;
    weights3_0_addr_62_reg_3440[3:0] <= 4'b1111;
    weights3_0_addr_62_reg_3440[6] <= 1'b0;
    weights3_0_addr_62_reg_3440_pp0_iter1_reg[3:0] <= 4'b1111;
    weights3_0_addr_62_reg_3440_pp0_iter1_reg[6] <= 1'b0;
    weights3_1_addr_62_reg_3445[3:0] <= 4'b1111;
    weights3_1_addr_62_reg_3445[6] <= 1'b0;
    weights3_1_addr_62_reg_3445_pp0_iter1_reg[3:0] <= 4'b1111;
    weights3_1_addr_62_reg_3445_pp0_iter1_reg[6] <= 1'b0;
    zext_ln194_4_reg_3480[1:0] <= 2'b11;
    zext_ln194_4_reg_3480[6] <= 1'b0;
    weights3_0_addr_51_reg_3504[1:0] <= 2'b00;
    weights3_0_addr_51_reg_3504_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_0_addr_53_reg_3519[1:0] <= 2'b10;
    weights3_0_addr_53_reg_3519_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_1_addr_53_reg_3524[1:0] <= 2'b10;
    weights3_1_addr_53_reg_3524_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_56_reg_3564[1:0] <= 2'b01;
    weights3_0_addr_56_reg_3564_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_1_addr_56_reg_3569[1:0] <= 2'b01;
    weights3_1_addr_56_reg_3569_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_57_reg_3574[1:0] <= 2'b10;
    weights3_0_addr_57_reg_3574_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_59_reg_3610[1:0] <= 2'b00;
    weights3_0_addr_59_reg_3610_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_1_addr_59_reg_3615[1:0] <= 2'b00;
    weights3_1_addr_59_reg_3615_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_0_addr_60_reg_3641[1:0] <= 2'b01;
    weights3_0_addr_60_reg_3641_pp0_iter1_reg[1:0] <= 2'b01;
    zext_ln194_21_reg_3661[3:0] <= 4'b1111;
    zext_ln194_21_reg_3661[6] <= 1'b0;
    weights3_0_addr_63_reg_3695[3:0] <= 4'b0000;
    weights3_0_addr_63_reg_3695_pp0_iter1_reg[3:0] <= 4'b0000;
    weights3_0_addr_65_reg_3730[3:0] <= 4'b0010;
    weights3_0_addr_65_reg_3730_pp0_iter1_reg[3:0] <= 4'b0010;
    weights3_1_addr_65_reg_3735[3:0] <= 4'b0010;
    weights3_1_addr_65_reg_3735_pp0_iter1_reg[3:0] <= 4'b0010;
    weights3_0_addr_66_reg_3740[3:0] <= 4'b0011;
    weights3_0_addr_66_reg_3740_pp0_iter1_reg[3:0] <= 4'b0011;
    weights3_0_addr_68_reg_3776[3:0] <= 4'b0101;
    weights3_0_addr_68_reg_3776_pp0_iter1_reg[3:0] <= 4'b0101;
    weights3_1_addr_68_reg_3781[3:0] <= 4'b0101;
    weights3_1_addr_68_reg_3781_pp0_iter1_reg[3:0] <= 4'b0101;
    weights3_0_addr_69_reg_3796[3:0] <= 4'b0110;
    weights3_0_addr_69_reg_3796_pp0_iter1_reg[3:0] <= 4'b0110;
    weights3_0_addr_71_reg_3843[3:0] <= 4'b1000;
    weights3_0_addr_71_reg_3843_pp0_iter1_reg[3:0] <= 4'b1000;
    weights3_1_addr_71_reg_3848[3:0] <= 4'b1000;
    weights3_1_addr_71_reg_3848_pp0_iter1_reg[3:0] <= 4'b1000;
    weights3_0_addr_72_reg_3853[3:0] <= 4'b1001;
    weights3_0_addr_72_reg_3853_pp0_iter1_reg[3:0] <= 4'b1001;
    weights3_0_addr_74_reg_3901[3:0] <= 4'b1011;
    weights3_0_addr_74_reg_3901_pp0_iter1_reg[3:0] <= 4'b1011;
    weights3_1_addr_74_reg_3907[3:0] <= 4'b1011;
    weights3_1_addr_74_reg_3907_pp0_iter1_reg[3:0] <= 4'b1011;
    weights3_0_addr_75_reg_3933[3:0] <= 4'b1100;
    weights3_0_addr_75_reg_3933_pp0_iter1_reg[3:0] <= 4'b1100;
    weights3_0_addr_77_reg_3980[3:0] <= 4'b1110;
    weights3_0_addr_77_reg_3980_pp0_iter1_reg[3:0] <= 4'b1110;
    weights3_1_addr_77_reg_3985[3:0] <= 4'b1110;
    weights3_1_addr_77_reg_3985_pp0_iter1_reg[3:0] <= 4'b1110;
    weights3_0_addr_78_reg_3990[3:0] <= 4'b1111;
    weights3_0_addr_78_reg_3990_pp0_iter1_reg[3:0] <= 4'b1111;
    weights3_0_addr_80_reg_4038[3:0] <= 4'b0001;
    weights3_0_addr_80_reg_4038_pp0_iter1_reg[3:0] <= 4'b0001;
    weights3_1_addr_80_reg_4044[3:0] <= 4'b0001;
    weights3_1_addr_80_reg_4044_pp0_iter1_reg[3:0] <= 4'b0001;
    weights3_0_addr_81_reg_4070[3:0] <= 4'b0010;
    weights3_0_addr_81_reg_4070_pp0_iter1_reg[3:0] <= 4'b0010;
    weights3_0_addr_83_reg_4115[3:0] <= 4'b0100;
    weights3_0_addr_83_reg_4115_pp0_iter1_reg[3:0] <= 4'b0100;
    weights3_0_addr_83_reg_4115_pp0_iter2_reg[3:0] <= 4'b0100;
    weights3_1_addr_83_reg_4121[3:0] <= 4'b0100;
    weights3_1_addr_83_reg_4121_pp0_iter1_reg[3:0] <= 4'b0100;
    weights3_1_addr_83_reg_4121_pp0_iter2_reg[3:0] <= 4'b0100;
    weights3_0_addr_84_reg_4127[3:0] <= 4'b0101;
    weights3_0_addr_84_reg_4127_pp0_iter1_reg[3:0] <= 4'b0101;
    weights3_0_addr_84_reg_4127_pp0_iter2_reg[3:0] <= 4'b0101;
    weights3_0_addr_86_reg_4175[3:0] <= 4'b0111;
    weights3_0_addr_86_reg_4175_pp0_iter1_reg[3:0] <= 4'b0111;
    weights3_0_addr_86_reg_4175_pp0_iter2_reg[3:0] <= 4'b0111;
    weights3_1_addr_86_reg_4180[3:0] <= 4'b0111;
    weights3_1_addr_86_reg_4180_pp0_iter1_reg[3:0] <= 4'b0111;
    weights3_1_addr_86_reg_4180_pp0_iter2_reg[3:0] <= 4'b0111;
    weights3_0_addr_87_reg_4205[3:0] <= 4'b1000;
    weights3_0_addr_87_reg_4205_pp0_iter1_reg[3:0] <= 4'b1000;
    weights3_0_addr_87_reg_4205_pp0_iter2_reg[3:0] <= 4'b1000;
    weights3_0_addr_89_reg_4252[3:0] <= 4'b1010;
    weights3_0_addr_89_reg_4252_pp0_iter1_reg[3:0] <= 4'b1010;
    weights3_0_addr_89_reg_4252_pp0_iter2_reg[3:0] <= 4'b1010;
    weights3_1_addr_89_reg_4258[3:0] <= 4'b1010;
    weights3_1_addr_89_reg_4258_pp0_iter1_reg[3:0] <= 4'b1010;
    weights3_1_addr_89_reg_4258_pp0_iter2_reg[3:0] <= 4'b1010;
    weights3_0_addr_90_reg_4264[3:0] <= 4'b1011;
    weights3_0_addr_90_reg_4264_pp0_iter1_reg[3:0] <= 4'b1011;
    weights3_0_addr_90_reg_4264_pp0_iter2_reg[3:0] <= 4'b1011;
    weights3_0_addr_92_reg_4317[3:0] <= 4'b1101;
    weights3_0_addr_92_reg_4317_pp0_iter1_reg[3:0] <= 4'b1101;
    weights3_0_addr_92_reg_4317_pp0_iter2_reg[3:0] <= 4'b1101;
    weights3_1_addr_92_reg_4322[3:0] <= 4'b1101;
    weights3_1_addr_92_reg_4322_pp0_iter1_reg[3:0] <= 4'b1101;
    weights3_1_addr_92_reg_4322_pp0_iter2_reg[3:0] <= 4'b1101;
    weights3_0_addr_93_reg_4347[3:0] <= 4'b1110;
    weights3_0_addr_93_reg_4347_pp0_iter1_reg[3:0] <= 4'b1110;
    weights3_0_addr_93_reg_4347_pp0_iter2_reg[3:0] <= 4'b1110;
end
endmodule 
