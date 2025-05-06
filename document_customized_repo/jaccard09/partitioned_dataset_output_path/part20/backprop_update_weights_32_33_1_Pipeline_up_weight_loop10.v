
module backprop_update_weights_32_33_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_164);  
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
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [5:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_164;
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
reg   [0:0] tmp_reg_3228;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1004;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_1008;
reg   [63:0] reg_1012;
reg   [63:0] reg_1016;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_1020;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_1025;
reg   [63:0] reg_1030;
reg   [63:0] reg_1035;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_1040;
reg   [63:0] reg_1045;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_1050;
reg   [63:0] reg_1055;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_1059;
reg   [63:0] reg_1064;
reg   [63:0] reg_1069;
reg   [63:0] reg_1073;
reg   [63:0] reg_1077;
reg   [63:0] reg_1081;
reg   [63:0] reg_1086;
reg   [63:0] reg_1091;
reg   [63:0] reg_1095;
reg   [63:0] reg_1100;
reg   [63:0] reg_1105;
reg   [63:0] reg_1110;
reg   [63:0] reg_1114;
wire   [63:0] grp_fu_988_p2;
reg   [63:0] reg_1118;
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
wire   [63:0] grp_fu_992_p2;
reg   [63:0] reg_1122;
wire   [63:0] grp_fu_996_p2;
reg   [63:0] reg_1126;
wire   [63:0] grp_fu_1000_p2;
reg   [63:0] reg_1130;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1134;
reg   [63:0] reg_1138;
reg   [6:0] i_4_reg_3223;
reg   [5:0] weights3_0_addr_reg_3232;
reg   [5:0] weights3_0_addr_reg_3232_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_reg_3232_pp0_iter2_reg;
wire   [7:0] empty_fu_1223_p2;
reg   [7:0] empty_reg_3237;
wire   [4:0] or_ln5_fu_1254_p3;
reg   [4:0] or_ln5_reg_3288;
reg   [5:0] weights3_1_addr_reg_3293;
reg   [5:0] weights3_1_addr_reg_3293_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_reg_3293_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_reg_3298;
reg   [5:0] weights3_2_addr_reg_3298_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_reg_3298_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_reg_3303;
reg   [5:0] weights3_3_addr_reg_3303_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_reg_3303_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_26_reg_3308;
reg   [5:0] weights3_0_addr_26_reg_3308_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_26_reg_3308_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_26_reg_3314;
reg   [5:0] weights3_1_addr_26_reg_3314_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_26_reg_3314_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_26_reg_3320;
reg   [5:0] weights3_2_addr_26_reg_3320_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_26_reg_3320_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_24_reg_3325;
reg   [5:0] weights3_2_addr_24_reg_3325_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_24_reg_3325_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_24_reg_3330;
reg   [5:0] weights3_3_addr_24_reg_3330_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_24_reg_3330_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_25_reg_3335;
reg   [5:0] weights3_0_addr_25_reg_3335_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_25_reg_3335_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_25_reg_3340;
reg   [5:0] weights3_1_addr_25_reg_3340_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_25_reg_3340_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_25_reg_3345;
reg   [5:0] weights3_2_addr_25_reg_3345_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_25_reg_3345_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_25_reg_3350;
reg   [5:0] weights3_3_addr_25_reg_3350_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_25_reg_3350_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_28_reg_3355;
reg   [5:0] weights3_0_addr_28_reg_3355_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_28_reg_3355_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_28_reg_3360;
reg   [5:0] weights3_1_addr_28_reg_3360_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_28_reg_3360_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_28_reg_3365;
reg   [5:0] weights3_2_addr_28_reg_3365_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_28_reg_3365_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_28_reg_3371;
reg   [5:0] weights3_3_addr_28_reg_3371_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_28_reg_3371_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_fu_1374_p1;
wire   [63:0] bitcast_ln194_1_fu_1500_p1;
wire   [63:0] bitcast_ln194_2_fu_1505_p1;
wire   [63:0] bitcast_ln194_3_fu_1510_p1;
reg   [5:0] weights3_0_addr_24_reg_3396;
reg   [5:0] weights3_0_addr_24_reg_3396_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_24_reg_3396_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_24_reg_3401;
reg   [5:0] weights3_1_addr_24_reg_3401_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_24_reg_3401_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_26_reg_3406;
reg   [5:0] weights3_3_addr_26_reg_3406_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_26_reg_3406_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_27_reg_3411;
reg   [5:0] weights3_0_addr_27_reg_3411_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_27_reg_3411_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_27_reg_3417;
reg   [5:0] weights3_1_addr_27_reg_3417_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_27_reg_3417_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_27_reg_3423;
reg   [5:0] weights3_2_addr_27_reg_3423_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_27_reg_3423_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_27_reg_3429;
reg   [5:0] weights3_3_addr_27_reg_3429_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_27_reg_3429_pp0_iter2_reg;
wire   [5:0] or_ln194_cast214_fu_1515_p1;
reg   [5:0] or_ln194_cast214_reg_3434;
wire   [63:0] bitcast_ln194_8_fu_1612_p1;
wire   [63:0] bitcast_ln194_9_fu_1617_p1;
wire   [63:0] bitcast_ln194_10_fu_1622_p1;
wire   [63:0] bitcast_ln194_20_fu_1627_p1;
reg   [5:0] weights3_0_addr_29_reg_3463;
reg   [5:0] weights3_0_addr_29_reg_3463_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_29_reg_3463_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_29_reg_3468;
reg   [5:0] weights3_1_addr_29_reg_3468_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_29_reg_3468_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_29_reg_3473;
reg   [5:0] weights3_2_addr_29_reg_3473_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_29_reg_3473_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_29_reg_3478;
reg   [5:0] weights3_3_addr_29_reg_3478_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_29_reg_3478_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_30_reg_3483;
reg   [5:0] weights3_0_addr_30_reg_3483_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_30_reg_3483_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_30_reg_3489;
reg   [5:0] weights3_1_addr_30_reg_3489_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_30_reg_3489_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_30_reg_3495;
reg   [5:0] weights3_2_addr_30_reg_3495_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_30_reg_3495_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_30_reg_3501;
reg   [5:0] weights3_3_addr_30_reg_3501_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_30_reg_3501_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_12_fu_1686_p1;
wire   [63:0] bitcast_ln194_13_fu_1691_p1;
wire   [63:0] bitcast_ln194_21_fu_1696_p1;
wire   [63:0] bitcast_ln194_22_fu_1701_p1;
reg   [5:0] weights3_0_addr_31_reg_3526;
reg   [5:0] weights3_0_addr_31_reg_3526_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_31_reg_3526_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_31_reg_3531;
reg   [5:0] weights3_1_addr_31_reg_3531_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_31_reg_3531_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_31_reg_3536;
reg   [5:0] weights3_2_addr_31_reg_3536_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_31_reg_3536_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_31_reg_3541;
reg   [5:0] weights3_3_addr_31_reg_3541_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_31_reg_3541_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_32_reg_3547;
reg   [5:0] weights3_0_addr_32_reg_3547_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_32_reg_3547_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_32_reg_3553;
reg   [5:0] weights3_1_addr_32_reg_3553_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_32_reg_3553_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_32_reg_3559;
reg   [5:0] weights3_2_addr_32_reg_3559_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_32_reg_3559_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_4_fu_1829_p1;
wire   [63:0] bitcast_ln194_5_fu_1834_p1;
wire   [63:0] bitcast_ln194_6_fu_1839_p1;
wire   [63:0] bitcast_ln194_14_fu_1844_p1;
reg   [5:0] weights3_3_addr_32_reg_3585;
reg   [5:0] weights3_3_addr_32_reg_3585_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_32_reg_3585_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_33_reg_3590;
reg   [5:0] weights3_0_addr_33_reg_3590_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_33_reg_3590_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_33_reg_3595;
reg   [5:0] weights3_1_addr_33_reg_3595_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_33_reg_3595_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_33_reg_3600;
reg   [5:0] weights3_2_addr_33_reg_3600_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_33_reg_3600_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_33_reg_3605;
reg   [5:0] weights3_3_addr_33_reg_3605_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_33_reg_3605_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_34_reg_3611;
reg   [5:0] weights3_0_addr_34_reg_3611_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_34_reg_3611_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_34_reg_3611_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_34_reg_3617;
reg   [5:0] weights3_1_addr_34_reg_3617_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_34_reg_3617_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_34_reg_3617_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_34_reg_3623;
reg   [5:0] weights3_2_addr_34_reg_3623_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_34_reg_3623_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_34_reg_3623_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_34_reg_3629;
reg   [5:0] weights3_3_addr_34_reg_3629_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_34_reg_3629_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_7_fu_1942_p1;
wire   [63:0] bitcast_ln194_11_fu_1947_p1;
wire   [63:0] bitcast_ln194_15_fu_1952_p1;
wire   [63:0] bitcast_ln194_16_fu_1957_p1;
reg   [63:0] weights3_0_load_34_reg_3655;
reg   [63:0] weights3_1_load_34_reg_3660;
reg   [63:0] weights3_2_load_34_reg_3665;
reg   [5:0] weights3_0_addr_35_reg_3670;
reg   [5:0] weights3_0_addr_35_reg_3670_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_35_reg_3670_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_35_reg_3670_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_35_reg_3676;
reg   [5:0] weights3_1_addr_35_reg_3676_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_35_reg_3676_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_35_reg_3676_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_35_reg_3682;
reg   [5:0] weights3_2_addr_35_reg_3682_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_35_reg_3682_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_35_reg_3682_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_35_reg_3688;
reg   [5:0] weights3_3_addr_35_reg_3688_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_35_reg_3688_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_35_reg_3688_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_36_reg_3693;
reg   [5:0] weights3_0_addr_36_reg_3693_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_36_reg_3693_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_36_reg_3693_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_36_reg_3698;
reg   [5:0] weights3_1_addr_36_reg_3698_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_36_reg_3698_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_36_reg_3698_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_36_reg_3703;
reg   [5:0] weights3_2_addr_36_reg_3703_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_36_reg_3703_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_36_reg_3703_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_36_reg_3708;
reg   [5:0] weights3_3_addr_36_reg_3708_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_36_reg_3708_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_36_reg_3708_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_17_fu_2016_p1;
wire   [63:0] bitcast_ln194_18_fu_2021_p1;
wire   [63:0] bitcast_ln194_19_fu_2026_p1;
wire   [63:0] bitcast_ln194_23_fu_2031_p1;
reg   [63:0] weights3_0_load_35_reg_3734;
reg   [63:0] weights3_0_load_36_reg_3739;
reg   [63:0] weights3_1_load_36_reg_3744;
reg   [63:0] weights3_2_load_36_reg_3749;
reg   [5:0] weights3_0_addr_37_reg_3754;
reg   [5:0] weights3_0_addr_37_reg_3754_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_37_reg_3754_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_37_reg_3754_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_37_reg_3760;
reg   [5:0] weights3_1_addr_37_reg_3760_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_37_reg_3760_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_37_reg_3760_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_37_reg_3766;
reg   [5:0] weights3_2_addr_37_reg_3766_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_37_reg_3766_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_37_reg_3766_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_37_reg_3772;
reg   [5:0] weights3_3_addr_37_reg_3772_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_37_reg_3772_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_37_reg_3772_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_38_reg_3778;
reg   [5:0] weights3_0_addr_38_reg_3778_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_38_reg_3778_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_38_reg_3778_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_38_reg_3783;
reg   [5:0] weights3_1_addr_38_reg_3783_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_38_reg_3783_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_38_reg_3783_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_38_reg_3788;
reg   [5:0] weights3_2_addr_38_reg_3788_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_38_reg_3788_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_38_reg_3788_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_24_fu_2159_p1;
wire   [63:0] bitcast_ln194_25_fu_2164_p1;
wire   [63:0] bitcast_ln194_26_fu_2169_p1;
wire   [63:0] bitcast_ln194_27_fu_2174_p1;
reg   [63:0] weights3_0_load_38_reg_3813;
reg   [63:0] weights3_1_load_38_reg_3818;
reg   [63:0] weights3_2_load_38_reg_3823;
reg   [5:0] weights3_3_addr_38_reg_3828;
reg   [5:0] weights3_3_addr_38_reg_3828_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_38_reg_3828_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_38_reg_3828_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_39_reg_3834;
reg   [5:0] weights3_0_addr_39_reg_3834_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_39_reg_3834_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_39_reg_3834_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_39_reg_3840;
reg   [5:0] weights3_1_addr_39_reg_3840_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_39_reg_3840_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_39_reg_3840_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_39_reg_3845;
reg   [5:0] weights3_2_addr_39_reg_3845_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_39_reg_3845_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_39_reg_3845_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_39_reg_3850;
reg   [5:0] weights3_3_addr_39_reg_3850_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_39_reg_3850_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_39_reg_3850_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_40_reg_3856;
reg   [5:0] weights3_0_addr_40_reg_3856_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_40_reg_3856_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_40_reg_3856_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_40_reg_3862;
reg   [5:0] weights3_1_addr_40_reg_3862_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_40_reg_3862_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_40_reg_3862_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_40_reg_3867;
reg   [5:0] weights3_2_addr_40_reg_3867_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_40_reg_3867_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_40_reg_3867_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_40_reg_3872;
reg   [5:0] weights3_3_addr_40_reg_3872_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_40_reg_3872_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_40_reg_3872_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_28_fu_2272_p1;
wire   [63:0] bitcast_ln194_29_fu_2277_p1;
wire   [63:0] bitcast_ln194_30_fu_2282_p1;
wire   [63:0] bitcast_ln194_31_fu_2287_p1;
reg   [63:0] weights3_3_load_39_reg_3898;
reg   [63:0] weights3_0_load_40_reg_3903;
reg   [63:0] weights3_1_load_40_reg_3908;
reg   [63:0] weights3_2_load_40_reg_3913;
reg   [5:0] weights3_0_addr_41_reg_3918;
reg   [5:0] weights3_0_addr_41_reg_3918_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_41_reg_3918_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_41_reg_3918_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_41_reg_3924;
reg   [5:0] weights3_1_addr_41_reg_3924_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_41_reg_3924_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_41_reg_3924_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_41_reg_3930;
reg   [5:0] weights3_2_addr_41_reg_3930_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_41_reg_3930_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_41_reg_3930_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_41_reg_3936;
reg   [5:0] weights3_3_addr_41_reg_3936_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_41_reg_3936_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_41_reg_3936_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_42_reg_3942;
reg   [5:0] weights3_0_addr_42_reg_3942_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_42_reg_3942_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_42_reg_3942_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_42_reg_3947;
reg   [5:0] weights3_1_addr_42_reg_3947_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_42_reg_3947_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_42_reg_3947_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_42_reg_3952;
reg   [5:0] weights3_2_addr_42_reg_3952_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_42_reg_3952_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_42_reg_3952_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_42_reg_3957;
reg   [5:0] weights3_3_addr_42_reg_3957_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_42_reg_3957_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_42_reg_3957_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_32_fu_2346_p1;
wire   [63:0] bitcast_ln194_33_fu_2351_p1;
wire   [63:0] bitcast_ln194_34_fu_2356_p1;
wire   [63:0] bitcast_ln194_35_fu_2361_p1;
reg   [63:0] weights3_3_load_41_reg_3983;
reg   [63:0] weights3_0_load_42_reg_3988;
reg   [63:0] weights3_1_load_42_reg_3993;
reg   [63:0] weights3_2_load_42_reg_3998;
reg   [5:0] weights3_0_addr_43_reg_4003;
reg   [5:0] weights3_0_addr_43_reg_4003_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_43_reg_4003_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_43_reg_4003_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_43_reg_4009;
reg   [5:0] weights3_1_addr_43_reg_4009_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_43_reg_4009_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_43_reg_4009_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_43_reg_4015;
reg   [5:0] weights3_2_addr_43_reg_4015_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_43_reg_4015_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_43_reg_4015_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_43_reg_4021;
reg   [5:0] weights3_3_addr_43_reg_4021_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_43_reg_4021_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_43_reg_4021_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_44_reg_4026;
reg   [5:0] weights3_0_addr_44_reg_4026_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_44_reg_4026_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_44_reg_4026_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_44_reg_4031;
reg   [5:0] weights3_1_addr_44_reg_4031_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_44_reg_4031_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_44_reg_4031_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_44_reg_4036;
reg   [5:0] weights3_2_addr_44_reg_4036_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_44_reg_4036_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_44_reg_4036_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_36_fu_2489_p1;
wire   [63:0] bitcast_ln194_37_fu_2494_p1;
wire   [63:0] bitcast_ln194_38_fu_2499_p1;
wire   [63:0] bitcast_ln194_39_fu_2504_p1;
reg   [63:0] weights3_3_load_43_reg_4061;
reg   [63:0] weights3_0_load_44_reg_4066;
reg   [63:0] weights3_1_load_44_reg_4071;
reg   [63:0] weights3_2_load_44_reg_4076;
reg   [5:0] weights3_3_addr_44_reg_4081;
reg   [5:0] weights3_3_addr_44_reg_4081_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_44_reg_4081_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_44_reg_4081_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_45_reg_4087;
reg   [5:0] weights3_0_addr_45_reg_4087_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_45_reg_4087_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_45_reg_4087_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_45_reg_4093;
reg   [5:0] weights3_1_addr_45_reg_4093_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_45_reg_4093_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_45_reg_4093_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_45_reg_4099;
reg   [5:0] weights3_2_addr_45_reg_4099_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_45_reg_4099_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_45_reg_4099_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_45_reg_4105;
reg   [5:0] weights3_3_addr_45_reg_4105_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_45_reg_4105_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_45_reg_4105_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_46_reg_4110;
reg   [5:0] weights3_0_addr_46_reg_4110_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_46_reg_4110_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_46_reg_4110_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_46_reg_4115;
reg   [5:0] weights3_1_addr_46_reg_4115_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_46_reg_4115_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_46_reg_4115_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_46_reg_4120;
reg   [5:0] weights3_2_addr_46_reg_4120_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_46_reg_4120_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_46_reg_4120_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_46_reg_4125;
reg   [5:0] weights3_3_addr_46_reg_4125_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_46_reg_4125_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_46_reg_4125_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_40_fu_2509_p1;
wire   [63:0] bitcast_ln194_41_fu_2514_p1;
wire   [63:0] bitcast_ln194_42_fu_2519_p1;
wire   [63:0] bitcast_ln194_43_fu_2524_p1;
reg   [63:0] weights3_3_load_45_reg_4151;
reg   [63:0] weights3_0_load_46_reg_4156;
reg   [63:0] weights3_1_load_46_reg_4161;
reg   [63:0] weights3_2_load_46_reg_4166;
wire   [63:0] bitcast_ln194_44_fu_2529_p1;
wire   [63:0] bitcast_ln194_45_fu_2533_p1;
wire   [63:0] bitcast_ln194_46_fu_2537_p1;
wire   [63:0] bitcast_ln194_47_fu_2541_p1;
wire   [63:0] bitcast_ln194_48_fu_2546_p1;
wire   [63:0] bitcast_ln194_49_fu_2550_p1;
wire   [63:0] bitcast_ln194_50_fu_2555_p1;
wire   [63:0] bitcast_ln194_51_fu_2560_p1;
wire   [63:0] bitcast_ln194_52_fu_2565_p1;
wire   [63:0] bitcast_ln194_53_fu_2569_p1;
wire   [63:0] bitcast_ln194_54_fu_2573_p1;
wire   [63:0] bitcast_ln194_55_fu_2577_p1;
wire   [63:0] bitcast_ln194_56_fu_2582_p1;
wire   [63:0] bitcast_ln194_57_fu_2587_p1;
wire   [63:0] bitcast_ln194_58_fu_2592_p1;
wire   [63:0] bitcast_ln194_59_fu_2597_p1;
wire   [63:0] bitcast_ln194_60_fu_2602_p1;
wire   [63:0] bitcast_ln194_61_fu_2606_p1;
wire   [63:0] bitcast_ln194_62_fu_2610_p1;
wire   [63:0] bitcast_ln194_63_fu_2614_p1;
wire   [63:0] bitcast_ln194_64_fu_2619_p1;
wire   [63:0] bitcast_ln194_65_fu_2624_p1;
wire   [63:0] bitcast_ln194_66_fu_2629_p1;
wire   [63:0] bitcast_ln194_67_fu_2634_p1;
wire   [63:0] bitcast_ln194_68_fu_2638_p1;
wire   [63:0] bitcast_ln194_69_fu_2642_p1;
wire   [63:0] bitcast_ln194_70_fu_2646_p1;
wire   [63:0] bitcast_ln194_71_fu_2650_p1;
wire   [63:0] bitcast_ln194_72_fu_2655_p1;
wire   [63:0] bitcast_ln194_73_fu_2660_p1;
wire   [63:0] bitcast_ln194_74_fu_2665_p1;
wire   [63:0] bitcast_ln194_75_fu_2670_p1;
wire   [63:0] bitcast_ln194_76_fu_2674_p1;
wire   [63:0] bitcast_ln194_77_fu_2678_p1;
wire   [63:0] bitcast_ln194_78_fu_2682_p1;
wire   [63:0] bitcast_ln194_79_fu_2686_p1;
wire   [63:0] bitcast_ln194_80_fu_2691_p1;
wire   [63:0] bitcast_ln194_81_fu_2696_p1;
wire   [63:0] bitcast_ln194_82_fu_2701_p1;
wire   [63:0] bitcast_ln194_83_fu_2706_p1;
wire   [63:0] bitcast_ln194_84_fu_2710_p1;
wire   [63:0] bitcast_ln194_85_fu_2714_p1;
wire   [63:0] bitcast_ln194_86_fu_2718_p1;
wire   [63:0] bitcast_ln194_87_fu_2722_p1;
wire   [63:0] bitcast_ln194_88_fu_2737_p1;
wire   [63:0] bitcast_ln194_89_fu_2742_p1;
wire   [63:0] bitcast_ln194_90_fu_2747_p1;
wire   [63:0] bitcast_ln194_91_fu_2752_p1;
wire   [63:0] bitcast_ln194_92_fu_2756_p1;
wire   [63:0] bitcast_ln194_93_fu_2760_p1;
wire   [63:0] bitcast_ln194_94_fu_2764_p1;
wire   [63:0] bitcast_ln194_95_fu_2768_p1;
reg   [63:0] div213_16_reg_4431;
reg   [63:0] div213_16_1_reg_4436;
reg   [63:0] div213_17_1_reg_4441;
reg   [63:0] div213_17_2_reg_4446;
reg   [63:0] div213_18_reg_4451;
reg   [63:0] div213_18_2_reg_4456;
reg   [63:0] div213_19_reg_4461;
reg   [63:0] div213_19_1_reg_4466;
reg   [63:0] div213_19_2_reg_4471;
reg   [63:0] div213_20_reg_4476;
reg   [63:0] div213_20_1_reg_4481;
reg   [63:0] div213_20_2_reg_4486;
reg   [63:0] div213_21_reg_4491;
reg   [63:0] div213_21_1_reg_4496;
reg   [63:0] div213_21_2_reg_4501;
reg   [63:0] div213_22_reg_4506;
reg   [63:0] div213_22_1_reg_4511;
reg   [63:0] div213_22_2_reg_4516;
reg   [63:0] div213_23_reg_4521;
reg   [63:0] div213_23_1_reg_4526;
reg   [63:0] div213_23_2_reg_4531;
reg   [63:0] div213_24_reg_4536;
reg   [63:0] div213_24_1_reg_4541;
reg   [63:0] div213_24_2_reg_4546;
reg   [63:0] div213_25_reg_4551;
reg   [63:0] div213_25_1_reg_4556;
reg   [63:0] div213_25_2_reg_4561;
reg   [63:0] div213_26_reg_4566;
reg   [63:0] div213_26_1_reg_4571;
reg   [63:0] div213_26_2_reg_4576;
reg   [63:0] div213_27_reg_4581;
reg   [63:0] div213_27_1_reg_4586;
reg   [63:0] div213_27_2_reg_4591;
reg   [63:0] div213_28_reg_4596;
reg   [63:0] div213_28_1_reg_4601;
reg   [63:0] div213_28_2_reg_4606;
reg   [63:0] div213_29_reg_4611;
reg   [63:0] div213_29_1_reg_4616;
reg   [63:0] div213_29_2_reg_4621;
reg   [63:0] div213_30_reg_4626;
reg   [63:0] div213_30_1_reg_4631;
reg   [63:0] div213_30_2_reg_4636;
reg   [63:0] div213_31_reg_4641;
reg   [63:0] div213_31_1_reg_4646;
reg   [63:0] div213_31_2_reg_4651;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_1186_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_1239_p1;
wire   [63:0] or_ln194_cast_fu_1262_p1;
wire   [63:0] zext_ln194_3_fu_1284_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] lshr_ln194_5_cast_fu_1305_p1;
wire   [63:0] zext_ln194_4_fu_1325_p1;
wire   [63:0] lshr_ln194_11_cast_fu_1347_p1;
wire   [63:0] zext_ln194_8_fu_1367_p1;
wire   [63:0] zext_ln194_2_fu_1394_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] lshr_ln194_3_cast_fu_1414_p1;
wire   [63:0] zext_ln194_5_fu_1434_p1;
wire   [63:0] zext_ln194_6_fu_1454_p1;
wire   [63:0] lshr_ln194_9_cast_fu_1474_p1;
wire   [63:0] zext_ln194_7_fu_1494_p1;
wire   [63:0] add_ln194_6_cast_fu_1524_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_9_fu_1546_p1;
wire   [63:0] zext_ln194_10_fu_1566_p1;
wire   [63:0] lshr_ln194_15_cast_fu_1586_p1;
wire   [63:0] zext_ln194_11_fu_1606_p1;
wire   [63:0] lshr_ln194_17_cast_fu_1647_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln194_12_fu_1667_p1;
wire   [63:0] add_ln194_10_cast_fu_1679_p1;
wire   [63:0] zext_ln194_13_fu_1721_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_14_fu_1741_p1;
wire   [63:0] lshr_ln194_21_cast_fu_1761_p1;
wire   [63:0] zext_ln194_15_fu_1781_p1;
wire   [63:0] lshr_ln194_23_cast_fu_1802_p1;
wire   [63:0] zext_ln194_16_fu_1822_p1;
wire   [63:0] add_ln194_14_cast_fu_1854_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln194_17_fu_1876_p1;
wire   [63:0] zext_ln194_18_fu_1896_p1;
wire   [63:0] lshr_ln194_27_cast_fu_1916_p1;
wire   [63:0] zext_ln194_19_fu_1936_p1;
wire   [63:0] lshr_ln194_29_cast_fu_1977_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln194_20_fu_1997_p1;
wire   [63:0] add_ln194_18_cast_fu_2009_p1;
wire   [63:0] zext_ln194_21_fu_2051_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln194_22_fu_2071_p1;
wire   [63:0] lshr_ln194_33_cast_fu_2091_p1;
wire   [63:0] zext_ln194_23_fu_2111_p1;
wire   [63:0] lshr_ln194_35_cast_fu_2132_p1;
wire   [63:0] zext_ln194_24_fu_2152_p1;
wire   [63:0] add_ln194_22_cast_fu_2184_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln194_25_fu_2206_p1;
wire   [63:0] zext_ln194_26_fu_2226_p1;
wire   [63:0] lshr_ln194_39_cast_fu_2246_p1;
wire   [63:0] zext_ln194_27_fu_2266_p1;
wire   [63:0] lshr_ln194_41_cast_fu_2307_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln194_28_fu_2327_p1;
wire   [63:0] add_ln194_26_cast_fu_2339_p1;
wire   [63:0] zext_ln194_29_fu_2381_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln194_30_fu_2401_p1;
wire   [63:0] lshr_ln194_45_cast_fu_2421_p1;
wire   [63:0] zext_ln194_31_fu_2441_p1;
wire   [63:0] lshr_ln194_47_cast_fu_2462_p1;
wire   [63:0] zext_ln194_32_fu_2482_p1;
reg   [6:0] i_fu_182;
wire   [6:0] add_ln192_fu_2727_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [5:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [5:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln194_96_fu_2773_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln194_98_fu_2793_p1;
wire    ap_block_pp0_stage14;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_101_fu_2798_p1;
wire   [63:0] bitcast_ln194_99_fu_2813_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln194_97_fu_2833_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] bitcast_ln194_100_fu_2853_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] bitcast_ln194_102_fu_2888_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln194_103_fu_2913_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln194_104_fu_2933_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln194_105_fu_2953_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln194_106_fu_2973_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln194_107_fu_2998_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] bitcast_ln194_108_fu_3003_p1;
wire   [63:0] bitcast_ln194_109_fu_3031_p1;
wire   [63:0] bitcast_ln194_110_fu_3064_p1;
wire   [63:0] bitcast_ln194_111_fu_3080_p1;
wire   [63:0] bitcast_ln194_112_fu_3096_p1;
wire   [63:0] bitcast_ln194_113_fu_3116_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln194_115_fu_3120_p1;
wire   [63:0] bitcast_ln194_116_fu_3132_p1;
wire   [63:0] bitcast_ln194_118_fu_3144_p1;
wire   [63:0] bitcast_ln194_119_fu_3160_p1;
wire   [63:0] bitcast_ln194_114_fu_3176_p1;
wire   [63:0] bitcast_ln194_117_fu_3192_p1;
reg    weights3_1_ce1_local;
reg   [5:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [5:0] weights3_1_address0_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln194_120_fu_2778_p1;
wire   [63:0] bitcast_ln194_122_fu_2803_p1;
wire   [63:0] bitcast_ln194_123_fu_2818_p1;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_125_fu_2823_p1;
wire   [63:0] bitcast_ln194_121_fu_2838_p1;
wire   [63:0] bitcast_ln194_124_fu_2868_p1;
wire   [63:0] bitcast_ln194_126_fu_2893_p1;
wire   [63:0] bitcast_ln194_127_fu_2918_p1;
wire   [63:0] bitcast_ln194_128_fu_2938_p1;
wire   [63:0] bitcast_ln194_129_fu_2958_p1;
wire   [63:0] bitcast_ln194_130_fu_2978_p1;
wire   [63:0] bitcast_ln194_131_fu_3007_p1;
wire   [63:0] bitcast_ln194_132_fu_3012_p1;
wire   [63:0] bitcast_ln194_133_fu_3035_p1;
wire   [63:0] bitcast_ln194_134_fu_3048_p1;
wire   [63:0] bitcast_ln194_135_fu_3084_p1;
wire   [63:0] bitcast_ln194_136_fu_3100_p1;
wire   [63:0] bitcast_ln194_137_fu_3104_p1;
wire   [63:0] bitcast_ln194_139_fu_3124_p1;
wire   [63:0] bitcast_ln194_140_fu_3136_p1;
wire   [63:0] bitcast_ln194_142_fu_3148_p1;
wire   [63:0] bitcast_ln194_143_fu_3164_p1;
wire   [63:0] bitcast_ln194_138_fu_3180_p1;
wire   [63:0] bitcast_ln194_141_fu_3196_p1;
reg    weights3_2_ce1_local;
reg   [5:0] weights3_2_address1_local;
reg    weights3_2_ce0_local;
reg   [5:0] weights3_2_address0_local;
reg    weights3_2_we1_local;
reg   [63:0] weights3_2_d1_local;
wire   [63:0] bitcast_ln194_144_fu_2783_p1;
wire   [63:0] bitcast_ln194_146_fu_2808_p1;
wire   [63:0] bitcast_ln194_149_fu_2828_p1;
wire   [63:0] bitcast_ln194_145_fu_2843_p1;
reg    weights3_2_we0_local;
reg   [63:0] weights3_2_d0_local;
wire   [63:0] bitcast_ln194_147_fu_2848_p1;
wire   [63:0] bitcast_ln194_148_fu_2873_p1;
wire   [63:0] bitcast_ln194_150_fu_2898_p1;
wire   [63:0] bitcast_ln194_151_fu_2923_p1;
wire   [63:0] bitcast_ln194_152_fu_2943_p1;
wire   [63:0] bitcast_ln194_153_fu_2963_p1;
wire   [63:0] bitcast_ln194_154_fu_2983_p1;
wire   [63:0] bitcast_ln194_155_fu_3016_p1;
wire   [63:0] bitcast_ln194_156_fu_3021_p1;
wire   [63:0] bitcast_ln194_157_fu_3039_p1;
wire   [63:0] bitcast_ln194_158_fu_3052_p1;
wire   [63:0] bitcast_ln194_159_fu_3068_p1;
wire   [63:0] bitcast_ln194_160_fu_3108_p1;
wire   [63:0] bitcast_ln194_161_fu_3112_p1;
wire   [63:0] bitcast_ln194_163_fu_3128_p1;
wire   [63:0] bitcast_ln194_164_fu_3140_p1;
wire   [63:0] bitcast_ln194_166_fu_3152_p1;
wire   [63:0] bitcast_ln194_167_fu_3168_p1;
wire   [63:0] bitcast_ln194_162_fu_3184_p1;
wire   [63:0] bitcast_ln194_165_fu_3200_p1;
reg    weights3_3_ce1_local;
reg   [5:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    weights3_3_we1_local;
reg   [63:0] weights3_3_d1_local;
wire   [63:0] bitcast_ln194_168_fu_2788_p1;
wire   [63:0] bitcast_ln194_169_fu_2858_p1;
reg    weights3_3_we0_local;
reg   [63:0] weights3_3_d0_local;
wire   [63:0] bitcast_ln194_170_fu_2863_p1;
wire   [63:0] bitcast_ln194_171_fu_2878_p1;
wire   [63:0] bitcast_ln194_172_fu_2883_p1;
wire   [63:0] bitcast_ln194_173_fu_2903_p1;
wire   [63:0] bitcast_ln194_174_fu_2908_p1;
wire   [63:0] bitcast_ln194_175_fu_2928_p1;
wire   [63:0] bitcast_ln194_176_fu_2948_p1;
wire   [63:0] bitcast_ln194_177_fu_2968_p1;
wire   [63:0] bitcast_ln194_178_fu_2988_p1;
wire   [63:0] bitcast_ln194_179_fu_2993_p1;
wire   [63:0] bitcast_ln194_180_fu_3026_p1;
wire   [63:0] bitcast_ln194_181_fu_3043_p1;
wire   [63:0] bitcast_ln194_182_fu_3056_p1;
wire   [63:0] bitcast_ln194_183_fu_3060_p1;
wire   [63:0] bitcast_ln194_184_fu_3072_p1;
wire   [63:0] bitcast_ln194_185_fu_3076_p1;
wire   [63:0] bitcast_ln194_186_fu_3088_p1;
wire   [63:0] bitcast_ln194_187_fu_3092_p1;
wire   [63:0] bitcast_ln194_188_fu_3156_p1;
wire   [63:0] bitcast_ln194_189_fu_3172_p1;
wire   [63:0] bitcast_ln194_190_fu_3188_p1;
wire   [63:0] bitcast_ln194_191_fu_3204_p1;
reg   [63:0] grp_fu_988_p0;
reg   [63:0] grp_fu_992_p0;
reg   [63:0] grp_fu_996_p0;
reg   [63:0] grp_fu_1000_p0;
wire   [3:0] lshr_ln7_fu_1158_p4;
wire   [5:0] p_shl1_fu_1172_p3;
wire   [5:0] zext_ln194_33_fu_1168_p1;
wire   [5:0] sub_ln194_fu_1180_p2;
wire   [4:0] tmp_s_fu_1193_p4;
wire   [5:0] or_ln4_fu_1203_p3;
wire   [7:0] p_shl_fu_1215_p3;
wire   [7:0] or_ln192_cast_fu_1211_p1;
wire   [5:0] lshr_ln194_1_fu_1229_p4;
wire   [2:0] tmp_17_fu_1244_p4;
wire   [7:0] empty_59_fu_1269_p2;
wire   [5:0] lshr_ln194_4_fu_1274_p4;
wire   [7:0] add_ln194_2_fu_1290_p2;
wire   [5:0] lshr_ln194_5_fu_1295_p4;
wire   [7:0] empty_60_fu_1310_p2;
wire   [5:0] lshr_ln194_6_fu_1315_p4;
wire   [7:0] add_ln194_5_fu_1332_p2;
wire   [5:0] lshr_ln194_10_fu_1337_p4;
wire   [7:0] empty_63_fu_1352_p2;
wire   [5:0] lshr_ln194_11_fu_1357_p4;
wire   [7:0] add_ln194_fu_1379_p2;
wire   [5:0] lshr_ln194_2_fu_1384_p4;
wire   [7:0] add_ln194_1_fu_1399_p2;
wire   [5:0] lshr_ln194_3_fu_1404_p4;
wire   [7:0] empty_61_fu_1419_p2;
wire   [5:0] lshr_ln194_7_fu_1424_p4;
wire   [7:0] add_ln194_3_fu_1439_p2;
wire   [5:0] lshr_ln194_8_fu_1444_p4;
wire   [7:0] add_ln194_4_fu_1459_p2;
wire   [5:0] lshr_ln194_9_fu_1464_p4;
wire   [7:0] empty_62_fu_1479_p2;
wire   [5:0] lshr_ln194_s_fu_1484_p4;
wire   [5:0] add_ln194_6_fu_1518_p2;
wire   [7:0] empty_64_fu_1531_p2;
wire   [5:0] lshr_ln194_12_fu_1536_p4;
wire   [7:0] add_ln194_7_fu_1551_p2;
wire   [5:0] lshr_ln194_13_fu_1556_p4;
wire   [7:0] add_ln194_8_fu_1571_p2;
wire   [5:0] lshr_ln194_14_fu_1576_p4;
wire   [7:0] empty_65_fu_1591_p2;
wire   [5:0] lshr_ln194_15_fu_1596_p4;
wire   [7:0] add_ln194_9_fu_1632_p2;
wire   [5:0] lshr_ln194_16_fu_1637_p4;
wire   [7:0] empty_66_fu_1652_p2;
wire   [5:0] lshr_ln194_17_fu_1657_p4;
wire   [5:0] add_ln194_10_fu_1674_p2;
wire   [7:0] empty_67_fu_1706_p2;
wire   [5:0] lshr_ln194_18_fu_1711_p4;
wire   [7:0] add_ln194_11_fu_1726_p2;
wire   [5:0] lshr_ln194_19_fu_1731_p4;
wire   [7:0] add_ln194_12_fu_1746_p2;
wire   [5:0] lshr_ln194_20_fu_1751_p4;
wire   [7:0] empty_68_fu_1766_p2;
wire   [5:0] lshr_ln194_21_fu_1771_p4;
wire   [7:0] add_ln194_13_fu_1787_p2;
wire   [5:0] lshr_ln194_22_fu_1792_p4;
wire   [7:0] empty_69_fu_1807_p2;
wire   [5:0] lshr_ln194_23_fu_1812_p4;
wire   [5:0] add_ln194_14_fu_1849_p2;
wire   [7:0] empty_70_fu_1861_p2;
wire   [5:0] lshr_ln194_24_fu_1866_p4;
wire   [7:0] add_ln194_15_fu_1881_p2;
wire   [5:0] lshr_ln194_25_fu_1886_p4;
wire   [7:0] add_ln194_16_fu_1901_p2;
wire   [5:0] lshr_ln194_26_fu_1906_p4;
wire   [7:0] empty_71_fu_1921_p2;
wire   [5:0] lshr_ln194_27_fu_1926_p4;
wire   [7:0] add_ln194_17_fu_1962_p2;
wire   [5:0] lshr_ln194_28_fu_1967_p4;
wire   [7:0] empty_72_fu_1982_p2;
wire   [5:0] lshr_ln194_29_fu_1987_p4;
wire   [5:0] add_ln194_18_fu_2004_p2;
wire   [7:0] empty_73_fu_2036_p2;
wire   [5:0] lshr_ln194_30_fu_2041_p4;
wire   [7:0] add_ln194_19_fu_2056_p2;
wire   [5:0] lshr_ln194_31_fu_2061_p4;
wire   [7:0] add_ln194_20_fu_2076_p2;
wire   [5:0] lshr_ln194_32_fu_2081_p4;
wire   [7:0] empty_74_fu_2096_p2;
wire   [5:0] lshr_ln194_33_fu_2101_p4;
wire   [7:0] add_ln194_21_fu_2117_p2;
wire   [5:0] lshr_ln194_34_fu_2122_p4;
wire   [7:0] empty_75_fu_2137_p2;
wire   [5:0] lshr_ln194_35_fu_2142_p4;
wire   [5:0] add_ln194_22_fu_2179_p2;
wire   [7:0] empty_76_fu_2191_p2;
wire   [5:0] lshr_ln194_36_fu_2196_p4;
wire   [7:0] add_ln194_23_fu_2211_p2;
wire   [5:0] lshr_ln194_37_fu_2216_p4;
wire   [7:0] add_ln194_24_fu_2231_p2;
wire   [5:0] lshr_ln194_38_fu_2236_p4;
wire   [7:0] empty_77_fu_2251_p2;
wire   [5:0] lshr_ln194_39_fu_2256_p4;
wire   [7:0] add_ln194_25_fu_2292_p2;
wire   [5:0] lshr_ln194_40_fu_2297_p4;
wire   [7:0] empty_78_fu_2312_p2;
wire   [5:0] lshr_ln194_41_fu_2317_p4;
wire   [5:0] add_ln194_26_fu_2334_p2;
wire   [7:0] empty_79_fu_2366_p2;
wire   [5:0] lshr_ln194_42_fu_2371_p4;
wire   [7:0] add_ln194_27_fu_2386_p2;
wire   [5:0] lshr_ln194_43_fu_2391_p4;
wire   [7:0] add_ln194_28_fu_2406_p2;
wire   [5:0] lshr_ln194_44_fu_2411_p4;
wire   [7:0] empty_80_fu_2426_p2;
wire   [5:0] lshr_ln194_45_fu_2431_p4;
wire   [7:0] add_ln194_29_fu_2447_p2;
wire   [5:0] lshr_ln194_46_fu_2452_p4;
wire   [7:0] empty_81_fu_2467_p2;
wire   [5:0] lshr_ln194_47_fu_2472_p4;
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
#0 i_fu_182 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U630(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_988_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_988_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U631(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_992_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_992_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U632(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_996_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_996_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U633(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1000_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1000_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_182 <= 7'd0;
    end else if (((tmp_reg_3228 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        i_fu_182 <= add_ln192_fu_2727_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1020 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1020 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1025 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_1025 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        reg_1030 <= weights3_2_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1030 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        reg_1035 <= weights3_3_q1;
    end else if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1035 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1040 <= weights3_0_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1040 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        reg_1045 <= weights3_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1045 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1050 <= weights3_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1050 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1059 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1059 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1064 <= weights3_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1064 <= weights3_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_1081 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_1081 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_1086 <= weights3_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_1086 <= weights3_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            reg_1095 <= weights3_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1095 <= weights3_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_1100 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1100 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_1105 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1105 <= weights3_1_q0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div213_16_1_reg_4436 <= grp_fu_992_p2;
        div213_16_reg_4431 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_17_1_reg_4441 <= grp_fu_988_p2;
        div213_17_2_reg_4446 <= grp_fu_992_p2;
        div213_18_reg_4451 <= grp_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_18_2_reg_4456 <= grp_fu_988_p2;
        div213_19_1_reg_4466 <= grp_fu_996_p2;
        div213_19_2_reg_4471 <= grp_fu_1000_p2;
        div213_19_reg_4461 <= grp_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_20_1_reg_4481 <= grp_fu_992_p2;
        div213_20_2_reg_4486 <= grp_fu_996_p2;
        div213_20_reg_4476 <= grp_fu_988_p2;
        div213_21_reg_4491 <= grp_fu_1000_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_21_1_reg_4496 <= grp_fu_988_p2;
        div213_21_2_reg_4501 <= grp_fu_992_p2;
        div213_22_1_reg_4511 <= grp_fu_1000_p2;
        div213_22_reg_4506 <= grp_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_22_2_reg_4516 <= grp_fu_988_p2;
        div213_23_1_reg_4526 <= grp_fu_996_p2;
        div213_23_2_reg_4531 <= grp_fu_1000_p2;
        div213_23_reg_4521 <= grp_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div213_24_1_reg_4541 <= grp_fu_992_p2;
        div213_24_2_reg_4546 <= grp_fu_996_p2;
        div213_24_reg_4536 <= grp_fu_988_p2;
        div213_25_reg_4551 <= grp_fu_1000_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div213_25_1_reg_4556 <= grp_fu_988_p2;
        div213_25_2_reg_4561 <= grp_fu_992_p2;
        div213_26_1_reg_4571 <= grp_fu_1000_p2;
        div213_26_reg_4566 <= grp_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div213_26_2_reg_4576 <= grp_fu_988_p2;
        div213_27_1_reg_4586 <= grp_fu_996_p2;
        div213_27_2_reg_4591 <= grp_fu_1000_p2;
        div213_27_reg_4581 <= grp_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        div213_28_1_reg_4601 <= grp_fu_992_p2;
        div213_28_2_reg_4606 <= grp_fu_996_p2;
        div213_28_reg_4596 <= grp_fu_988_p2;
        div213_29_reg_4611 <= grp_fu_1000_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        div213_29_1_reg_4616 <= grp_fu_988_p2;
        div213_29_2_reg_4621 <= grp_fu_992_p2;
        div213_30_1_reg_4631 <= grp_fu_1000_p2;
        div213_30_reg_4626 <= grp_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_30_2_reg_4636 <= grp_fu_988_p2;
        div213_31_1_reg_4646 <= grp_fu_996_p2;
        div213_31_2_reg_4651 <= grp_fu_1000_p2;
        div213_31_reg_4641 <= grp_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_3237[7 : 1] <= empty_fu_1223_p2[7 : 1];
        i_4_reg_3223 <= ap_sig_allocacmp_i_4;
        or_ln5_reg_3288[4 : 2] <= or_ln5_fu_1254_p3[4 : 2];
        tmp_reg_3228 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_0_addr_26_reg_3308[4 : 2] <= or_ln194_cast_fu_1262_p1[4 : 2];
        weights3_0_addr_26_reg_3308_pp0_iter1_reg[4 : 2] <= weights3_0_addr_26_reg_3308[4 : 2];
        weights3_0_addr_26_reg_3308_pp0_iter2_reg[4 : 2] <= weights3_0_addr_26_reg_3308_pp0_iter1_reg[4 : 2];
        weights3_0_addr_reg_3232 <= zext_ln194_fu_1186_p1;
        weights3_0_addr_reg_3232_pp0_iter1_reg <= weights3_0_addr_reg_3232;
        weights3_0_addr_reg_3232_pp0_iter2_reg <= weights3_0_addr_reg_3232_pp0_iter1_reg;
        weights3_1_addr_26_reg_3314[4 : 2] <= or_ln194_cast_fu_1262_p1[4 : 2];
        weights3_1_addr_26_reg_3314_pp0_iter1_reg[4 : 2] <= weights3_1_addr_26_reg_3314[4 : 2];
        weights3_1_addr_26_reg_3314_pp0_iter2_reg[4 : 2] <= weights3_1_addr_26_reg_3314_pp0_iter1_reg[4 : 2];
        weights3_1_addr_reg_3293 <= zext_ln194_fu_1186_p1;
        weights3_1_addr_reg_3293_pp0_iter1_reg <= weights3_1_addr_reg_3293;
        weights3_1_addr_reg_3293_pp0_iter2_reg <= weights3_1_addr_reg_3293_pp0_iter1_reg;
        weights3_2_addr_26_reg_3320[4 : 2] <= or_ln194_cast_fu_1262_p1[4 : 2];
        weights3_2_addr_26_reg_3320_pp0_iter1_reg[4 : 2] <= weights3_2_addr_26_reg_3320[4 : 2];
        weights3_2_addr_26_reg_3320_pp0_iter2_reg[4 : 2] <= weights3_2_addr_26_reg_3320_pp0_iter1_reg[4 : 2];
        weights3_2_addr_reg_3298 <= zext_ln194_fu_1186_p1;
        weights3_2_addr_reg_3298_pp0_iter1_reg <= weights3_2_addr_reg_3298;
        weights3_2_addr_reg_3298_pp0_iter2_reg <= weights3_2_addr_reg_3298_pp0_iter1_reg;
        weights3_3_addr_reg_3303 <= zext_ln194_1_fu_1239_p1;
        weights3_3_addr_reg_3303_pp0_iter1_reg <= weights3_3_addr_reg_3303;
        weights3_3_addr_reg_3303_pp0_iter2_reg <= weights3_3_addr_reg_3303_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        or_ln194_cast214_reg_3434[4 : 2] <= or_ln194_cast214_fu_1515_p1[4 : 2];
        weights3_0_addr_29_reg_3463[5 : 2] <= add_ln194_6_cast_fu_1524_p1[5 : 2];
        weights3_0_addr_29_reg_3463_pp0_iter1_reg[5 : 2] <= weights3_0_addr_29_reg_3463[5 : 2];
        weights3_0_addr_29_reg_3463_pp0_iter2_reg[5 : 2] <= weights3_0_addr_29_reg_3463_pp0_iter1_reg[5 : 2];
        weights3_0_addr_30_reg_3483 <= zext_ln194_10_fu_1566_p1;
        weights3_0_addr_30_reg_3483_pp0_iter1_reg <= weights3_0_addr_30_reg_3483;
        weights3_0_addr_30_reg_3483_pp0_iter2_reg <= weights3_0_addr_30_reg_3483_pp0_iter1_reg;
        weights3_1_addr_29_reg_3468[5 : 2] <= add_ln194_6_cast_fu_1524_p1[5 : 2];
        weights3_1_addr_29_reg_3468_pp0_iter1_reg[5 : 2] <= weights3_1_addr_29_reg_3468[5 : 2];
        weights3_1_addr_29_reg_3468_pp0_iter2_reg[5 : 2] <= weights3_1_addr_29_reg_3468_pp0_iter1_reg[5 : 2];
        weights3_1_addr_30_reg_3489 <= lshr_ln194_15_cast_fu_1586_p1;
        weights3_1_addr_30_reg_3489_pp0_iter1_reg <= weights3_1_addr_30_reg_3489;
        weights3_1_addr_30_reg_3489_pp0_iter2_reg <= weights3_1_addr_30_reg_3489_pp0_iter1_reg;
        weights3_2_addr_29_reg_3473[5 : 2] <= add_ln194_6_cast_fu_1524_p1[5 : 2];
        weights3_2_addr_29_reg_3473_pp0_iter1_reg[5 : 2] <= weights3_2_addr_29_reg_3473[5 : 2];
        weights3_2_addr_29_reg_3473_pp0_iter2_reg[5 : 2] <= weights3_2_addr_29_reg_3473_pp0_iter1_reg[5 : 2];
        weights3_2_addr_30_reg_3495 <= zext_ln194_11_fu_1606_p1;
        weights3_2_addr_30_reg_3495_pp0_iter1_reg <= weights3_2_addr_30_reg_3495;
        weights3_2_addr_30_reg_3495_pp0_iter2_reg <= weights3_2_addr_30_reg_3495_pp0_iter1_reg;
        weights3_3_addr_29_reg_3478 <= zext_ln194_9_fu_1546_p1;
        weights3_3_addr_29_reg_3478_pp0_iter1_reg <= weights3_3_addr_29_reg_3478;
        weights3_3_addr_29_reg_3478_pp0_iter2_reg <= weights3_3_addr_29_reg_3478_pp0_iter1_reg;
        weights3_3_addr_30_reg_3501 <= zext_ln194_11_fu_1606_p1;
        weights3_3_addr_30_reg_3501_pp0_iter1_reg <= weights3_3_addr_30_reg_3501;
        weights3_3_addr_30_reg_3501_pp0_iter2_reg <= weights3_3_addr_30_reg_3501_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1004 <= weights3_0_q1;
        reg_1008 <= weights3_1_q1;
        reg_1012 <= weights3_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1016 <= weights3_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1055 <= weights3_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1069 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1073 <= weights3_3_q1;
        reg_1077 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_1091 <= weights3_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1110 <= weights3_1_q1;
        reg_1114 <= weights3_2_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_1118 <= grp_fu_988_p2;
        reg_1122 <= grp_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_1126 <= grp_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_1130 <= grp_fu_1000_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_1134 <= grp_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1138 <= grp_fu_1000_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_addr_24_reg_3396 <= zext_ln194_2_fu_1394_p1;
        weights3_0_addr_24_reg_3396_pp0_iter1_reg <= weights3_0_addr_24_reg_3396;
        weights3_0_addr_24_reg_3396_pp0_iter2_reg <= weights3_0_addr_24_reg_3396_pp0_iter1_reg;
        weights3_0_addr_27_reg_3411 <= zext_ln194_6_fu_1454_p1;
        weights3_0_addr_27_reg_3411_pp0_iter1_reg <= weights3_0_addr_27_reg_3411;
        weights3_0_addr_27_reg_3411_pp0_iter2_reg <= weights3_0_addr_27_reg_3411_pp0_iter1_reg;
        weights3_1_addr_24_reg_3401 <= lshr_ln194_3_cast_fu_1414_p1;
        weights3_1_addr_24_reg_3401_pp0_iter1_reg <= weights3_1_addr_24_reg_3401;
        weights3_1_addr_24_reg_3401_pp0_iter2_reg <= weights3_1_addr_24_reg_3401_pp0_iter1_reg;
        weights3_1_addr_27_reg_3417 <= lshr_ln194_9_cast_fu_1474_p1;
        weights3_1_addr_27_reg_3417_pp0_iter1_reg <= weights3_1_addr_27_reg_3417;
        weights3_1_addr_27_reg_3417_pp0_iter2_reg <= weights3_1_addr_27_reg_3417_pp0_iter1_reg;
        weights3_2_addr_27_reg_3423 <= zext_ln194_7_fu_1494_p1;
        weights3_2_addr_27_reg_3423_pp0_iter1_reg <= weights3_2_addr_27_reg_3423;
        weights3_2_addr_27_reg_3423_pp0_iter2_reg <= weights3_2_addr_27_reg_3423_pp0_iter1_reg;
        weights3_3_addr_26_reg_3406 <= zext_ln194_5_fu_1434_p1;
        weights3_3_addr_26_reg_3406_pp0_iter1_reg <= weights3_3_addr_26_reg_3406;
        weights3_3_addr_26_reg_3406_pp0_iter2_reg <= weights3_3_addr_26_reg_3406_pp0_iter1_reg;
        weights3_3_addr_27_reg_3429 <= zext_ln194_7_fu_1494_p1;
        weights3_3_addr_27_reg_3429_pp0_iter1_reg <= weights3_3_addr_27_reg_3429;
        weights3_3_addr_27_reg_3429_pp0_iter2_reg <= weights3_3_addr_27_reg_3429_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_addr_25_reg_3335 <= lshr_ln194_5_cast_fu_1305_p1;
        weights3_0_addr_25_reg_3335_pp0_iter1_reg <= weights3_0_addr_25_reg_3335;
        weights3_0_addr_25_reg_3335_pp0_iter2_reg <= weights3_0_addr_25_reg_3335_pp0_iter1_reg;
        weights3_0_addr_28_reg_3355 <= lshr_ln194_11_cast_fu_1347_p1;
        weights3_0_addr_28_reg_3355_pp0_iter1_reg <= weights3_0_addr_28_reg_3355;
        weights3_0_addr_28_reg_3355_pp0_iter2_reg <= weights3_0_addr_28_reg_3355_pp0_iter1_reg;
        weights3_1_addr_25_reg_3340 <= zext_ln194_4_fu_1325_p1;
        weights3_1_addr_25_reg_3340_pp0_iter1_reg <= weights3_1_addr_25_reg_3340;
        weights3_1_addr_25_reg_3340_pp0_iter2_reg <= weights3_1_addr_25_reg_3340_pp0_iter1_reg;
        weights3_1_addr_28_reg_3360 <= zext_ln194_8_fu_1367_p1;
        weights3_1_addr_28_reg_3360_pp0_iter1_reg <= weights3_1_addr_28_reg_3360;
        weights3_1_addr_28_reg_3360_pp0_iter2_reg <= weights3_1_addr_28_reg_3360_pp0_iter1_reg;
        weights3_2_addr_24_reg_3325 <= zext_ln194_3_fu_1284_p1;
        weights3_2_addr_24_reg_3325_pp0_iter1_reg <= weights3_2_addr_24_reg_3325;
        weights3_2_addr_24_reg_3325_pp0_iter2_reg <= weights3_2_addr_24_reg_3325_pp0_iter1_reg;
        weights3_2_addr_25_reg_3345 <= zext_ln194_4_fu_1325_p1;
        weights3_2_addr_25_reg_3345_pp0_iter1_reg <= weights3_2_addr_25_reg_3345;
        weights3_2_addr_25_reg_3345_pp0_iter2_reg <= weights3_2_addr_25_reg_3345_pp0_iter1_reg;
        weights3_2_addr_28_reg_3365 <= zext_ln194_8_fu_1367_p1;
        weights3_2_addr_28_reg_3365_pp0_iter1_reg <= weights3_2_addr_28_reg_3365;
        weights3_2_addr_28_reg_3365_pp0_iter2_reg <= weights3_2_addr_28_reg_3365_pp0_iter1_reg;
        weights3_3_addr_24_reg_3330 <= zext_ln194_3_fu_1284_p1;
        weights3_3_addr_24_reg_3330_pp0_iter1_reg <= weights3_3_addr_24_reg_3330;
        weights3_3_addr_24_reg_3330_pp0_iter2_reg <= weights3_3_addr_24_reg_3330_pp0_iter1_reg;
        weights3_3_addr_25_reg_3350 <= zext_ln194_4_fu_1325_p1;
        weights3_3_addr_25_reg_3350_pp0_iter1_reg <= weights3_3_addr_25_reg_3350;
        weights3_3_addr_25_reg_3350_pp0_iter2_reg <= weights3_3_addr_25_reg_3350_pp0_iter1_reg;
        weights3_3_addr_28_reg_3371 <= zext_ln194_8_fu_1367_p1;
        weights3_3_addr_28_reg_3371_pp0_iter1_reg <= weights3_3_addr_28_reg_3371;
        weights3_3_addr_28_reg_3371_pp0_iter2_reg <= weights3_3_addr_28_reg_3371_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_addr_31_reg_3526 <= lshr_ln194_17_cast_fu_1647_p1;
        weights3_0_addr_31_reg_3526_pp0_iter1_reg <= weights3_0_addr_31_reg_3526;
        weights3_0_addr_31_reg_3526_pp0_iter2_reg <= weights3_0_addr_31_reg_3526_pp0_iter1_reg;
        weights3_0_addr_32_reg_3547[5 : 2] <= add_ln194_10_cast_fu_1679_p1[5 : 2];
        weights3_0_addr_32_reg_3547_pp0_iter1_reg[5 : 2] <= weights3_0_addr_32_reg_3547[5 : 2];
        weights3_0_addr_32_reg_3547_pp0_iter2_reg[5 : 2] <= weights3_0_addr_32_reg_3547_pp0_iter1_reg[5 : 2];
        weights3_1_addr_31_reg_3531 <= zext_ln194_12_fu_1667_p1;
        weights3_1_addr_31_reg_3531_pp0_iter1_reg <= weights3_1_addr_31_reg_3531;
        weights3_1_addr_31_reg_3531_pp0_iter2_reg <= weights3_1_addr_31_reg_3531_pp0_iter1_reg;
        weights3_1_addr_32_reg_3553[5 : 2] <= add_ln194_10_cast_fu_1679_p1[5 : 2];
        weights3_1_addr_32_reg_3553_pp0_iter1_reg[5 : 2] <= weights3_1_addr_32_reg_3553[5 : 2];
        weights3_1_addr_32_reg_3553_pp0_iter2_reg[5 : 2] <= weights3_1_addr_32_reg_3553_pp0_iter1_reg[5 : 2];
        weights3_2_addr_31_reg_3536 <= zext_ln194_12_fu_1667_p1;
        weights3_2_addr_31_reg_3536_pp0_iter1_reg <= weights3_2_addr_31_reg_3536;
        weights3_2_addr_31_reg_3536_pp0_iter2_reg <= weights3_2_addr_31_reg_3536_pp0_iter1_reg;
        weights3_2_addr_32_reg_3559[5 : 2] <= add_ln194_10_cast_fu_1679_p1[5 : 2];
        weights3_2_addr_32_reg_3559_pp0_iter1_reg[5 : 2] <= weights3_2_addr_32_reg_3559[5 : 2];
        weights3_2_addr_32_reg_3559_pp0_iter2_reg[5 : 2] <= weights3_2_addr_32_reg_3559_pp0_iter1_reg[5 : 2];
        weights3_3_addr_31_reg_3541 <= zext_ln194_12_fu_1667_p1;
        weights3_3_addr_31_reg_3541_pp0_iter1_reg <= weights3_3_addr_31_reg_3541;
        weights3_3_addr_31_reg_3541_pp0_iter2_reg <= weights3_3_addr_31_reg_3541_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_addr_33_reg_3590 <= zext_ln194_14_fu_1741_p1;
        weights3_0_addr_33_reg_3590_pp0_iter1_reg <= weights3_0_addr_33_reg_3590;
        weights3_0_addr_33_reg_3590_pp0_iter2_reg <= weights3_0_addr_33_reg_3590_pp0_iter1_reg;
        weights3_0_addr_34_reg_3611 <= lshr_ln194_23_cast_fu_1802_p1;
        weights3_0_addr_34_reg_3611_pp0_iter1_reg <= weights3_0_addr_34_reg_3611;
        weights3_0_addr_34_reg_3611_pp0_iter2_reg <= weights3_0_addr_34_reg_3611_pp0_iter1_reg;
        weights3_0_addr_34_reg_3611_pp0_iter3_reg <= weights3_0_addr_34_reg_3611_pp0_iter2_reg;
        weights3_1_addr_33_reg_3595 <= lshr_ln194_21_cast_fu_1761_p1;
        weights3_1_addr_33_reg_3595_pp0_iter1_reg <= weights3_1_addr_33_reg_3595;
        weights3_1_addr_33_reg_3595_pp0_iter2_reg <= weights3_1_addr_33_reg_3595_pp0_iter1_reg;
        weights3_1_addr_34_reg_3617 <= zext_ln194_16_fu_1822_p1;
        weights3_1_addr_34_reg_3617_pp0_iter1_reg <= weights3_1_addr_34_reg_3617;
        weights3_1_addr_34_reg_3617_pp0_iter2_reg <= weights3_1_addr_34_reg_3617_pp0_iter1_reg;
        weights3_1_addr_34_reg_3617_pp0_iter3_reg <= weights3_1_addr_34_reg_3617_pp0_iter2_reg;
        weights3_2_addr_33_reg_3600 <= zext_ln194_15_fu_1781_p1;
        weights3_2_addr_33_reg_3600_pp0_iter1_reg <= weights3_2_addr_33_reg_3600;
        weights3_2_addr_33_reg_3600_pp0_iter2_reg <= weights3_2_addr_33_reg_3600_pp0_iter1_reg;
        weights3_2_addr_34_reg_3623 <= zext_ln194_16_fu_1822_p1;
        weights3_2_addr_34_reg_3623_pp0_iter1_reg <= weights3_2_addr_34_reg_3623;
        weights3_2_addr_34_reg_3623_pp0_iter2_reg <= weights3_2_addr_34_reg_3623_pp0_iter1_reg;
        weights3_2_addr_34_reg_3623_pp0_iter3_reg <= weights3_2_addr_34_reg_3623_pp0_iter2_reg;
        weights3_3_addr_32_reg_3585 <= zext_ln194_13_fu_1721_p1;
        weights3_3_addr_32_reg_3585_pp0_iter1_reg <= weights3_3_addr_32_reg_3585;
        weights3_3_addr_32_reg_3585_pp0_iter2_reg <= weights3_3_addr_32_reg_3585_pp0_iter1_reg;
        weights3_3_addr_33_reg_3605 <= zext_ln194_15_fu_1781_p1;
        weights3_3_addr_33_reg_3605_pp0_iter1_reg <= weights3_3_addr_33_reg_3605;
        weights3_3_addr_33_reg_3605_pp0_iter2_reg <= weights3_3_addr_33_reg_3605_pp0_iter1_reg;
        weights3_3_addr_34_reg_3629 <= zext_ln194_16_fu_1822_p1;
        weights3_3_addr_34_reg_3629_pp0_iter1_reg <= weights3_3_addr_34_reg_3629;
        weights3_3_addr_34_reg_3629_pp0_iter2_reg <= weights3_3_addr_34_reg_3629_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_addr_35_reg_3670[5 : 2] <= add_ln194_14_cast_fu_1854_p1[5 : 2];
        weights3_0_addr_35_reg_3670_pp0_iter1_reg[5 : 2] <= weights3_0_addr_35_reg_3670[5 : 2];
        weights3_0_addr_35_reg_3670_pp0_iter2_reg[5 : 2] <= weights3_0_addr_35_reg_3670_pp0_iter1_reg[5 : 2];
        weights3_0_addr_35_reg_3670_pp0_iter3_reg[5 : 2] <= weights3_0_addr_35_reg_3670_pp0_iter2_reg[5 : 2];
        weights3_0_addr_36_reg_3693 <= zext_ln194_18_fu_1896_p1;
        weights3_0_addr_36_reg_3693_pp0_iter1_reg <= weights3_0_addr_36_reg_3693;
        weights3_0_addr_36_reg_3693_pp0_iter2_reg <= weights3_0_addr_36_reg_3693_pp0_iter1_reg;
        weights3_0_addr_36_reg_3693_pp0_iter3_reg <= weights3_0_addr_36_reg_3693_pp0_iter2_reg;
        weights3_1_addr_35_reg_3676[5 : 2] <= add_ln194_14_cast_fu_1854_p1[5 : 2];
        weights3_1_addr_35_reg_3676_pp0_iter1_reg[5 : 2] <= weights3_1_addr_35_reg_3676[5 : 2];
        weights3_1_addr_35_reg_3676_pp0_iter2_reg[5 : 2] <= weights3_1_addr_35_reg_3676_pp0_iter1_reg[5 : 2];
        weights3_1_addr_35_reg_3676_pp0_iter3_reg[5 : 2] <= weights3_1_addr_35_reg_3676_pp0_iter2_reg[5 : 2];
        weights3_1_addr_36_reg_3698 <= lshr_ln194_27_cast_fu_1916_p1;
        weights3_1_addr_36_reg_3698_pp0_iter1_reg <= weights3_1_addr_36_reg_3698;
        weights3_1_addr_36_reg_3698_pp0_iter2_reg <= weights3_1_addr_36_reg_3698_pp0_iter1_reg;
        weights3_1_addr_36_reg_3698_pp0_iter3_reg <= weights3_1_addr_36_reg_3698_pp0_iter2_reg;
        weights3_2_addr_35_reg_3682[5 : 2] <= add_ln194_14_cast_fu_1854_p1[5 : 2];
        weights3_2_addr_35_reg_3682_pp0_iter1_reg[5 : 2] <= weights3_2_addr_35_reg_3682[5 : 2];
        weights3_2_addr_35_reg_3682_pp0_iter2_reg[5 : 2] <= weights3_2_addr_35_reg_3682_pp0_iter1_reg[5 : 2];
        weights3_2_addr_35_reg_3682_pp0_iter3_reg[5 : 2] <= weights3_2_addr_35_reg_3682_pp0_iter2_reg[5 : 2];
        weights3_2_addr_36_reg_3703 <= zext_ln194_19_fu_1936_p1;
        weights3_2_addr_36_reg_3703_pp0_iter1_reg <= weights3_2_addr_36_reg_3703;
        weights3_2_addr_36_reg_3703_pp0_iter2_reg <= weights3_2_addr_36_reg_3703_pp0_iter1_reg;
        weights3_2_addr_36_reg_3703_pp0_iter3_reg <= weights3_2_addr_36_reg_3703_pp0_iter2_reg;
        weights3_3_addr_35_reg_3688 <= zext_ln194_17_fu_1876_p1;
        weights3_3_addr_35_reg_3688_pp0_iter1_reg <= weights3_3_addr_35_reg_3688;
        weights3_3_addr_35_reg_3688_pp0_iter2_reg <= weights3_3_addr_35_reg_3688_pp0_iter1_reg;
        weights3_3_addr_35_reg_3688_pp0_iter3_reg <= weights3_3_addr_35_reg_3688_pp0_iter2_reg;
        weights3_3_addr_36_reg_3708 <= zext_ln194_19_fu_1936_p1;
        weights3_3_addr_36_reg_3708_pp0_iter1_reg <= weights3_3_addr_36_reg_3708;
        weights3_3_addr_36_reg_3708_pp0_iter2_reg <= weights3_3_addr_36_reg_3708_pp0_iter1_reg;
        weights3_3_addr_36_reg_3708_pp0_iter3_reg <= weights3_3_addr_36_reg_3708_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_addr_37_reg_3754 <= lshr_ln194_29_cast_fu_1977_p1;
        weights3_0_addr_37_reg_3754_pp0_iter1_reg <= weights3_0_addr_37_reg_3754;
        weights3_0_addr_37_reg_3754_pp0_iter2_reg <= weights3_0_addr_37_reg_3754_pp0_iter1_reg;
        weights3_0_addr_37_reg_3754_pp0_iter3_reg <= weights3_0_addr_37_reg_3754_pp0_iter2_reg;
        weights3_0_addr_38_reg_3778[5 : 2] <= add_ln194_18_cast_fu_2009_p1[5 : 2];
        weights3_0_addr_38_reg_3778_pp0_iter1_reg[5 : 2] <= weights3_0_addr_38_reg_3778[5 : 2];
        weights3_0_addr_38_reg_3778_pp0_iter2_reg[5 : 2] <= weights3_0_addr_38_reg_3778_pp0_iter1_reg[5 : 2];
        weights3_0_addr_38_reg_3778_pp0_iter3_reg[5 : 2] <= weights3_0_addr_38_reg_3778_pp0_iter2_reg[5 : 2];
        weights3_1_addr_37_reg_3760 <= zext_ln194_20_fu_1997_p1;
        weights3_1_addr_37_reg_3760_pp0_iter1_reg <= weights3_1_addr_37_reg_3760;
        weights3_1_addr_37_reg_3760_pp0_iter2_reg <= weights3_1_addr_37_reg_3760_pp0_iter1_reg;
        weights3_1_addr_37_reg_3760_pp0_iter3_reg <= weights3_1_addr_37_reg_3760_pp0_iter2_reg;
        weights3_1_addr_38_reg_3783[5 : 2] <= add_ln194_18_cast_fu_2009_p1[5 : 2];
        weights3_1_addr_38_reg_3783_pp0_iter1_reg[5 : 2] <= weights3_1_addr_38_reg_3783[5 : 2];
        weights3_1_addr_38_reg_3783_pp0_iter2_reg[5 : 2] <= weights3_1_addr_38_reg_3783_pp0_iter1_reg[5 : 2];
        weights3_1_addr_38_reg_3783_pp0_iter3_reg[5 : 2] <= weights3_1_addr_38_reg_3783_pp0_iter2_reg[5 : 2];
        weights3_2_addr_37_reg_3766 <= zext_ln194_20_fu_1997_p1;
        weights3_2_addr_37_reg_3766_pp0_iter1_reg <= weights3_2_addr_37_reg_3766;
        weights3_2_addr_37_reg_3766_pp0_iter2_reg <= weights3_2_addr_37_reg_3766_pp0_iter1_reg;
        weights3_2_addr_37_reg_3766_pp0_iter3_reg <= weights3_2_addr_37_reg_3766_pp0_iter2_reg;
        weights3_2_addr_38_reg_3788[5 : 2] <= add_ln194_18_cast_fu_2009_p1[5 : 2];
        weights3_2_addr_38_reg_3788_pp0_iter1_reg[5 : 2] <= weights3_2_addr_38_reg_3788[5 : 2];
        weights3_2_addr_38_reg_3788_pp0_iter2_reg[5 : 2] <= weights3_2_addr_38_reg_3788_pp0_iter1_reg[5 : 2];
        weights3_2_addr_38_reg_3788_pp0_iter3_reg[5 : 2] <= weights3_2_addr_38_reg_3788_pp0_iter2_reg[5 : 2];
        weights3_3_addr_37_reg_3772 <= zext_ln194_20_fu_1997_p1;
        weights3_3_addr_37_reg_3772_pp0_iter1_reg <= weights3_3_addr_37_reg_3772;
        weights3_3_addr_37_reg_3772_pp0_iter2_reg <= weights3_3_addr_37_reg_3772_pp0_iter1_reg;
        weights3_3_addr_37_reg_3772_pp0_iter3_reg <= weights3_3_addr_37_reg_3772_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_addr_39_reg_3834 <= zext_ln194_22_fu_2071_p1;
        weights3_0_addr_39_reg_3834_pp0_iter1_reg <= weights3_0_addr_39_reg_3834;
        weights3_0_addr_39_reg_3834_pp0_iter2_reg <= weights3_0_addr_39_reg_3834_pp0_iter1_reg;
        weights3_0_addr_39_reg_3834_pp0_iter3_reg <= weights3_0_addr_39_reg_3834_pp0_iter2_reg;
        weights3_0_addr_40_reg_3856 <= lshr_ln194_35_cast_fu_2132_p1;
        weights3_0_addr_40_reg_3856_pp0_iter1_reg <= weights3_0_addr_40_reg_3856;
        weights3_0_addr_40_reg_3856_pp0_iter2_reg <= weights3_0_addr_40_reg_3856_pp0_iter1_reg;
        weights3_0_addr_40_reg_3856_pp0_iter3_reg <= weights3_0_addr_40_reg_3856_pp0_iter2_reg;
        weights3_1_addr_39_reg_3840 <= lshr_ln194_33_cast_fu_2091_p1;
        weights3_1_addr_39_reg_3840_pp0_iter1_reg <= weights3_1_addr_39_reg_3840;
        weights3_1_addr_39_reg_3840_pp0_iter2_reg <= weights3_1_addr_39_reg_3840_pp0_iter1_reg;
        weights3_1_addr_39_reg_3840_pp0_iter3_reg <= weights3_1_addr_39_reg_3840_pp0_iter2_reg;
        weights3_1_addr_40_reg_3862 <= zext_ln194_24_fu_2152_p1;
        weights3_1_addr_40_reg_3862_pp0_iter1_reg <= weights3_1_addr_40_reg_3862;
        weights3_1_addr_40_reg_3862_pp0_iter2_reg <= weights3_1_addr_40_reg_3862_pp0_iter1_reg;
        weights3_1_addr_40_reg_3862_pp0_iter3_reg <= weights3_1_addr_40_reg_3862_pp0_iter2_reg;
        weights3_2_addr_39_reg_3845 <= zext_ln194_23_fu_2111_p1;
        weights3_2_addr_39_reg_3845_pp0_iter1_reg <= weights3_2_addr_39_reg_3845;
        weights3_2_addr_39_reg_3845_pp0_iter2_reg <= weights3_2_addr_39_reg_3845_pp0_iter1_reg;
        weights3_2_addr_39_reg_3845_pp0_iter3_reg <= weights3_2_addr_39_reg_3845_pp0_iter2_reg;
        weights3_2_addr_40_reg_3867 <= zext_ln194_24_fu_2152_p1;
        weights3_2_addr_40_reg_3867_pp0_iter1_reg <= weights3_2_addr_40_reg_3867;
        weights3_2_addr_40_reg_3867_pp0_iter2_reg <= weights3_2_addr_40_reg_3867_pp0_iter1_reg;
        weights3_2_addr_40_reg_3867_pp0_iter3_reg <= weights3_2_addr_40_reg_3867_pp0_iter2_reg;
        weights3_3_addr_38_reg_3828 <= zext_ln194_21_fu_2051_p1;
        weights3_3_addr_38_reg_3828_pp0_iter1_reg <= weights3_3_addr_38_reg_3828;
        weights3_3_addr_38_reg_3828_pp0_iter2_reg <= weights3_3_addr_38_reg_3828_pp0_iter1_reg;
        weights3_3_addr_38_reg_3828_pp0_iter3_reg <= weights3_3_addr_38_reg_3828_pp0_iter2_reg;
        weights3_3_addr_39_reg_3850 <= zext_ln194_23_fu_2111_p1;
        weights3_3_addr_39_reg_3850_pp0_iter1_reg <= weights3_3_addr_39_reg_3850;
        weights3_3_addr_39_reg_3850_pp0_iter2_reg <= weights3_3_addr_39_reg_3850_pp0_iter1_reg;
        weights3_3_addr_39_reg_3850_pp0_iter3_reg <= weights3_3_addr_39_reg_3850_pp0_iter2_reg;
        weights3_3_addr_40_reg_3872 <= zext_ln194_24_fu_2152_p1;
        weights3_3_addr_40_reg_3872_pp0_iter1_reg <= weights3_3_addr_40_reg_3872;
        weights3_3_addr_40_reg_3872_pp0_iter2_reg <= weights3_3_addr_40_reg_3872_pp0_iter1_reg;
        weights3_3_addr_40_reg_3872_pp0_iter3_reg <= weights3_3_addr_40_reg_3872_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_addr_41_reg_3918[5 : 2] <= add_ln194_22_cast_fu_2184_p1[5 : 2];
        weights3_0_addr_41_reg_3918_pp0_iter1_reg[5 : 2] <= weights3_0_addr_41_reg_3918[5 : 2];
        weights3_0_addr_41_reg_3918_pp0_iter2_reg[5 : 2] <= weights3_0_addr_41_reg_3918_pp0_iter1_reg[5 : 2];
        weights3_0_addr_41_reg_3918_pp0_iter3_reg[5 : 2] <= weights3_0_addr_41_reg_3918_pp0_iter2_reg[5 : 2];
        weights3_0_addr_42_reg_3942 <= zext_ln194_26_fu_2226_p1;
        weights3_0_addr_42_reg_3942_pp0_iter1_reg <= weights3_0_addr_42_reg_3942;
        weights3_0_addr_42_reg_3942_pp0_iter2_reg <= weights3_0_addr_42_reg_3942_pp0_iter1_reg;
        weights3_0_addr_42_reg_3942_pp0_iter3_reg <= weights3_0_addr_42_reg_3942_pp0_iter2_reg;
        weights3_1_addr_41_reg_3924[5 : 2] <= add_ln194_22_cast_fu_2184_p1[5 : 2];
        weights3_1_addr_41_reg_3924_pp0_iter1_reg[5 : 2] <= weights3_1_addr_41_reg_3924[5 : 2];
        weights3_1_addr_41_reg_3924_pp0_iter2_reg[5 : 2] <= weights3_1_addr_41_reg_3924_pp0_iter1_reg[5 : 2];
        weights3_1_addr_41_reg_3924_pp0_iter3_reg[5 : 2] <= weights3_1_addr_41_reg_3924_pp0_iter2_reg[5 : 2];
        weights3_1_addr_42_reg_3947 <= lshr_ln194_39_cast_fu_2246_p1;
        weights3_1_addr_42_reg_3947_pp0_iter1_reg <= weights3_1_addr_42_reg_3947;
        weights3_1_addr_42_reg_3947_pp0_iter2_reg <= weights3_1_addr_42_reg_3947_pp0_iter1_reg;
        weights3_1_addr_42_reg_3947_pp0_iter3_reg <= weights3_1_addr_42_reg_3947_pp0_iter2_reg;
        weights3_2_addr_41_reg_3930[5 : 2] <= add_ln194_22_cast_fu_2184_p1[5 : 2];
        weights3_2_addr_41_reg_3930_pp0_iter1_reg[5 : 2] <= weights3_2_addr_41_reg_3930[5 : 2];
        weights3_2_addr_41_reg_3930_pp0_iter2_reg[5 : 2] <= weights3_2_addr_41_reg_3930_pp0_iter1_reg[5 : 2];
        weights3_2_addr_41_reg_3930_pp0_iter3_reg[5 : 2] <= weights3_2_addr_41_reg_3930_pp0_iter2_reg[5 : 2];
        weights3_2_addr_42_reg_3952 <= zext_ln194_27_fu_2266_p1;
        weights3_2_addr_42_reg_3952_pp0_iter1_reg <= weights3_2_addr_42_reg_3952;
        weights3_2_addr_42_reg_3952_pp0_iter2_reg <= weights3_2_addr_42_reg_3952_pp0_iter1_reg;
        weights3_2_addr_42_reg_3952_pp0_iter3_reg <= weights3_2_addr_42_reg_3952_pp0_iter2_reg;
        weights3_3_addr_41_reg_3936 <= zext_ln194_25_fu_2206_p1;
        weights3_3_addr_41_reg_3936_pp0_iter1_reg <= weights3_3_addr_41_reg_3936;
        weights3_3_addr_41_reg_3936_pp0_iter2_reg <= weights3_3_addr_41_reg_3936_pp0_iter1_reg;
        weights3_3_addr_41_reg_3936_pp0_iter3_reg <= weights3_3_addr_41_reg_3936_pp0_iter2_reg;
        weights3_3_addr_42_reg_3957 <= zext_ln194_27_fu_2266_p1;
        weights3_3_addr_42_reg_3957_pp0_iter1_reg <= weights3_3_addr_42_reg_3957;
        weights3_3_addr_42_reg_3957_pp0_iter2_reg <= weights3_3_addr_42_reg_3957_pp0_iter1_reg;
        weights3_3_addr_42_reg_3957_pp0_iter3_reg <= weights3_3_addr_42_reg_3957_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_addr_43_reg_4003 <= lshr_ln194_41_cast_fu_2307_p1;
        weights3_0_addr_43_reg_4003_pp0_iter1_reg <= weights3_0_addr_43_reg_4003;
        weights3_0_addr_43_reg_4003_pp0_iter2_reg <= weights3_0_addr_43_reg_4003_pp0_iter1_reg;
        weights3_0_addr_43_reg_4003_pp0_iter3_reg <= weights3_0_addr_43_reg_4003_pp0_iter2_reg;
        weights3_0_addr_44_reg_4026[5 : 2] <= add_ln194_26_cast_fu_2339_p1[5 : 2];
        weights3_0_addr_44_reg_4026_pp0_iter1_reg[5 : 2] <= weights3_0_addr_44_reg_4026[5 : 2];
        weights3_0_addr_44_reg_4026_pp0_iter2_reg[5 : 2] <= weights3_0_addr_44_reg_4026_pp0_iter1_reg[5 : 2];
        weights3_0_addr_44_reg_4026_pp0_iter3_reg[5 : 2] <= weights3_0_addr_44_reg_4026_pp0_iter2_reg[5 : 2];
        weights3_1_addr_43_reg_4009 <= zext_ln194_28_fu_2327_p1;
        weights3_1_addr_43_reg_4009_pp0_iter1_reg <= weights3_1_addr_43_reg_4009;
        weights3_1_addr_43_reg_4009_pp0_iter2_reg <= weights3_1_addr_43_reg_4009_pp0_iter1_reg;
        weights3_1_addr_43_reg_4009_pp0_iter3_reg <= weights3_1_addr_43_reg_4009_pp0_iter2_reg;
        weights3_1_addr_44_reg_4031[5 : 2] <= add_ln194_26_cast_fu_2339_p1[5 : 2];
        weights3_1_addr_44_reg_4031_pp0_iter1_reg[5 : 2] <= weights3_1_addr_44_reg_4031[5 : 2];
        weights3_1_addr_44_reg_4031_pp0_iter2_reg[5 : 2] <= weights3_1_addr_44_reg_4031_pp0_iter1_reg[5 : 2];
        weights3_1_addr_44_reg_4031_pp0_iter3_reg[5 : 2] <= weights3_1_addr_44_reg_4031_pp0_iter2_reg[5 : 2];
        weights3_2_addr_43_reg_4015 <= zext_ln194_28_fu_2327_p1;
        weights3_2_addr_43_reg_4015_pp0_iter1_reg <= weights3_2_addr_43_reg_4015;
        weights3_2_addr_43_reg_4015_pp0_iter2_reg <= weights3_2_addr_43_reg_4015_pp0_iter1_reg;
        weights3_2_addr_43_reg_4015_pp0_iter3_reg <= weights3_2_addr_43_reg_4015_pp0_iter2_reg;
        weights3_2_addr_44_reg_4036[5 : 2] <= add_ln194_26_cast_fu_2339_p1[5 : 2];
        weights3_2_addr_44_reg_4036_pp0_iter1_reg[5 : 2] <= weights3_2_addr_44_reg_4036[5 : 2];
        weights3_2_addr_44_reg_4036_pp0_iter2_reg[5 : 2] <= weights3_2_addr_44_reg_4036_pp0_iter1_reg[5 : 2];
        weights3_2_addr_44_reg_4036_pp0_iter3_reg[5 : 2] <= weights3_2_addr_44_reg_4036_pp0_iter2_reg[5 : 2];
        weights3_3_addr_43_reg_4021 <= zext_ln194_28_fu_2327_p1;
        weights3_3_addr_43_reg_4021_pp0_iter1_reg <= weights3_3_addr_43_reg_4021;
        weights3_3_addr_43_reg_4021_pp0_iter2_reg <= weights3_3_addr_43_reg_4021_pp0_iter1_reg;
        weights3_3_addr_43_reg_4021_pp0_iter3_reg <= weights3_3_addr_43_reg_4021_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_addr_45_reg_4087 <= zext_ln194_30_fu_2401_p1;
        weights3_0_addr_45_reg_4087_pp0_iter1_reg <= weights3_0_addr_45_reg_4087;
        weights3_0_addr_45_reg_4087_pp0_iter2_reg <= weights3_0_addr_45_reg_4087_pp0_iter1_reg;
        weights3_0_addr_45_reg_4087_pp0_iter3_reg <= weights3_0_addr_45_reg_4087_pp0_iter2_reg;
        weights3_0_addr_46_reg_4110 <= lshr_ln194_47_cast_fu_2462_p1;
        weights3_0_addr_46_reg_4110_pp0_iter1_reg <= weights3_0_addr_46_reg_4110;
        weights3_0_addr_46_reg_4110_pp0_iter2_reg <= weights3_0_addr_46_reg_4110_pp0_iter1_reg;
        weights3_0_addr_46_reg_4110_pp0_iter3_reg <= weights3_0_addr_46_reg_4110_pp0_iter2_reg;
        weights3_1_addr_45_reg_4093 <= lshr_ln194_45_cast_fu_2421_p1;
        weights3_1_addr_45_reg_4093_pp0_iter1_reg <= weights3_1_addr_45_reg_4093;
        weights3_1_addr_45_reg_4093_pp0_iter2_reg <= weights3_1_addr_45_reg_4093_pp0_iter1_reg;
        weights3_1_addr_45_reg_4093_pp0_iter3_reg <= weights3_1_addr_45_reg_4093_pp0_iter2_reg;
        weights3_1_addr_46_reg_4115 <= zext_ln194_32_fu_2482_p1;
        weights3_1_addr_46_reg_4115_pp0_iter1_reg <= weights3_1_addr_46_reg_4115;
        weights3_1_addr_46_reg_4115_pp0_iter2_reg <= weights3_1_addr_46_reg_4115_pp0_iter1_reg;
        weights3_1_addr_46_reg_4115_pp0_iter3_reg <= weights3_1_addr_46_reg_4115_pp0_iter2_reg;
        weights3_2_addr_45_reg_4099 <= zext_ln194_31_fu_2441_p1;
        weights3_2_addr_45_reg_4099_pp0_iter1_reg <= weights3_2_addr_45_reg_4099;
        weights3_2_addr_45_reg_4099_pp0_iter2_reg <= weights3_2_addr_45_reg_4099_pp0_iter1_reg;
        weights3_2_addr_45_reg_4099_pp0_iter3_reg <= weights3_2_addr_45_reg_4099_pp0_iter2_reg;
        weights3_2_addr_46_reg_4120 <= zext_ln194_32_fu_2482_p1;
        weights3_2_addr_46_reg_4120_pp0_iter1_reg <= weights3_2_addr_46_reg_4120;
        weights3_2_addr_46_reg_4120_pp0_iter2_reg <= weights3_2_addr_46_reg_4120_pp0_iter1_reg;
        weights3_2_addr_46_reg_4120_pp0_iter3_reg <= weights3_2_addr_46_reg_4120_pp0_iter2_reg;
        weights3_3_addr_44_reg_4081 <= zext_ln194_29_fu_2381_p1;
        weights3_3_addr_44_reg_4081_pp0_iter1_reg <= weights3_3_addr_44_reg_4081;
        weights3_3_addr_44_reg_4081_pp0_iter2_reg <= weights3_3_addr_44_reg_4081_pp0_iter1_reg;
        weights3_3_addr_44_reg_4081_pp0_iter3_reg <= weights3_3_addr_44_reg_4081_pp0_iter2_reg;
        weights3_3_addr_45_reg_4105 <= zext_ln194_31_fu_2441_p1;
        weights3_3_addr_45_reg_4105_pp0_iter1_reg <= weights3_3_addr_45_reg_4105;
        weights3_3_addr_45_reg_4105_pp0_iter2_reg <= weights3_3_addr_45_reg_4105_pp0_iter1_reg;
        weights3_3_addr_45_reg_4105_pp0_iter3_reg <= weights3_3_addr_45_reg_4105_pp0_iter2_reg;
        weights3_3_addr_46_reg_4125 <= zext_ln194_32_fu_2482_p1;
        weights3_3_addr_46_reg_4125_pp0_iter1_reg <= weights3_3_addr_46_reg_4125;
        weights3_3_addr_46_reg_4125_pp0_iter2_reg <= weights3_3_addr_46_reg_4125_pp0_iter1_reg;
        weights3_3_addr_46_reg_4125_pp0_iter3_reg <= weights3_3_addr_46_reg_4125_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_load_34_reg_3655 <= weights3_0_q0;
        weights3_1_load_34_reg_3660 <= weights3_1_q0;
        weights3_2_load_34_reg_3665 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_load_35_reg_3734 <= weights3_0_q1;
        weights3_0_load_36_reg_3739 <= weights3_0_q0;
        weights3_1_load_36_reg_3744 <= weights3_1_q0;
        weights3_2_load_36_reg_3749 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_load_38_reg_3813 <= weights3_0_q0;
        weights3_1_load_38_reg_3818 <= weights3_1_q0;
        weights3_2_load_38_reg_3823 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_load_40_reg_3903 <= weights3_0_q0;
        weights3_1_load_40_reg_3908 <= weights3_1_q0;
        weights3_2_load_40_reg_3913 <= weights3_2_q0;
        weights3_3_load_39_reg_3898 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_load_42_reg_3988 <= weights3_0_q0;
        weights3_1_load_42_reg_3993 <= weights3_1_q0;
        weights3_2_load_42_reg_3998 <= weights3_2_q0;
        weights3_3_load_41_reg_3983 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_load_44_reg_4066 <= weights3_0_q0;
        weights3_1_load_44_reg_4071 <= weights3_1_q0;
        weights3_2_load_44_reg_4076 <= weights3_2_q0;
        weights3_3_load_43_reg_4061 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_load_46_reg_4156 <= weights3_0_q0;
        weights3_1_load_46_reg_4161 <= weights3_1_q0;
        weights3_2_load_46_reg_4166 <= weights3_2_q0;
        weights3_3_load_45_reg_4151 <= weights3_3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_3228 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1000_p0 = bitcast_ln194_95_fu_2768_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1000_p0 = bitcast_ln194_91_fu_2752_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1000_p0 = bitcast_ln194_87_fu_2722_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1000_p0 = bitcast_ln194_83_fu_2706_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1000_p0 = bitcast_ln194_79_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1000_p0 = bitcast_ln194_75_fu_2670_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1000_p0 = bitcast_ln194_71_fu_2650_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1000_p0 = bitcast_ln194_67_fu_2634_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1000_p0 = bitcast_ln194_63_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1000_p0 = bitcast_ln194_59_fu_2597_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1000_p0 = bitcast_ln194_55_fu_2577_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1000_p0 = bitcast_ln194_51_fu_2560_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1000_p0 = bitcast_ln194_47_fu_2541_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1000_p0 = bitcast_ln194_43_fu_2524_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1000_p0 = bitcast_ln194_39_fu_2504_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1000_p0 = bitcast_ln194_35_fu_2361_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1000_p0 = bitcast_ln194_31_fu_2287_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1000_p0 = bitcast_ln194_27_fu_2174_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1000_p0 = bitcast_ln194_23_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1000_p0 = bitcast_ln194_16_fu_1957_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1000_p0 = bitcast_ln194_14_fu_1844_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1000_p0 = bitcast_ln194_22_fu_1701_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1000_p0 = bitcast_ln194_20_fu_1627_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1000_p0 = bitcast_ln194_3_fu_1510_p1;
    end else begin
        grp_fu_1000_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_988_p0 = bitcast_ln194_92_fu_2756_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_988_p0 = bitcast_ln194_88_fu_2737_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_988_p0 = bitcast_ln194_84_fu_2710_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_988_p0 = bitcast_ln194_80_fu_2691_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_988_p0 = bitcast_ln194_76_fu_2674_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_988_p0 = bitcast_ln194_72_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_988_p0 = bitcast_ln194_68_fu_2638_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_988_p0 = bitcast_ln194_64_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_988_p0 = bitcast_ln194_60_fu_2602_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_988_p0 = bitcast_ln194_56_fu_2582_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_988_p0 = bitcast_ln194_52_fu_2565_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_988_p0 = bitcast_ln194_48_fu_2546_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_988_p0 = bitcast_ln194_44_fu_2529_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_988_p0 = bitcast_ln194_40_fu_2509_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_988_p0 = bitcast_ln194_36_fu_2489_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_988_p0 = bitcast_ln194_32_fu_2346_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_988_p0 = bitcast_ln194_28_fu_2272_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_988_p0 = bitcast_ln194_24_fu_2159_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_988_p0 = bitcast_ln194_17_fu_2016_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_988_p0 = bitcast_ln194_7_fu_1942_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_988_p0 = bitcast_ln194_4_fu_1829_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_988_p0 = bitcast_ln194_12_fu_1686_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_988_p0 = bitcast_ln194_8_fu_1612_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_988_p0 = bitcast_ln194_fu_1374_p1;
    end else begin
        grp_fu_988_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_992_p0 = bitcast_ln194_93_fu_2760_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_992_p0 = bitcast_ln194_89_fu_2742_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_992_p0 = bitcast_ln194_85_fu_2714_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_992_p0 = bitcast_ln194_81_fu_2696_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_992_p0 = bitcast_ln194_77_fu_2678_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_992_p0 = bitcast_ln194_73_fu_2660_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_992_p0 = bitcast_ln194_69_fu_2642_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_992_p0 = bitcast_ln194_65_fu_2624_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_992_p0 = bitcast_ln194_61_fu_2606_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_992_p0 = bitcast_ln194_57_fu_2587_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_992_p0 = bitcast_ln194_53_fu_2569_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_992_p0 = bitcast_ln194_49_fu_2550_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_992_p0 = bitcast_ln194_45_fu_2533_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_992_p0 = bitcast_ln194_41_fu_2514_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_992_p0 = bitcast_ln194_37_fu_2494_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_992_p0 = bitcast_ln194_33_fu_2351_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_992_p0 = bitcast_ln194_29_fu_2277_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_992_p0 = bitcast_ln194_25_fu_2164_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_992_p0 = bitcast_ln194_18_fu_2021_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_992_p0 = bitcast_ln194_11_fu_1947_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_992_p0 = bitcast_ln194_5_fu_1834_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_992_p0 = bitcast_ln194_13_fu_1691_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_992_p0 = bitcast_ln194_9_fu_1617_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_992_p0 = bitcast_ln194_1_fu_1500_p1;
    end else begin
        grp_fu_992_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_996_p0 = bitcast_ln194_94_fu_2764_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_996_p0 = bitcast_ln194_90_fu_2747_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_996_p0 = bitcast_ln194_86_fu_2718_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_996_p0 = bitcast_ln194_82_fu_2701_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_996_p0 = bitcast_ln194_78_fu_2682_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_996_p0 = bitcast_ln194_74_fu_2665_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_996_p0 = bitcast_ln194_70_fu_2646_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_996_p0 = bitcast_ln194_66_fu_2629_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_996_p0 = bitcast_ln194_62_fu_2610_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_996_p0 = bitcast_ln194_58_fu_2592_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_996_p0 = bitcast_ln194_54_fu_2573_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_996_p0 = bitcast_ln194_50_fu_2555_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_996_p0 = bitcast_ln194_46_fu_2537_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_996_p0 = bitcast_ln194_42_fu_2519_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_996_p0 = bitcast_ln194_38_fu_2499_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_996_p0 = bitcast_ln194_34_fu_2356_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_996_p0 = bitcast_ln194_30_fu_2282_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_996_p0 = bitcast_ln194_26_fu_2169_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_996_p0 = bitcast_ln194_19_fu_2026_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_996_p0 = bitcast_ln194_15_fu_1952_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_996_p0 = bitcast_ln194_6_fu_1839_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_996_p0 = bitcast_ln194_21_fu_1696_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_996_p0 = bitcast_ln194_10_fu_1622_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_996_p0 = bitcast_ln194_2_fu_1505_p1;
    end else begin
        grp_fu_996_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_address0_local = weights3_0_addr_44_reg_4026_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_address0_local = weights3_0_addr_41_reg_3918_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_address0_local = weights3_0_addr_46_reg_4110_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_address0_local = weights3_0_addr_45_reg_4087_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_address0_local = weights3_0_addr_43_reg_4003_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_address0_local = weights3_0_addr_42_reg_3942_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_address0_local = weights3_0_addr_39_reg_3834_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_address0_local = weights3_0_addr_38_reg_3778_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_address0_local = weights3_0_addr_37_reg_3754_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_address0_local = weights3_0_addr_36_reg_3693_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_address0_local = weights3_0_addr_35_reg_3670_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_address0_local = weights3_0_addr_28_reg_3355_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address0_local = lshr_ln194_47_cast_fu_2462_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address0_local = add_ln194_26_cast_fu_2339_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address0_local = zext_ln194_26_fu_2226_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address0_local = lshr_ln194_35_cast_fu_2132_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address0_local = add_ln194_18_cast_fu_2009_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address0_local = zext_ln194_18_fu_1896_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address0_local = lshr_ln194_23_cast_fu_1802_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = add_ln194_10_cast_fu_1679_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address0_local = zext_ln194_10_fu_1566_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = zext_ln194_6_fu_1454_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = lshr_ln194_11_cast_fu_1347_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = or_ln194_cast_fu_1262_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_address1_local = weights3_0_addr_40_reg_3856_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_address1_local = weights3_0_addr_34_reg_3611_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_address1_local = weights3_0_addr_33_reg_3590_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_address1_local = weights3_0_addr_32_reg_3547_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_address1_local = weights3_0_addr_31_reg_3526_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_address1_local = weights3_0_addr_30_reg_3483_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_address1_local = weights3_0_addr_29_reg_3463_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_address1_local = weights3_0_addr_27_reg_3411_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_address1_local = weights3_0_addr_24_reg_3396_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_address1_local = weights3_0_addr_26_reg_3308_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_address1_local = weights3_0_addr_25_reg_3335_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_address1_local = weights3_0_addr_reg_3232_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address1_local = zext_ln194_30_fu_2401_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address1_local = lshr_ln194_41_cast_fu_2307_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address1_local = add_ln194_22_cast_fu_2184_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address1_local = zext_ln194_22_fu_2071_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address1_local = lshr_ln194_29_cast_fu_1977_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address1_local = add_ln194_14_cast_fu_1854_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address1_local = zext_ln194_14_fu_1741_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address1_local = lshr_ln194_17_cast_fu_1647_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address1_local = add_ln194_6_cast_fu_1524_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = zext_ln194_2_fu_1394_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = lshr_ln194_5_cast_fu_1305_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_1186_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_d0_local = bitcast_ln194_117_fu_3192_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_d0_local = bitcast_ln194_114_fu_3176_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_d0_local = bitcast_ln194_119_fu_3160_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_d0_local = bitcast_ln194_118_fu_3144_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_d0_local = bitcast_ln194_116_fu_3132_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_d0_local = bitcast_ln194_115_fu_3120_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_d0_local = bitcast_ln194_112_fu_3096_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_d0_local = bitcast_ln194_111_fu_3080_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_d0_local = bitcast_ln194_110_fu_3064_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_d0_local = bitcast_ln194_109_fu_3031_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_d0_local = bitcast_ln194_108_fu_3003_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_d0_local = bitcast_ln194_101_fu_2798_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_d1_local = bitcast_ln194_113_fu_3116_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_d1_local = bitcast_ln194_107_fu_2998_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_d1_local = bitcast_ln194_106_fu_2973_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_d1_local = bitcast_ln194_105_fu_2953_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_d1_local = bitcast_ln194_104_fu_2933_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_d1_local = bitcast_ln194_103_fu_2913_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_d1_local = bitcast_ln194_102_fu_2888_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_d1_local = bitcast_ln194_100_fu_2853_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_d1_local = bitcast_ln194_97_fu_2833_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_d1_local = bitcast_ln194_99_fu_2813_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_d1_local = bitcast_ln194_98_fu_2793_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_d1_local = bitcast_ln194_96_fu_2773_p1;
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_address0_local = weights3_1_addr_44_reg_4031_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_address0_local = weights3_1_addr_41_reg_3924_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_address0_local = weights3_1_addr_46_reg_4115_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_address0_local = weights3_1_addr_45_reg_4093_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_address0_local = weights3_1_addr_43_reg_4009_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_address0_local = weights3_1_addr_42_reg_3947_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_address0_local = weights3_1_addr_40_reg_3862_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_address0_local = weights3_1_addr_38_reg_3783_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_address0_local = weights3_1_addr_37_reg_3760_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_address0_local = weights3_1_addr_36_reg_3698_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_address0_local = weights3_1_addr_35_reg_3676_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_address0_local = weights3_1_addr_28_reg_3360_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address0_local = zext_ln194_32_fu_2482_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address0_local = add_ln194_26_cast_fu_2339_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address0_local = lshr_ln194_39_cast_fu_2246_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address0_local = zext_ln194_24_fu_2152_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address0_local = add_ln194_18_cast_fu_2009_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address0_local = lshr_ln194_27_cast_fu_1916_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address0_local = zext_ln194_16_fu_1822_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = add_ln194_10_cast_fu_1679_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address0_local = lshr_ln194_15_cast_fu_1586_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = lshr_ln194_9_cast_fu_1474_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln194_8_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = or_ln194_cast_fu_1262_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_address1_local = weights3_1_addr_39_reg_3840_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_address1_local = weights3_1_addr_34_reg_3617_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_address1_local = weights3_1_addr_33_reg_3595_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_address1_local = weights3_1_addr_32_reg_3553_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_address1_local = weights3_1_addr_31_reg_3531_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_address1_local = weights3_1_addr_30_reg_3489_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_address1_local = weights3_1_addr_29_reg_3468_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_address1_local = weights3_1_addr_27_reg_3417_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_address1_local = weights3_1_addr_24_reg_3401_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_address1_local = weights3_1_addr_26_reg_3314_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_address1_local = weights3_1_addr_25_reg_3340_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_address1_local = weights3_1_addr_reg_3293_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address1_local = lshr_ln194_45_cast_fu_2421_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address1_local = zext_ln194_28_fu_2327_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address1_local = add_ln194_22_cast_fu_2184_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address1_local = lshr_ln194_33_cast_fu_2091_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address1_local = zext_ln194_20_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address1_local = add_ln194_14_cast_fu_1854_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address1_local = lshr_ln194_21_cast_fu_1761_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address1_local = zext_ln194_12_fu_1667_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address1_local = add_ln194_6_cast_fu_1524_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = lshr_ln194_3_cast_fu_1414_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = zext_ln194_4_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_1186_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_d0_local = bitcast_ln194_141_fu_3196_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_d0_local = bitcast_ln194_138_fu_3180_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_d0_local = bitcast_ln194_143_fu_3164_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_d0_local = bitcast_ln194_142_fu_3148_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_d0_local = bitcast_ln194_140_fu_3136_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_d0_local = bitcast_ln194_139_fu_3124_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_d0_local = bitcast_ln194_137_fu_3104_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_d0_local = bitcast_ln194_135_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_d0_local = bitcast_ln194_134_fu_3048_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_d0_local = bitcast_ln194_133_fu_3035_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_d0_local = bitcast_ln194_132_fu_3012_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_d0_local = bitcast_ln194_125_fu_2823_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_d1_local = bitcast_ln194_136_fu_3100_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_d1_local = bitcast_ln194_131_fu_3007_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_d1_local = bitcast_ln194_130_fu_2978_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_d1_local = bitcast_ln194_129_fu_2958_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_d1_local = bitcast_ln194_128_fu_2938_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_d1_local = bitcast_ln194_127_fu_2918_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_d1_local = bitcast_ln194_126_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_d1_local = bitcast_ln194_124_fu_2868_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_d1_local = bitcast_ln194_121_fu_2838_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_d1_local = bitcast_ln194_123_fu_2818_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_d1_local = bitcast_ln194_122_fu_2803_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_d1_local = bitcast_ln194_120_fu_2778_p1;
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_2_address0_local = weights3_2_addr_44_reg_4036_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_2_address0_local = weights3_2_addr_41_reg_3930_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_2_address0_local = weights3_2_addr_46_reg_4120_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_2_address0_local = weights3_2_addr_45_reg_4099_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_2_address0_local = weights3_2_addr_43_reg_4015_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_2_address0_local = weights3_2_addr_42_reg_3952_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_2_address0_local = weights3_2_addr_40_reg_3867_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_2_address0_local = weights3_2_addr_38_reg_3788_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_2_address0_local = weights3_2_addr_37_reg_3766_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_2_address0_local = weights3_2_addr_36_reg_3703_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_2_address0_local = weights3_2_addr_35_reg_3682_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_2_address0_local = weights3_2_addr_26_reg_3320_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_2_address0_local = zext_ln194_32_fu_2482_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_2_address0_local = add_ln194_26_cast_fu_2339_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_2_address0_local = zext_ln194_27_fu_2266_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_2_address0_local = zext_ln194_24_fu_2152_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_2_address0_local = add_ln194_18_cast_fu_2009_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_2_address0_local = zext_ln194_19_fu_1936_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_address0_local = zext_ln194_16_fu_1822_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address0_local = add_ln194_10_cast_fu_1679_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_address0_local = zext_ln194_11_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address0_local = zext_ln194_7_fu_1494_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = zext_ln194_8_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address0_local = or_ln194_cast_fu_1262_p1;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_2_address1_local = weights3_2_addr_39_reg_3845_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_2_address1_local = weights3_2_addr_34_reg_3623_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_2_address1_local = weights3_2_addr_33_reg_3600_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_2_address1_local = weights3_2_addr_32_reg_3559_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_2_address1_local = weights3_2_addr_31_reg_3536_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_2_address1_local = weights3_2_addr_30_reg_3495_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_2_address1_local = weights3_2_addr_29_reg_3473_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_2_address1_local = weights3_2_addr_27_reg_3423_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_2_address1_local = weights3_2_addr_24_reg_3325_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_2_address1_local = weights3_2_addr_28_reg_3365_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_2_address1_local = weights3_2_addr_25_reg_3345_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_2_address1_local = weights3_2_addr_reg_3298_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_2_address1_local = zext_ln194_31_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_2_address1_local = zext_ln194_28_fu_2327_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_2_address1_local = add_ln194_22_cast_fu_2184_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_2_address1_local = zext_ln194_23_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_2_address1_local = zext_ln194_20_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_2_address1_local = add_ln194_14_cast_fu_1854_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_address1_local = zext_ln194_15_fu_1781_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address1_local = zext_ln194_12_fu_1667_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_address1_local = add_ln194_6_cast_fu_1524_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address1_local = weights3_2_addr_24_reg_3325;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address1_local = zext_ln194_4_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address1_local = zext_ln194_fu_1186_p1;
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_2_d0_local = bitcast_ln194_165_fu_3200_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_2_d0_local = bitcast_ln194_162_fu_3184_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_2_d0_local = bitcast_ln194_167_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_2_d0_local = bitcast_ln194_166_fu_3152_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_2_d0_local = bitcast_ln194_164_fu_3140_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_2_d0_local = bitcast_ln194_163_fu_3128_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_2_d0_local = bitcast_ln194_161_fu_3112_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_2_d0_local = bitcast_ln194_159_fu_3068_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_2_d0_local = bitcast_ln194_158_fu_3052_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_2_d0_local = bitcast_ln194_157_fu_3039_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_2_d0_local = bitcast_ln194_156_fu_3021_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_2_d0_local = bitcast_ln194_147_fu_2848_p1;
    end else begin
        weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_2_d1_local = bitcast_ln194_160_fu_3108_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_2_d1_local = bitcast_ln194_155_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_2_d1_local = bitcast_ln194_154_fu_2983_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_2_d1_local = bitcast_ln194_153_fu_2963_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_2_d1_local = bitcast_ln194_152_fu_2943_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_2_d1_local = bitcast_ln194_151_fu_2923_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_2_d1_local = bitcast_ln194_150_fu_2898_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_2_d1_local = bitcast_ln194_148_fu_2873_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_2_d1_local = bitcast_ln194_145_fu_2843_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_2_d1_local = bitcast_ln194_149_fu_2828_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_2_d1_local = bitcast_ln194_146_fu_2808_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_2_d1_local = bitcast_ln194_144_fu_2783_p1;
    end else begin
        weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_3_address0_local = weights3_3_addr_46_reg_4125_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_3_address0_local = weights3_3_addr_45_reg_4105_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_3_address0_local = weights3_3_addr_44_reg_4081_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_3_address0_local = weights3_3_addr_43_reg_4021_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_3_address0_local = weights3_3_addr_42_reg_3957_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_3_address0_local = weights3_3_addr_40_reg_3872_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_3_address0_local = weights3_3_addr_38_reg_3828_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_3_address0_local = weights3_3_addr_36_reg_3708_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_3_address0_local = weights3_3_addr_35_reg_3688_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address0_local = weights3_3_addr_34_reg_3629_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_3_address0_local = weights3_3_addr_29_reg_3478_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_3_address0_local = weights3_3_addr_27_reg_3429_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_3_address0_local = weights3_3_addr_25_reg_3350_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_address0_local = zext_ln194_31_fu_2441_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_address0_local = zext_ln194_28_fu_2327_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_address0_local = zext_ln194_25_fu_2206_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_address0_local = zext_ln194_23_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_address0_local = zext_ln194_20_fu_1997_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_address0_local = zext_ln194_17_fu_1876_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address0_local = zext_ln194_15_fu_1781_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address0_local = zext_ln194_12_fu_1667_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address0_local = zext_ln194_9_fu_1546_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = zext_ln194_7_fu_1494_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln194_4_fu_1325_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_3_address1_local = weights3_3_addr_41_reg_3936_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_3_address1_local = weights3_3_addr_39_reg_3850_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_3_address1_local = weights3_3_addr_37_reg_3772_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_3_address1_local = weights3_3_addr_33_reg_3605_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_3_address1_local = weights3_3_addr_32_reg_3585_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_3_address1_local = weights3_3_addr_31_reg_3541_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_3_address1_local = weights3_3_addr_30_reg_3501_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_3_address1_local = weights3_3_addr_28_reg_3371_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_3_address1_local = weights3_3_addr_26_reg_3406_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_3_address1_local = weights3_3_addr_24_reg_3330_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_3_address1_local = weights3_3_addr_reg_3303_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_3_address1_local = weights3_3_addr_46_reg_4125;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_address1_local = zext_ln194_29_fu_2381_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_address1_local = weights3_3_addr_42_reg_3957;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_address1_local = weights3_3_addr_40_reg_3872;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_address1_local = zext_ln194_21_fu_2051_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_address1_local = weights3_3_addr_36_reg_3708;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_address1_local = weights3_3_addr_34_reg_3629;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address1_local = zext_ln194_13_fu_1721_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address1_local = weights3_3_addr_30_reg_3501;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address1_local = weights3_3_addr_28_reg_3371;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address1_local = zext_ln194_5_fu_1434_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address1_local = zext_ln194_3_fu_1284_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address1_local = zext_ln194_1_fu_1239_p1;
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_3_d0_local = bitcast_ln194_191_fu_3204_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_3_d0_local = bitcast_ln194_190_fu_3188_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_3_d0_local = bitcast_ln194_189_fu_3172_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_3_d0_local = bitcast_ln194_188_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_3_d0_local = bitcast_ln194_187_fu_3092_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_3_d0_local = bitcast_ln194_185_fu_3076_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_3_d0_local = bitcast_ln194_183_fu_3060_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_3_d0_local = bitcast_ln194_181_fu_3043_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_3_d0_local = bitcast_ln194_180_fu_3026_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_d0_local = bitcast_ln194_179_fu_2993_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_3_d0_local = bitcast_ln194_174_fu_2908_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_3_d0_local = bitcast_ln194_172_fu_2883_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_3_d0_local = bitcast_ln194_170_fu_2863_p1;
    end else begin
        weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_3_d1_local = bitcast_ln194_186_fu_3088_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_3_d1_local = bitcast_ln194_184_fu_3072_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_3_d1_local = bitcast_ln194_182_fu_3056_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_3_d1_local = bitcast_ln194_178_fu_2988_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_3_d1_local = bitcast_ln194_177_fu_2968_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_3_d1_local = bitcast_ln194_176_fu_2948_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_3_d1_local = bitcast_ln194_175_fu_2928_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_3_d1_local = bitcast_ln194_173_fu_2903_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_3_d1_local = bitcast_ln194_171_fu_2878_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_3_d1_local = bitcast_ln194_169_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_3_d1_local = bitcast_ln194_168_fu_2788_p1;
    end else begin
        weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
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
assign add_ln192_fu_2727_p2 = (i_4_reg_3223 + 7'd32);
assign add_ln194_10_cast_fu_1679_p1 = add_ln194_10_fu_1674_p2;
assign add_ln194_10_fu_1674_p2 = (or_ln194_cast214_reg_3434 + 6'd6);
assign add_ln194_11_fu_1726_p2 = (empty_reg_3237 + 8'd37);
assign add_ln194_12_fu_1746_p2 = (empty_reg_3237 + 8'd38);
assign add_ln194_13_fu_1787_p2 = (empty_reg_3237 + 8'd41);
assign add_ln194_14_cast_fu_1854_p1 = add_ln194_14_fu_1849_p2;
assign add_ln194_14_fu_1849_p2 = (or_ln194_cast214_reg_3434 + 6'd9);
assign add_ln194_15_fu_1881_p2 = (empty_reg_3237 + 8'd49);
assign add_ln194_16_fu_1901_p2 = (empty_reg_3237 + 8'd50);
assign add_ln194_17_fu_1962_p2 = (empty_reg_3237 + 8'd53);
assign add_ln194_18_cast_fu_2009_p1 = add_ln194_18_fu_2004_p2;
assign add_ln194_18_fu_2004_p2 = (or_ln194_cast214_reg_3434 + 6'd12);
assign add_ln194_19_fu_2056_p2 = (empty_reg_3237 + 8'd61);
assign add_ln194_1_fu_1399_p2 = (empty_reg_3237 + 8'd2);
assign add_ln194_20_fu_2076_p2 = (empty_reg_3237 + 8'd62);
assign add_ln194_21_fu_2117_p2 = (empty_reg_3237 + 8'd65);
assign add_ln194_22_cast_fu_2184_p1 = add_ln194_22_fu_2179_p2;
assign add_ln194_22_fu_2179_p2 = (or_ln194_cast214_reg_3434 + 6'd15);
assign add_ln194_23_fu_2211_p2 = (empty_reg_3237 + 8'd73);
assign add_ln194_24_fu_2231_p2 = (empty_reg_3237 + 8'd74);
assign add_ln194_25_fu_2292_p2 = (empty_reg_3237 + 8'd77);
assign add_ln194_26_cast_fu_2339_p1 = add_ln194_26_fu_2334_p2;
assign add_ln194_26_fu_2334_p2 = (or_ln194_cast214_reg_3434 + 6'd18);
assign add_ln194_27_fu_2386_p2 = (empty_reg_3237 + 8'd85);
assign add_ln194_28_fu_2406_p2 = (empty_reg_3237 + 8'd86);
assign add_ln194_29_fu_2447_p2 = (empty_reg_3237 + 8'd89);
assign add_ln194_2_fu_1290_p2 = (empty_reg_3237 + 8'd5);
assign add_ln194_3_fu_1439_p2 = (empty_reg_3237 + 8'd13);
assign add_ln194_4_fu_1459_p2 = (empty_reg_3237 + 8'd14);
assign add_ln194_5_fu_1332_p2 = (empty_reg_3237 + 8'd17);
assign add_ln194_6_cast_fu_1524_p1 = add_ln194_6_fu_1518_p2;
assign add_ln194_6_fu_1518_p2 = (or_ln194_cast214_fu_1515_p1 + 6'd3);
assign add_ln194_7_fu_1551_p2 = (empty_reg_3237 + 8'd25);
assign add_ln194_8_fu_1571_p2 = (empty_reg_3237 + 8'd26);
assign add_ln194_9_fu_1632_p2 = (empty_reg_3237 + 8'd29);
assign add_ln194_fu_1379_p2 = (empty_reg_3237 + 8'd1);
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
assign bitcast_ln194_100_fu_2853_p1 = reg_1130;
assign bitcast_ln194_101_fu_2798_p1 = reg_1130;
assign bitcast_ln194_102_fu_2888_p1 = reg_1118;
assign bitcast_ln194_103_fu_2913_p1 = reg_1118;
assign bitcast_ln194_104_fu_2933_p1 = reg_1118;
assign bitcast_ln194_105_fu_2953_p1 = reg_1118;
assign bitcast_ln194_106_fu_2973_p1 = reg_1118;
assign bitcast_ln194_107_fu_2998_p1 = reg_1118;
assign bitcast_ln194_108_fu_3003_p1 = div213_16_reg_4431;
assign bitcast_ln194_109_fu_3031_p1 = div213_17_1_reg_4441;
assign bitcast_ln194_10_fu_1622_p1 = reg_1012;
assign bitcast_ln194_110_fu_3064_p1 = div213_18_2_reg_4456;
assign bitcast_ln194_111_fu_3080_p1 = div213_20_reg_4476;
assign bitcast_ln194_112_fu_3096_p1 = div213_21_1_reg_4496;
assign bitcast_ln194_113_fu_3116_p1 = div213_22_2_reg_4516;
assign bitcast_ln194_114_fu_3176_p1 = div213_24_reg_4536;
assign bitcast_ln194_115_fu_3120_p1 = div213_25_1_reg_4556;
assign bitcast_ln194_116_fu_3132_p1 = div213_26_2_reg_4576;
assign bitcast_ln194_117_fu_3192_p1 = div213_28_reg_4596;
assign bitcast_ln194_118_fu_3144_p1 = div213_29_1_reg_4616;
assign bitcast_ln194_119_fu_3160_p1 = div213_30_2_reg_4636;
assign bitcast_ln194_11_fu_1947_p1 = reg_1035;
assign bitcast_ln194_120_fu_2778_p1 = reg_1122;
assign bitcast_ln194_121_fu_2838_p1 = reg_1122;
assign bitcast_ln194_122_fu_2803_p1 = reg_1122;
assign bitcast_ln194_123_fu_2818_p1 = reg_1122;
assign bitcast_ln194_124_fu_2868_p1 = reg_1118;
assign bitcast_ln194_125_fu_2823_p1 = reg_1126;
assign bitcast_ln194_126_fu_2893_p1 = reg_1122;
assign bitcast_ln194_127_fu_2918_p1 = reg_1122;
assign bitcast_ln194_128_fu_2938_p1 = reg_1122;
assign bitcast_ln194_129_fu_2958_p1 = reg_1122;
assign bitcast_ln194_12_fu_1686_p1 = reg_1020;
assign bitcast_ln194_130_fu_2978_p1 = reg_1122;
assign bitcast_ln194_131_fu_3007_p1 = reg_1122;
assign bitcast_ln194_132_fu_3012_p1 = div213_16_1_reg_4436;
assign bitcast_ln194_133_fu_3035_p1 = div213_17_2_reg_4446;
assign bitcast_ln194_134_fu_3048_p1 = div213_19_reg_4461;
assign bitcast_ln194_135_fu_3084_p1 = div213_20_1_reg_4481;
assign bitcast_ln194_136_fu_3100_p1 = div213_21_2_reg_4501;
assign bitcast_ln194_137_fu_3104_p1 = div213_23_reg_4521;
assign bitcast_ln194_138_fu_3180_p1 = div213_24_1_reg_4541;
assign bitcast_ln194_139_fu_3124_p1 = div213_25_2_reg_4561;
assign bitcast_ln194_13_fu_1691_p1 = reg_1025;
assign bitcast_ln194_140_fu_3136_p1 = div213_27_reg_4581;
assign bitcast_ln194_141_fu_3196_p1 = div213_28_1_reg_4601;
assign bitcast_ln194_142_fu_3148_p1 = div213_29_2_reg_4621;
assign bitcast_ln194_143_fu_3164_p1 = div213_31_reg_4641;
assign bitcast_ln194_144_fu_2783_p1 = reg_1126;
assign bitcast_ln194_145_fu_2843_p1 = reg_1126;
assign bitcast_ln194_146_fu_2808_p1 = reg_1126;
assign bitcast_ln194_147_fu_2848_p1 = reg_1130;
assign bitcast_ln194_148_fu_2873_p1 = reg_1122;
assign bitcast_ln194_149_fu_2828_p1 = reg_1130;
assign bitcast_ln194_14_fu_1844_p1 = reg_1030;
assign bitcast_ln194_150_fu_2898_p1 = reg_1126;
assign bitcast_ln194_151_fu_2923_p1 = reg_1126;
assign bitcast_ln194_152_fu_2943_p1 = reg_1126;
assign bitcast_ln194_153_fu_2963_p1 = reg_1126;
assign bitcast_ln194_154_fu_2983_p1 = reg_1126;
assign bitcast_ln194_155_fu_3016_p1 = reg_1126;
assign bitcast_ln194_156_fu_3021_p1 = reg_1134;
assign bitcast_ln194_157_fu_3039_p1 = div213_18_reg_4451;
assign bitcast_ln194_158_fu_3052_p1 = div213_19_1_reg_4466;
assign bitcast_ln194_159_fu_3068_p1 = div213_20_2_reg_4486;
assign bitcast_ln194_15_fu_1952_p1 = reg_1055;
assign bitcast_ln194_160_fu_3108_p1 = div213_22_reg_4506;
assign bitcast_ln194_161_fu_3112_p1 = div213_23_1_reg_4526;
assign bitcast_ln194_162_fu_3184_p1 = div213_24_2_reg_4546;
assign bitcast_ln194_163_fu_3128_p1 = div213_26_reg_4566;
assign bitcast_ln194_164_fu_3140_p1 = div213_27_1_reg_4586;
assign bitcast_ln194_165_fu_3200_p1 = div213_28_2_reg_4606;
assign bitcast_ln194_166_fu_3152_p1 = div213_30_reg_4626;
assign bitcast_ln194_167_fu_3168_p1 = div213_31_1_reg_4646;
assign bitcast_ln194_168_fu_2788_p1 = reg_1130;
assign bitcast_ln194_169_fu_2858_p1 = reg_1118;
assign bitcast_ln194_16_fu_1957_p1 = reg_1040;
assign bitcast_ln194_170_fu_2863_p1 = reg_1122;
assign bitcast_ln194_171_fu_2878_p1 = reg_1126;
assign bitcast_ln194_172_fu_2883_p1 = reg_1134;
assign bitcast_ln194_173_fu_2903_p1 = reg_1130;
assign bitcast_ln194_174_fu_2908_p1 = reg_1138;
assign bitcast_ln194_175_fu_2928_p1 = reg_1130;
assign bitcast_ln194_176_fu_2948_p1 = reg_1130;
assign bitcast_ln194_177_fu_2968_p1 = reg_1130;
assign bitcast_ln194_178_fu_2988_p1 = reg_1130;
assign bitcast_ln194_179_fu_2993_p1 = reg_1130;
assign bitcast_ln194_17_fu_2016_p1 = reg_1059;
assign bitcast_ln194_180_fu_3026_p1 = reg_1130;
assign bitcast_ln194_181_fu_3043_p1 = reg_1138;
assign bitcast_ln194_182_fu_3056_p1 = div213_19_2_reg_4471;
assign bitcast_ln194_183_fu_3060_p1 = div213_21_reg_4491;
assign bitcast_ln194_184_fu_3072_p1 = div213_22_1_reg_4511;
assign bitcast_ln194_185_fu_3076_p1 = div213_23_2_reg_4531;
assign bitcast_ln194_186_fu_3088_p1 = div213_25_reg_4551;
assign bitcast_ln194_187_fu_3092_p1 = div213_26_1_reg_4571;
assign bitcast_ln194_188_fu_3156_p1 = div213_27_2_reg_4591;
assign bitcast_ln194_189_fu_3172_p1 = div213_29_reg_4611;
assign bitcast_ln194_18_fu_2021_p1 = reg_1064;
assign bitcast_ln194_190_fu_3188_p1 = div213_30_1_reg_4631;
assign bitcast_ln194_191_fu_3204_p1 = div213_31_2_reg_4651;
assign bitcast_ln194_19_fu_2026_p1 = reg_1069;
assign bitcast_ln194_1_fu_1500_p1 = reg_1008;
assign bitcast_ln194_20_fu_1627_p1 = reg_1040;
assign bitcast_ln194_21_fu_1696_p1 = reg_1045;
assign bitcast_ln194_22_fu_1701_p1 = reg_1050;
assign bitcast_ln194_23_fu_2031_p1 = reg_1073;
assign bitcast_ln194_24_fu_2159_p1 = reg_1020;
assign bitcast_ln194_25_fu_2164_p1 = reg_1025;
assign bitcast_ln194_26_fu_2169_p1 = reg_1050;
assign bitcast_ln194_27_fu_2174_p1 = reg_1077;
assign bitcast_ln194_28_fu_2272_p1 = reg_1081;
assign bitcast_ln194_29_fu_2277_p1 = reg_1045;
assign bitcast_ln194_2_fu_1505_p1 = reg_1012;
assign bitcast_ln194_30_fu_2282_p1 = reg_1086;
assign bitcast_ln194_31_fu_2287_p1 = reg_1091;
assign bitcast_ln194_32_fu_2346_p1 = reg_1004;
assign bitcast_ln194_33_fu_2351_p1 = reg_1008;
assign bitcast_ln194_34_fu_2356_p1 = reg_1012;
assign bitcast_ln194_35_fu_2361_p1 = reg_1095;
assign bitcast_ln194_36_fu_2489_p1 = reg_1100;
assign bitcast_ln194_37_fu_2494_p1 = reg_1105;
assign bitcast_ln194_38_fu_2499_p1 = reg_1030;
assign bitcast_ln194_39_fu_2504_p1 = reg_1016;
assign bitcast_ln194_3_fu_1510_p1 = reg_1016;
assign bitcast_ln194_40_fu_2509_p1 = reg_1040;
assign bitcast_ln194_41_fu_2514_p1 = reg_1110;
assign bitcast_ln194_42_fu_2519_p1 = reg_1114;
assign bitcast_ln194_43_fu_2524_p1 = reg_1035;
assign bitcast_ln194_44_fu_2529_p1 = weights3_0_load_34_reg_3655;
assign bitcast_ln194_45_fu_2533_p1 = weights3_1_load_34_reg_3660;
assign bitcast_ln194_46_fu_2537_p1 = weights3_2_load_34_reg_3665;
assign bitcast_ln194_47_fu_2541_p1 = reg_1055;
assign bitcast_ln194_48_fu_2546_p1 = weights3_0_load_35_reg_3734;
assign bitcast_ln194_49_fu_2550_p1 = reg_1059;
assign bitcast_ln194_4_fu_1829_p1 = reg_1004;
assign bitcast_ln194_50_fu_2555_p1 = reg_1064;
assign bitcast_ln194_51_fu_2560_p1 = reg_1069;
assign bitcast_ln194_52_fu_2565_p1 = weights3_0_load_36_reg_3739;
assign bitcast_ln194_53_fu_2569_p1 = weights3_1_load_36_reg_3744;
assign bitcast_ln194_54_fu_2573_p1 = weights3_2_load_36_reg_3749;
assign bitcast_ln194_55_fu_2577_p1 = reg_1073;
assign bitcast_ln194_56_fu_2582_p1 = reg_1020;
assign bitcast_ln194_57_fu_2587_p1 = reg_1025;
assign bitcast_ln194_58_fu_2592_p1 = reg_1050;
assign bitcast_ln194_59_fu_2597_p1 = reg_1077;
assign bitcast_ln194_5_fu_1834_p1 = reg_1008;
assign bitcast_ln194_60_fu_2602_p1 = weights3_0_load_38_reg_3813;
assign bitcast_ln194_61_fu_2606_p1 = weights3_1_load_38_reg_3818;
assign bitcast_ln194_62_fu_2610_p1 = weights3_2_load_38_reg_3823;
assign bitcast_ln194_63_fu_2614_p1 = reg_1091;
assign bitcast_ln194_64_fu_2619_p1 = reg_1081;
assign bitcast_ln194_65_fu_2624_p1 = reg_1045;
assign bitcast_ln194_66_fu_2629_p1 = reg_1086;
assign bitcast_ln194_67_fu_2634_p1 = weights3_3_load_39_reg_3898;
assign bitcast_ln194_68_fu_2638_p1 = weights3_0_load_40_reg_3903;
assign bitcast_ln194_69_fu_2642_p1 = weights3_1_load_40_reg_3908;
assign bitcast_ln194_6_fu_1839_p1 = reg_1012;
assign bitcast_ln194_70_fu_2646_p1 = weights3_2_load_40_reg_3913;
assign bitcast_ln194_71_fu_2650_p1 = reg_1095;
assign bitcast_ln194_72_fu_2655_p1 = reg_1004;
assign bitcast_ln194_73_fu_2660_p1 = reg_1008;
assign bitcast_ln194_74_fu_2665_p1 = reg_1012;
assign bitcast_ln194_75_fu_2670_p1 = weights3_3_load_41_reg_3983;
assign bitcast_ln194_76_fu_2674_p1 = weights3_0_load_42_reg_3988;
assign bitcast_ln194_77_fu_2678_p1 = weights3_1_load_42_reg_3993;
assign bitcast_ln194_78_fu_2682_p1 = weights3_2_load_42_reg_3998;
assign bitcast_ln194_79_fu_2686_p1 = reg_1016;
assign bitcast_ln194_7_fu_1942_p1 = reg_1016;
assign bitcast_ln194_80_fu_2691_p1 = reg_1100;
assign bitcast_ln194_81_fu_2696_p1 = reg_1105;
assign bitcast_ln194_82_fu_2701_p1 = reg_1030;
assign bitcast_ln194_83_fu_2706_p1 = weights3_3_load_43_reg_4061;
assign bitcast_ln194_84_fu_2710_p1 = weights3_0_load_44_reg_4066;
assign bitcast_ln194_85_fu_2714_p1 = weights3_1_load_44_reg_4071;
assign bitcast_ln194_86_fu_2718_p1 = weights3_2_load_44_reg_4076;
assign bitcast_ln194_87_fu_2722_p1 = reg_1035;
assign bitcast_ln194_88_fu_2737_p1 = reg_1040;
assign bitcast_ln194_89_fu_2742_p1 = reg_1110;
assign bitcast_ln194_8_fu_1612_p1 = reg_1004;
assign bitcast_ln194_90_fu_2747_p1 = reg_1114;
assign bitcast_ln194_91_fu_2752_p1 = weights3_3_load_45_reg_4151;
assign bitcast_ln194_92_fu_2756_p1 = weights3_0_load_46_reg_4156;
assign bitcast_ln194_93_fu_2760_p1 = weights3_1_load_46_reg_4161;
assign bitcast_ln194_94_fu_2764_p1 = weights3_2_load_46_reg_4166;
assign bitcast_ln194_95_fu_2768_p1 = reg_1055;
assign bitcast_ln194_96_fu_2773_p1 = reg_1118;
assign bitcast_ln194_97_fu_2833_p1 = reg_1118;
assign bitcast_ln194_98_fu_2793_p1 = reg_1118;
assign bitcast_ln194_99_fu_2813_p1 = reg_1118;
assign bitcast_ln194_9_fu_1617_p1 = reg_1008;
assign bitcast_ln194_fu_1374_p1 = reg_1004;
assign empty_59_fu_1269_p2 = (empty_reg_3237 + 8'd3);
assign empty_60_fu_1310_p2 = (empty_reg_3237 + 8'd6);
assign empty_61_fu_1419_p2 = (empty_reg_3237 + 8'd12);
assign empty_62_fu_1479_p2 = (empty_reg_3237 + 8'd15);
assign empty_63_fu_1352_p2 = (empty_reg_3237 + 8'd18);
assign empty_64_fu_1531_p2 = (empty_reg_3237 + 8'd24);
assign empty_65_fu_1591_p2 = (empty_reg_3237 + 8'd27);
assign empty_66_fu_1652_p2 = (empty_reg_3237 + 8'd30);
assign empty_67_fu_1706_p2 = (empty_reg_3237 + 8'd36);
assign empty_68_fu_1766_p2 = (empty_reg_3237 + 8'd39);
assign empty_69_fu_1807_p2 = (empty_reg_3237 + 8'd42);
assign empty_70_fu_1861_p2 = (empty_reg_3237 + 8'd48);
assign empty_71_fu_1921_p2 = (empty_reg_3237 + 8'd51);
assign empty_72_fu_1982_p2 = (empty_reg_3237 + 8'd54);
assign empty_73_fu_2036_p2 = (empty_reg_3237 + 8'd60);
assign empty_74_fu_2096_p2 = (empty_reg_3237 + 8'd63);
assign empty_75_fu_2137_p2 = (empty_reg_3237 + 8'd66);
assign empty_76_fu_2191_p2 = (empty_reg_3237 + 8'd72);
assign empty_77_fu_2251_p2 = (empty_reg_3237 + 8'd75);
assign empty_78_fu_2312_p2 = (empty_reg_3237 + 8'd78);
assign empty_79_fu_2366_p2 = (empty_reg_3237 + 8'd84);
assign empty_80_fu_2426_p2 = (empty_reg_3237 + 8'd87);
assign empty_81_fu_2467_p2 = (empty_reg_3237 + 8'd90);
assign empty_fu_1223_p2 = (p_shl_fu_1215_p3 - or_ln192_cast_fu_1211_p1);
assign lshr_ln194_10_fu_1337_p4 = {{add_ln194_5_fu_1332_p2[7:2]}};
assign lshr_ln194_11_cast_fu_1347_p1 = lshr_ln194_10_fu_1337_p4;
assign lshr_ln194_11_fu_1357_p4 = {{empty_63_fu_1352_p2[7:2]}};
assign lshr_ln194_12_fu_1536_p4 = {{empty_64_fu_1531_p2[7:2]}};
assign lshr_ln194_13_fu_1556_p4 = {{add_ln194_7_fu_1551_p2[7:2]}};
assign lshr_ln194_14_fu_1576_p4 = {{add_ln194_8_fu_1571_p2[7:2]}};
assign lshr_ln194_15_cast_fu_1586_p1 = lshr_ln194_14_fu_1576_p4;
assign lshr_ln194_15_fu_1596_p4 = {{empty_65_fu_1591_p2[7:2]}};
assign lshr_ln194_16_fu_1637_p4 = {{add_ln194_9_fu_1632_p2[7:2]}};
assign lshr_ln194_17_cast_fu_1647_p1 = lshr_ln194_16_fu_1637_p4;
assign lshr_ln194_17_fu_1657_p4 = {{empty_66_fu_1652_p2[7:2]}};
assign lshr_ln194_18_fu_1711_p4 = {{empty_67_fu_1706_p2[7:2]}};
assign lshr_ln194_19_fu_1731_p4 = {{add_ln194_11_fu_1726_p2[7:2]}};
assign lshr_ln194_1_fu_1229_p4 = {{empty_fu_1223_p2[7:2]}};
assign lshr_ln194_20_fu_1751_p4 = {{add_ln194_12_fu_1746_p2[7:2]}};
assign lshr_ln194_21_cast_fu_1761_p1 = lshr_ln194_20_fu_1751_p4;
assign lshr_ln194_21_fu_1771_p4 = {{empty_68_fu_1766_p2[7:2]}};
assign lshr_ln194_22_fu_1792_p4 = {{add_ln194_13_fu_1787_p2[7:2]}};
assign lshr_ln194_23_cast_fu_1802_p1 = lshr_ln194_22_fu_1792_p4;
assign lshr_ln194_23_fu_1812_p4 = {{empty_69_fu_1807_p2[7:2]}};
assign lshr_ln194_24_fu_1866_p4 = {{empty_70_fu_1861_p2[7:2]}};
assign lshr_ln194_25_fu_1886_p4 = {{add_ln194_15_fu_1881_p2[7:2]}};
assign lshr_ln194_26_fu_1906_p4 = {{add_ln194_16_fu_1901_p2[7:2]}};
assign lshr_ln194_27_cast_fu_1916_p1 = lshr_ln194_26_fu_1906_p4;
assign lshr_ln194_27_fu_1926_p4 = {{empty_71_fu_1921_p2[7:2]}};
assign lshr_ln194_28_fu_1967_p4 = {{add_ln194_17_fu_1962_p2[7:2]}};
assign lshr_ln194_29_cast_fu_1977_p1 = lshr_ln194_28_fu_1967_p4;
assign lshr_ln194_29_fu_1987_p4 = {{empty_72_fu_1982_p2[7:2]}};
assign lshr_ln194_2_fu_1384_p4 = {{add_ln194_fu_1379_p2[7:2]}};
assign lshr_ln194_30_fu_2041_p4 = {{empty_73_fu_2036_p2[7:2]}};
assign lshr_ln194_31_fu_2061_p4 = {{add_ln194_19_fu_2056_p2[7:2]}};
assign lshr_ln194_32_fu_2081_p4 = {{add_ln194_20_fu_2076_p2[7:2]}};
assign lshr_ln194_33_cast_fu_2091_p1 = lshr_ln194_32_fu_2081_p4;
assign lshr_ln194_33_fu_2101_p4 = {{empty_74_fu_2096_p2[7:2]}};
assign lshr_ln194_34_fu_2122_p4 = {{add_ln194_21_fu_2117_p2[7:2]}};
assign lshr_ln194_35_cast_fu_2132_p1 = lshr_ln194_34_fu_2122_p4;
assign lshr_ln194_35_fu_2142_p4 = {{empty_75_fu_2137_p2[7:2]}};
assign lshr_ln194_36_fu_2196_p4 = {{empty_76_fu_2191_p2[7:2]}};
assign lshr_ln194_37_fu_2216_p4 = {{add_ln194_23_fu_2211_p2[7:2]}};
assign lshr_ln194_38_fu_2236_p4 = {{add_ln194_24_fu_2231_p2[7:2]}};
assign lshr_ln194_39_cast_fu_2246_p1 = lshr_ln194_38_fu_2236_p4;
assign lshr_ln194_39_fu_2256_p4 = {{empty_77_fu_2251_p2[7:2]}};
assign lshr_ln194_3_cast_fu_1414_p1 = lshr_ln194_3_fu_1404_p4;
assign lshr_ln194_3_fu_1404_p4 = {{add_ln194_1_fu_1399_p2[7:2]}};
assign lshr_ln194_40_fu_2297_p4 = {{add_ln194_25_fu_2292_p2[7:2]}};
assign lshr_ln194_41_cast_fu_2307_p1 = lshr_ln194_40_fu_2297_p4;
assign lshr_ln194_41_fu_2317_p4 = {{empty_78_fu_2312_p2[7:2]}};
assign lshr_ln194_42_fu_2371_p4 = {{empty_79_fu_2366_p2[7:2]}};
assign lshr_ln194_43_fu_2391_p4 = {{add_ln194_27_fu_2386_p2[7:2]}};
assign lshr_ln194_44_fu_2411_p4 = {{add_ln194_28_fu_2406_p2[7:2]}};
assign lshr_ln194_45_cast_fu_2421_p1 = lshr_ln194_44_fu_2411_p4;
assign lshr_ln194_45_fu_2431_p4 = {{empty_80_fu_2426_p2[7:2]}};
assign lshr_ln194_46_fu_2452_p4 = {{add_ln194_29_fu_2447_p2[7:2]}};
assign lshr_ln194_47_cast_fu_2462_p1 = lshr_ln194_46_fu_2452_p4;
assign lshr_ln194_47_fu_2472_p4 = {{empty_81_fu_2467_p2[7:2]}};
assign lshr_ln194_4_fu_1274_p4 = {{empty_59_fu_1269_p2[7:2]}};
assign lshr_ln194_5_cast_fu_1305_p1 = lshr_ln194_5_fu_1295_p4;
assign lshr_ln194_5_fu_1295_p4 = {{add_ln194_2_fu_1290_p2[7:2]}};
assign lshr_ln194_6_fu_1315_p4 = {{empty_60_fu_1310_p2[7:2]}};
assign lshr_ln194_7_fu_1424_p4 = {{empty_61_fu_1419_p2[7:2]}};
assign lshr_ln194_8_fu_1444_p4 = {{add_ln194_3_fu_1439_p2[7:2]}};
assign lshr_ln194_9_cast_fu_1474_p1 = lshr_ln194_9_fu_1464_p4;
assign lshr_ln194_9_fu_1464_p4 = {{add_ln194_4_fu_1459_p2[7:2]}};
assign lshr_ln194_s_fu_1484_p4 = {{empty_62_fu_1479_p2[7:2]}};
assign lshr_ln7_fu_1158_p4 = {{ap_sig_allocacmp_i_4[5:2]}};
assign or_ln192_cast_fu_1211_p1 = or_ln4_fu_1203_p3;
assign or_ln194_cast214_fu_1515_p1 = or_ln5_reg_3288;
assign or_ln194_cast_fu_1262_p1 = or_ln5_fu_1254_p3;
assign or_ln4_fu_1203_p3 = {{tmp_s_fu_1193_p4}, {1'd1}};
assign or_ln5_fu_1254_p3 = {{tmp_17_fu_1244_p4}, {2'd3}};
assign p_shl1_fu_1172_p3 = {{lshr_ln7_fu_1158_p4}, {2'd0}};
assign p_shl_fu_1215_p3 = {{tmp_s_fu_1193_p4}, {3'd4}};
assign sub_ln194_fu_1180_p2 = (p_shl1_fu_1172_p3 - zext_ln194_33_fu_1168_p1);
assign tmp_17_fu_1244_p4 = {{sub_ln194_fu_1180_p2[4:2]}};
assign tmp_s_fu_1193_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
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
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_2_d0 = weights3_2_d0_local;
assign weights3_2_d1 = weights3_2_d1_local;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_2_we1 = weights3_2_we1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_3_d0 = weights3_3_d0_local;
assign weights3_3_d1 = weights3_3_d1_local;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_3_we1 = weights3_3_we1_local;
assign zext_ln194_10_fu_1566_p1 = lshr_ln194_13_fu_1556_p4;
assign zext_ln194_11_fu_1606_p1 = lshr_ln194_15_fu_1596_p4;
assign zext_ln194_12_fu_1667_p1 = lshr_ln194_17_fu_1657_p4;
assign zext_ln194_13_fu_1721_p1 = lshr_ln194_18_fu_1711_p4;
assign zext_ln194_14_fu_1741_p1 = lshr_ln194_19_fu_1731_p4;
assign zext_ln194_15_fu_1781_p1 = lshr_ln194_21_fu_1771_p4;
assign zext_ln194_16_fu_1822_p1 = lshr_ln194_23_fu_1812_p4;
assign zext_ln194_17_fu_1876_p1 = lshr_ln194_24_fu_1866_p4;
assign zext_ln194_18_fu_1896_p1 = lshr_ln194_25_fu_1886_p4;
assign zext_ln194_19_fu_1936_p1 = lshr_ln194_27_fu_1926_p4;
assign zext_ln194_1_fu_1239_p1 = lshr_ln194_1_fu_1229_p4;
assign zext_ln194_20_fu_1997_p1 = lshr_ln194_29_fu_1987_p4;
assign zext_ln194_21_fu_2051_p1 = lshr_ln194_30_fu_2041_p4;
assign zext_ln194_22_fu_2071_p1 = lshr_ln194_31_fu_2061_p4;
assign zext_ln194_23_fu_2111_p1 = lshr_ln194_33_fu_2101_p4;
assign zext_ln194_24_fu_2152_p1 = lshr_ln194_35_fu_2142_p4;
assign zext_ln194_25_fu_2206_p1 = lshr_ln194_36_fu_2196_p4;
assign zext_ln194_26_fu_2226_p1 = lshr_ln194_37_fu_2216_p4;
assign zext_ln194_27_fu_2266_p1 = lshr_ln194_39_fu_2256_p4;
assign zext_ln194_28_fu_2327_p1 = lshr_ln194_41_fu_2317_p4;
assign zext_ln194_29_fu_2381_p1 = lshr_ln194_42_fu_2371_p4;
assign zext_ln194_2_fu_1394_p1 = lshr_ln194_2_fu_1384_p4;
assign zext_ln194_30_fu_2401_p1 = lshr_ln194_43_fu_2391_p4;
assign zext_ln194_31_fu_2441_p1 = lshr_ln194_45_fu_2431_p4;
assign zext_ln194_32_fu_2482_p1 = lshr_ln194_47_fu_2472_p4;
assign zext_ln194_33_fu_1168_p1 = lshr_ln7_fu_1158_p4;
assign zext_ln194_3_fu_1284_p1 = lshr_ln194_4_fu_1274_p4;
assign zext_ln194_4_fu_1325_p1 = lshr_ln194_6_fu_1315_p4;
assign zext_ln194_5_fu_1434_p1 = lshr_ln194_7_fu_1424_p4;
assign zext_ln194_6_fu_1454_p1 = lshr_ln194_8_fu_1444_p4;
assign zext_ln194_7_fu_1494_p1 = lshr_ln194_s_fu_1484_p4;
assign zext_ln194_8_fu_1367_p1 = lshr_ln194_11_fu_1357_p4;
assign zext_ln194_9_fu_1546_p1 = lshr_ln194_12_fu_1536_p4;
assign zext_ln194_fu_1186_p1 = sub_ln194_fu_1180_p2;
always @ (posedge ap_clk) begin
    empty_reg_3237[0] <= 1'b1;
    or_ln5_reg_3288[1:0] <= 2'b11;
    weights3_0_addr_26_reg_3308[1:0] <= 2'b11;
    weights3_0_addr_26_reg_3308[5] <= 1'b0;
    weights3_0_addr_26_reg_3308_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_26_reg_3308_pp0_iter1_reg[5] <= 1'b0;
    weights3_0_addr_26_reg_3308_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_26_reg_3308_pp0_iter2_reg[5] <= 1'b0;
    weights3_1_addr_26_reg_3314[1:0] <= 2'b11;
    weights3_1_addr_26_reg_3314[5] <= 1'b0;
    weights3_1_addr_26_reg_3314_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_1_addr_26_reg_3314_pp0_iter1_reg[5] <= 1'b0;
    weights3_1_addr_26_reg_3314_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_1_addr_26_reg_3314_pp0_iter2_reg[5] <= 1'b0;
    weights3_2_addr_26_reg_3320[1:0] <= 2'b11;
    weights3_2_addr_26_reg_3320[5] <= 1'b0;
    weights3_2_addr_26_reg_3320_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_2_addr_26_reg_3320_pp0_iter1_reg[5] <= 1'b0;
    weights3_2_addr_26_reg_3320_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_2_addr_26_reg_3320_pp0_iter2_reg[5] <= 1'b0;
    or_ln194_cast214_reg_3434[1:0] <= 2'b11;
    or_ln194_cast214_reg_3434[5] <= 1'b0;
    weights3_0_addr_29_reg_3463[1:0] <= 2'b10;
    weights3_0_addr_29_reg_3463_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_29_reg_3463_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_1_addr_29_reg_3468[1:0] <= 2'b10;
    weights3_1_addr_29_reg_3468_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_1_addr_29_reg_3468_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_2_addr_29_reg_3473[1:0] <= 2'b10;
    weights3_2_addr_29_reg_3473_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_2_addr_29_reg_3473_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_32_reg_3547[1:0] <= 2'b01;
    weights3_0_addr_32_reg_3547_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_32_reg_3547_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_1_addr_32_reg_3553[1:0] <= 2'b01;
    weights3_1_addr_32_reg_3553_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_1_addr_32_reg_3553_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_2_addr_32_reg_3559[1:0] <= 2'b01;
    weights3_2_addr_32_reg_3559_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_2_addr_32_reg_3559_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_0_addr_35_reg_3670[1:0] <= 2'b00;
    weights3_0_addr_35_reg_3670_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_0_addr_35_reg_3670_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_0_addr_35_reg_3670_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_1_addr_35_reg_3676[1:0] <= 2'b00;
    weights3_1_addr_35_reg_3676_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_1_addr_35_reg_3676_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_1_addr_35_reg_3676_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_2_addr_35_reg_3682[1:0] <= 2'b00;
    weights3_2_addr_35_reg_3682_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_2_addr_35_reg_3682_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_2_addr_35_reg_3682_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_0_addr_38_reg_3778[1:0] <= 2'b11;
    weights3_0_addr_38_reg_3778_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_38_reg_3778_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_38_reg_3778_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_1_addr_38_reg_3783[1:0] <= 2'b11;
    weights3_1_addr_38_reg_3783_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_1_addr_38_reg_3783_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_1_addr_38_reg_3783_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_2_addr_38_reg_3788[1:0] <= 2'b11;
    weights3_2_addr_38_reg_3788_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_2_addr_38_reg_3788_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_2_addr_38_reg_3788_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_0_addr_41_reg_3918[1:0] <= 2'b10;
    weights3_0_addr_41_reg_3918_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_41_reg_3918_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_41_reg_3918_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_1_addr_41_reg_3924[1:0] <= 2'b10;
    weights3_1_addr_41_reg_3924_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_1_addr_41_reg_3924_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_1_addr_41_reg_3924_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_2_addr_41_reg_3930[1:0] <= 2'b10;
    weights3_2_addr_41_reg_3930_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_2_addr_41_reg_3930_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_2_addr_41_reg_3930_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_0_addr_44_reg_4026[1:0] <= 2'b01;
    weights3_0_addr_44_reg_4026_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_44_reg_4026_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_0_addr_44_reg_4026_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_1_addr_44_reg_4031[1:0] <= 2'b01;
    weights3_1_addr_44_reg_4031_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_1_addr_44_reg_4031_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_1_addr_44_reg_4031_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_2_addr_44_reg_4036[1:0] <= 2'b01;
    weights3_2_addr_44_reg_4036_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_2_addr_44_reg_4036_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_2_addr_44_reg_4036_pp0_iter3_reg[1:0] <= 2'b01;
end
endmodule 
