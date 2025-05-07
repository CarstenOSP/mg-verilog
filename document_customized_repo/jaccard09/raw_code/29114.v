module backprop_update_weights_68_69_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_7_address0,weights3_7_ce0,weights3_7_we0,weights3_7_d0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_we1,weights3_7_d1,weights3_7_q1,weights3_6_address0,weights3_6_ce0,weights3_6_we0,weights3_6_d0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_we1,weights3_6_d1,weights3_6_q1,weights3_5_address0,weights3_5_ce0,weights3_5_we0,weights3_5_d0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_we1,weights3_5_d1,weights3_5_q1,weights3_4_address0,weights3_4_ce0,weights3_4_we0,weights3_4_d0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_we1,weights3_4_d1,weights3_4_q1,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_164); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] weights3_7_address0;
output   weights3_7_ce0;
output   weights3_7_we0;
output  [63:0] weights3_7_d0;
input  [63:0] weights3_7_q0;
output  [4:0] weights3_7_address1;
output   weights3_7_ce1;
output   weights3_7_we1;
output  [63:0] weights3_7_d1;
input  [63:0] weights3_7_q1;
output  [4:0] weights3_6_address0;
output   weights3_6_ce0;
output   weights3_6_we0;
output  [63:0] weights3_6_d0;
input  [63:0] weights3_6_q0;
output  [4:0] weights3_6_address1;
output   weights3_6_ce1;
output   weights3_6_we1;
output  [63:0] weights3_6_d1;
input  [63:0] weights3_6_q1;
output  [4:0] weights3_5_address0;
output   weights3_5_ce0;
output   weights3_5_we0;
output  [63:0] weights3_5_d0;
input  [63:0] weights3_5_q0;
output  [4:0] weights3_5_address1;
output   weights3_5_ce1;
output   weights3_5_we1;
output  [63:0] weights3_5_d1;
input  [63:0] weights3_5_q1;
output  [4:0] weights3_4_address0;
output   weights3_4_ce0;
output   weights3_4_we0;
output  [63:0] weights3_4_d0;
input  [63:0] weights3_4_q0;
output  [4:0] weights3_4_address1;
output   weights3_4_ce1;
output   weights3_4_we1;
output  [63:0] weights3_4_d1;
input  [63:0] weights3_4_q1;
output  [4:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [4:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [4:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [4:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [4:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [4:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [4:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [4:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_164;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] tmp_reg_3165;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1037;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_1041;
reg   [63:0] reg_1045;
reg   [63:0] reg_1049;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_1053;
reg   [63:0] reg_1057;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_1061;
reg   [63:0] reg_1066;
reg   [63:0] reg_1071;
reg   [63:0] reg_1075;
reg   [63:0] reg_1079;
reg   [63:0] reg_1083;
reg   [63:0] reg_1088;
reg   [63:0] reg_1093;
reg   [63:0] reg_1098;
reg   [63:0] reg_1103;
reg   [63:0] reg_1108;
reg   [63:0] reg_1113;
reg   [63:0] reg_1118;
reg   [63:0] reg_1122;
reg   [63:0] reg_1126;
reg   [63:0] reg_1131;
reg   [63:0] reg_1136;
reg   [63:0] reg_1141;
reg   [63:0] reg_1146;
wire   [63:0] grp_fu_1005_p2;
reg   [63:0] reg_1151;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_1009_p2;
reg   [63:0] reg_1155;
wire   [63:0] grp_fu_1013_p2;
reg   [63:0] reg_1159;
wire   [63:0] grp_fu_1017_p2;
reg   [63:0] reg_1163;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] grp_fu_1021_p2;
reg   [63:0] reg_1167;
wire   [63:0] grp_fu_1025_p2;
reg   [63:0] reg_1171;
wire   [63:0] grp_fu_1029_p2;
reg   [63:0] reg_1175;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] grp_fu_1033_p2;
reg   [63:0] reg_1179;
reg   [63:0] reg_1183;
reg   [63:0] reg_1187;
reg   [63:0] reg_1191;
reg   [63:0] reg_1195;
reg   [63:0] reg_1199;
reg   [63:0] reg_1203;
reg   [63:0] reg_1207;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_1211;
reg   [63:0] reg_1215;
reg   [63:0] reg_1219;
reg   [63:0] reg_1223;
reg   [63:0] reg_1227;
reg   [63:0] reg_1231;
reg   [63:0] reg_1235;
reg   [63:0] reg_1239;
reg   [63:0] reg_1243;
reg   [6:0] i_4_reg_3160;
reg   [0:0] tmp_reg_3165_pp0_iter1_reg;
reg   [0:0] tmp_reg_3165_pp0_iter2_reg;
reg   [0:0] tmp_reg_3165_pp0_iter3_reg;
reg   [0:0] tmp_reg_3165_pp0_iter4_reg;
reg   [0:0] tmp_reg_3165_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_reg_3169;
reg   [4:0] weights3_0_addr_reg_3169_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_reg_3169_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_reg_3169_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_reg_3169_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_reg_3169_pp0_iter5_reg;
wire   [7:0] empty_fu_1328_p2;
reg   [7:0] empty_reg_3174;
wire   [3:0] or_ln5_fu_1361_p3;
reg   [3:0] or_ln5_reg_3217;
reg   [4:0] weights3_1_addr_reg_3222;
reg   [4:0] weights3_1_addr_reg_3222_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_reg_3222_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_reg_3222_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_reg_3222_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_reg_3222_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_reg_3227;
reg   [4:0] weights3_2_addr_reg_3227_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_reg_3227_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_reg_3227_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_reg_3227_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_reg_3227_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_reg_3232;
reg   [4:0] weights3_3_addr_reg_3232_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_reg_3232_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_reg_3232_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_reg_3232_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_reg_3232_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_reg_3238;
reg   [4:0] weights3_4_addr_reg_3238_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_reg_3238_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_reg_3238_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_reg_3238_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_reg_3238_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_reg_3244;
reg   [4:0] weights3_5_addr_reg_3244_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_reg_3244_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_reg_3244_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_reg_3244_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_reg_3244_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_14_reg_3250;
reg   [4:0] weights3_0_addr_14_reg_3250_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_14_reg_3250_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_14_reg_3250_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_14_reg_3250_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_14_reg_3250_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_14_reg_3255;
reg   [4:0] weights3_1_addr_14_reg_3255_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_14_reg_3255_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_14_reg_3255_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_14_reg_3255_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_14_reg_3255_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_14_reg_3260;
reg   [4:0] weights3_2_addr_14_reg_3260_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_14_reg_3260_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_14_reg_3260_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_14_reg_3260_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_14_reg_3260_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_reg_3265;
reg   [4:0] weights3_6_addr_reg_3265_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_reg_3265_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_reg_3265_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_reg_3265_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_reg_3265_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_reg_3270;
reg   [4:0] weights3_7_addr_reg_3270_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_reg_3270_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_reg_3270_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_reg_3270_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_reg_3270_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_12_reg_3275;
reg   [4:0] weights3_0_addr_12_reg_3275_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_12_reg_3275_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_12_reg_3275_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_12_reg_3275_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_12_reg_3275_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_12_reg_3281;
reg   [4:0] weights3_1_addr_12_reg_3281_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_12_reg_3281_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_12_reg_3281_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_12_reg_3281_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_12_reg_3281_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_12_reg_3287;
reg   [4:0] weights3_2_addr_12_reg_3287_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_12_reg_3287_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_12_reg_3287_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_12_reg_3287_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_12_reg_3287_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_12_reg_3293;
reg   [4:0] weights3_3_addr_12_reg_3293_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_12_reg_3293_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_12_reg_3293_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_12_reg_3293_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_12_reg_3293_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_12_reg_3298;
reg   [4:0] weights3_4_addr_12_reg_3298_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_12_reg_3298_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_12_reg_3298_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_12_reg_3298_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_12_reg_3298_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_12_reg_3303;
reg   [4:0] weights3_5_addr_12_reg_3303_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_12_reg_3303_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_12_reg_3303_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_12_reg_3303_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_12_reg_3303_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_12_reg_3308;
reg   [4:0] weights3_6_addr_12_reg_3308_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_12_reg_3308_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_12_reg_3308_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_12_reg_3308_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_12_reg_3308_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_12_reg_3313;
reg   [4:0] weights3_7_addr_12_reg_3313_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_12_reg_3313_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_12_reg_3313_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_12_reg_3313_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_12_reg_3313_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_13_reg_3318;
reg   [4:0] weights3_0_addr_13_reg_3318_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_13_reg_3318_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_13_reg_3318_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_13_reg_3318_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_13_reg_3318_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_13_reg_3324;
reg   [4:0] weights3_1_addr_13_reg_3324_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_13_reg_3324_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_13_reg_3324_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_13_reg_3324_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_13_reg_3324_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_13_reg_3330;
reg   [4:0] weights3_2_addr_13_reg_3330_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_13_reg_3330_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_13_reg_3330_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_13_reg_3330_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_13_reg_3330_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_13_reg_3336;
reg   [4:0] weights3_3_addr_13_reg_3336_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_13_reg_3336_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_13_reg_3336_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_13_reg_3336_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_13_reg_3336_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_13_reg_3341;
reg   [4:0] weights3_4_addr_13_reg_3341_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_13_reg_3341_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_13_reg_3341_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_13_reg_3341_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_13_reg_3341_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_13_reg_3346;
reg   [4:0] weights3_5_addr_13_reg_3346_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_13_reg_3346_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_13_reg_3346_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_13_reg_3346_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_13_reg_3346_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_13_reg_3351;
reg   [4:0] weights3_6_addr_13_reg_3351_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_13_reg_3351_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_13_reg_3351_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_13_reg_3351_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_13_reg_3351_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_13_reg_3356;
reg   [4:0] weights3_7_addr_13_reg_3356_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_13_reg_3356_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_13_reg_3356_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_13_reg_3356_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_13_reg_3356_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_fu_1565_p1;
wire   [63:0] bitcast_ln194_1_fu_1739_p1;
wire   [63:0] bitcast_ln194_2_fu_1744_p1;
wire   [63:0] bitcast_ln194_3_fu_1749_p1;
wire   [63:0] bitcast_ln194_4_fu_1754_p1;
wire   [63:0] bitcast_ln194_5_fu_1759_p1;
wire   [63:0] bitcast_ln194_24_fu_1764_p1;
wire   [63:0] bitcast_ln194_25_fu_1769_p1;
reg   [4:0] weights3_3_addr_14_reg_3401;
reg   [4:0] weights3_3_addr_14_reg_3401_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_14_reg_3401_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_14_reg_3401_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_14_reg_3401_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_14_reg_3401_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_14_reg_3406;
reg   [4:0] weights3_4_addr_14_reg_3406_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_14_reg_3406_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_14_reg_3406_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_14_reg_3406_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_14_reg_3406_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_14_reg_3411;
reg   [4:0] weights3_5_addr_14_reg_3411_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_14_reg_3411_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_14_reg_3411_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_14_reg_3411_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_14_reg_3411_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_14_reg_3416;
reg   [4:0] weights3_6_addr_14_reg_3416_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_14_reg_3416_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_14_reg_3416_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_14_reg_3416_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_14_reg_3416_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_14_reg_3421;
reg   [4:0] weights3_7_addr_14_reg_3421_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_14_reg_3421_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_14_reg_3421_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_14_reg_3421_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_14_reg_3421_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_15_reg_3426;
reg   [4:0] weights3_0_addr_15_reg_3426_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_15_reg_3426_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_15_reg_3426_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_15_reg_3426_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_15_reg_3426_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_15_reg_3431;
reg   [4:0] weights3_1_addr_15_reg_3431_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_15_reg_3431_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_15_reg_3431_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_15_reg_3431_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_15_reg_3431_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_15_reg_3436;
reg   [4:0] weights3_2_addr_15_reg_3436_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_15_reg_3436_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_15_reg_3436_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_15_reg_3436_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_15_reg_3436_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_15_reg_3441;
reg   [4:0] weights3_3_addr_15_reg_3441_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_15_reg_3441_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_15_reg_3441_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_15_reg_3441_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_15_reg_3441_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_15_reg_3446;
reg   [4:0] weights3_4_addr_15_reg_3446_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_15_reg_3446_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_15_reg_3446_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_15_reg_3446_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_15_reg_3446_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_15_reg_3451;
reg   [4:0] weights3_5_addr_15_reg_3451_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_15_reg_3451_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_15_reg_3451_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_15_reg_3451_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_15_reg_3451_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_15_reg_3456;
reg   [4:0] weights3_6_addr_15_reg_3456_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_15_reg_3456_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_15_reg_3456_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_15_reg_3456_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_15_reg_3456_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_16_reg_3461;
reg   [4:0] weights3_0_addr_16_reg_3461_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_16_reg_3461_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_16_reg_3461_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_16_reg_3461_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_16_reg_3461_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_16_reg_3466;
reg   [4:0] weights3_1_addr_16_reg_3466_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_16_reg_3466_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_16_reg_3466_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_16_reg_3466_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_16_reg_3466_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_16_reg_3471;
reg   [4:0] weights3_2_addr_16_reg_3471_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_16_reg_3471_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_16_reg_3471_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_16_reg_3471_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_16_reg_3471_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_16_reg_3476;
reg   [4:0] weights3_3_addr_16_reg_3476_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_16_reg_3476_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_16_reg_3476_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_16_reg_3476_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_16_reg_3476_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_16_reg_3481;
reg   [4:0] weights3_4_addr_16_reg_3481_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_16_reg_3481_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_16_reg_3481_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_16_reg_3481_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_16_reg_3481_pp0_iter5_reg;
wire   [4:0] or_ln194_cast154_fu_1774_p1;
reg   [4:0] or_ln194_cast154_reg_3486;
wire   [63:0] bitcast_ln194_6_fu_1896_p1;
wire   [63:0] bitcast_ln194_7_fu_1901_p1;
wire   [63:0] bitcast_ln194_8_fu_1906_p1;
wire   [63:0] bitcast_ln194_9_fu_1911_p1;
wire   [63:0] bitcast_ln194_10_fu_1916_p1;
wire   [63:0] bitcast_ln194_11_fu_1921_p1;
wire   [63:0] bitcast_ln194_12_fu_1926_p1;
wire   [63:0] bitcast_ln194_26_fu_1931_p1;
reg   [4:0] weights3_7_addr_15_reg_3531;
reg   [4:0] weights3_7_addr_15_reg_3531_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_15_reg_3531_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_15_reg_3531_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_15_reg_3531_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_15_reg_3531_pp0_iter5_reg;
reg   [63:0] weights3_0_load_16_reg_3536;
reg   [63:0] weights3_1_load_16_reg_3541;
reg   [4:0] weights3_5_addr_16_reg_3546;
reg   [4:0] weights3_5_addr_16_reg_3546_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_16_reg_3546_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_16_reg_3546_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_16_reg_3546_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_16_reg_3546_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_16_reg_3551;
reg   [4:0] weights3_6_addr_16_reg_3551_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_16_reg_3551_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_16_reg_3551_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_16_reg_3551_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_16_reg_3551_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_16_reg_3556;
reg   [4:0] weights3_7_addr_16_reg_3556_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_16_reg_3556_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_16_reg_3556_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_16_reg_3556_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_16_reg_3556_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_17_reg_3561;
reg   [4:0] weights3_0_addr_17_reg_3561_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_17_reg_3561_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_17_reg_3561_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_17_reg_3561_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_17_reg_3561_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_17_reg_3566;
reg   [4:0] weights3_1_addr_17_reg_3566_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_17_reg_3566_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_17_reg_3566_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_17_reg_3566_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_17_reg_3566_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_17_reg_3571;
reg   [4:0] weights3_2_addr_17_reg_3571_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_17_reg_3571_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_17_reg_3571_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_17_reg_3571_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_17_reg_3571_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_17_reg_3576;
reg   [4:0] weights3_3_addr_17_reg_3576_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_17_reg_3576_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_17_reg_3576_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_17_reg_3576_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_17_reg_3576_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_17_reg_3581;
reg   [4:0] weights3_4_addr_17_reg_3581_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_17_reg_3581_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_17_reg_3581_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_17_reg_3581_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_17_reg_3581_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_17_reg_3586;
reg   [4:0] weights3_5_addr_17_reg_3586_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_17_reg_3586_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_17_reg_3586_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_17_reg_3586_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_17_reg_3586_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_18_reg_3591;
reg   [4:0] weights3_0_addr_18_reg_3591_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_18_reg_3591_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_18_reg_3591_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_18_reg_3591_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_18_reg_3591_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_18_reg_3596;
reg   [4:0] weights3_1_addr_18_reg_3596_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_18_reg_3596_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_18_reg_3596_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_18_reg_3596_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_18_reg_3596_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_18_reg_3601;
reg   [4:0] weights3_2_addr_18_reg_3601_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_18_reg_3601_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_18_reg_3601_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_18_reg_3601_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_18_reg_3601_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_18_reg_3606;
reg   [4:0] weights3_3_addr_18_reg_3606_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_18_reg_3606_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_18_reg_3606_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_18_reg_3606_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_18_reg_3606_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_13_fu_2095_p1;
wire   [63:0] bitcast_ln194_14_fu_2100_p1;
wire   [63:0] bitcast_ln194_15_fu_2105_p1;
wire   [63:0] bitcast_ln194_16_fu_2110_p1;
wire   [63:0] bitcast_ln194_17_fu_2115_p1;
wire   [63:0] bitcast_ln194_18_fu_2120_p1;
wire   [63:0] bitcast_ln194_19_fu_2125_p1;
wire   [63:0] bitcast_ln194_20_fu_2130_p1;
reg   [63:0] weights3_3_load_17_reg_3651;
reg   [63:0] weights3_4_load_17_reg_3656;
reg   [63:0] weights3_5_load_17_reg_3661;
reg   [4:0] weights3_6_addr_17_reg_3666;
reg   [4:0] weights3_6_addr_17_reg_3666_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_17_reg_3666_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_17_reg_3666_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_17_reg_3666_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_17_reg_3666_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_17_reg_3671;
reg   [4:0] weights3_7_addr_17_reg_3671_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_17_reg_3671_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_17_reg_3671_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_17_reg_3671_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_17_reg_3671_pp0_iter5_reg;
reg   [63:0] weights3_0_load_18_reg_3676;
reg   [63:0] weights3_1_load_18_reg_3681;
reg   [63:0] weights3_2_load_18_reg_3686;
reg   [4:0] weights3_4_addr_18_reg_3691;
reg   [4:0] weights3_4_addr_18_reg_3691_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_18_reg_3691_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_18_reg_3691_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_18_reg_3691_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_18_reg_3691_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_18_reg_3696;
reg   [4:0] weights3_5_addr_18_reg_3696_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_18_reg_3696_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_18_reg_3696_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_18_reg_3696_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_18_reg_3696_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_18_reg_3701;
reg   [4:0] weights3_6_addr_18_reg_3701_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_18_reg_3701_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_18_reg_3701_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_18_reg_3701_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_18_reg_3701_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_18_reg_3706;
reg   [4:0] weights3_7_addr_18_reg_3706_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_18_reg_3706_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_18_reg_3706_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_18_reg_3706_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_18_reg_3706_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_19_reg_3711;
reg   [4:0] weights3_0_addr_19_reg_3711_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_19_reg_3711_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_19_reg_3711_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_19_reg_3711_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_19_reg_3711_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_19_reg_3716;
reg   [4:0] weights3_1_addr_19_reg_3716_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_19_reg_3716_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_19_reg_3716_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_19_reg_3716_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_19_reg_3716_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_19_reg_3721;
reg   [4:0] weights3_2_addr_19_reg_3721_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_19_reg_3721_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_19_reg_3721_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_19_reg_3721_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_19_reg_3721_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_19_reg_3726;
reg   [4:0] weights3_3_addr_19_reg_3726_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_19_reg_3726_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_19_reg_3726_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_19_reg_3726_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_19_reg_3726_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_19_reg_3731;
reg   [4:0] weights3_4_addr_19_reg_3731_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_19_reg_3731_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_19_reg_3731_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_19_reg_3731_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_19_reg_3731_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_19_reg_3736;
reg   [4:0] weights3_5_addr_19_reg_3736_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_19_reg_3736_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_19_reg_3736_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_19_reg_3736_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_19_reg_3736_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_19_reg_3741;
reg   [4:0] weights3_6_addr_19_reg_3741_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_19_reg_3741_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_19_reg_3741_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_19_reg_3741_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_19_reg_3741_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_19_reg_3746;
reg   [4:0] weights3_7_addr_19_reg_3746_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_19_reg_3746_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_19_reg_3746_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_19_reg_3746_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_19_reg_3746_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_20_reg_3751;
reg   [4:0] weights3_0_addr_20_reg_3751_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_20_reg_3751_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_20_reg_3751_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_20_reg_3751_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_20_reg_3751_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_20_reg_3757;
reg   [4:0] weights3_1_addr_20_reg_3757_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_20_reg_3757_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_20_reg_3757_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_20_reg_3757_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_20_reg_3757_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_20_reg_3763;
reg   [4:0] weights3_2_addr_20_reg_3763_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_20_reg_3763_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_20_reg_3763_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_20_reg_3763_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_20_reg_3763_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_21_fu_2304_p1;
wire   [63:0] bitcast_ln194_22_fu_2309_p1;
wire   [63:0] bitcast_ln194_23_fu_2314_p1;
wire   [63:0] bitcast_ln194_27_fu_2319_p1;
wire   [63:0] bitcast_ln194_28_fu_2324_p1;
wire   [63:0] bitcast_ln194_29_fu_2329_p1;
wire   [63:0] bitcast_ln194_30_fu_2334_p1;
wire   [63:0] bitcast_ln194_31_fu_2339_p1;
reg   [63:0] weights3_0_load_19_reg_3809;
reg   [63:0] weights3_1_load_19_reg_3814;
reg   [63:0] weights3_2_load_19_reg_3819;
reg   [63:0] weights3_3_load_19_reg_3824;
reg   [63:0] weights3_4_load_19_reg_3829;
reg   [63:0] weights3_0_load_20_reg_3834;
reg   [63:0] weights3_1_load_20_reg_3839;
reg   [63:0] weights3_2_load_20_reg_3844;
reg   [4:0] weights3_3_addr_20_reg_3849;
reg   [4:0] weights3_3_addr_20_reg_3849_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_20_reg_3849_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_20_reg_3849_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_20_reg_3849_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_20_reg_3849_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_20_reg_3854;
reg   [4:0] weights3_4_addr_20_reg_3854_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_20_reg_3854_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_20_reg_3854_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_20_reg_3854_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_20_reg_3854_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_20_reg_3859;
reg   [4:0] weights3_5_addr_20_reg_3859_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_20_reg_3859_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_20_reg_3859_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_20_reg_3859_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_20_reg_3859_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_20_reg_3864;
reg   [4:0] weights3_6_addr_20_reg_3864_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_20_reg_3864_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_20_reg_3864_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_20_reg_3864_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_20_reg_3864_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_20_reg_3869;
reg   [4:0] weights3_7_addr_20_reg_3869_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_20_reg_3869_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_20_reg_3869_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_20_reg_3869_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_20_reg_3869_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_21_reg_3874;
reg   [4:0] weights3_0_addr_21_reg_3874_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_21_reg_3874_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_21_reg_3874_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_21_reg_3874_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_21_reg_3874_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_21_reg_3880;
reg   [4:0] weights3_1_addr_21_reg_3880_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_21_reg_3880_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_21_reg_3880_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_21_reg_3880_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_21_reg_3880_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_21_reg_3886;
reg   [4:0] weights3_2_addr_21_reg_3886_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_21_reg_3886_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_21_reg_3886_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_21_reg_3886_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_21_reg_3886_pp0_iter5_reg;
reg   [4:0] weights3_3_addr_21_reg_3892;
reg   [4:0] weights3_3_addr_21_reg_3892_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_21_reg_3892_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_21_reg_3892_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_21_reg_3892_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_21_reg_3892_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_21_reg_3897;
reg   [4:0] weights3_4_addr_21_reg_3897_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_21_reg_3897_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_21_reg_3897_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_21_reg_3897_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_21_reg_3897_pp0_iter5_reg;
reg   [4:0] weights3_5_addr_21_reg_3902;
reg   [4:0] weights3_5_addr_21_reg_3902_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_21_reg_3902_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_21_reg_3902_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_21_reg_3902_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_21_reg_3902_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_21_reg_3907;
reg   [4:0] weights3_6_addr_21_reg_3907_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_21_reg_3907_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_21_reg_3907_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_21_reg_3907_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_21_reg_3907_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_22_reg_3912;
reg   [4:0] weights3_0_addr_22_reg_3912_pp0_iter1_reg;
reg   [4:0] weights3_0_addr_22_reg_3912_pp0_iter2_reg;
reg   [4:0] weights3_0_addr_22_reg_3912_pp0_iter3_reg;
reg   [4:0] weights3_0_addr_22_reg_3912_pp0_iter4_reg;
reg   [4:0] weights3_0_addr_22_reg_3912_pp0_iter5_reg;
reg   [4:0] weights3_0_addr_22_reg_3912_pp0_iter6_reg;
reg   [4:0] weights3_1_addr_22_reg_3917;
reg   [4:0] weights3_1_addr_22_reg_3917_pp0_iter1_reg;
reg   [4:0] weights3_1_addr_22_reg_3917_pp0_iter2_reg;
reg   [4:0] weights3_1_addr_22_reg_3917_pp0_iter3_reg;
reg   [4:0] weights3_1_addr_22_reg_3917_pp0_iter4_reg;
reg   [4:0] weights3_1_addr_22_reg_3917_pp0_iter5_reg;
reg   [4:0] weights3_1_addr_22_reg_3917_pp0_iter6_reg;
reg   [4:0] weights3_2_addr_22_reg_3922;
reg   [4:0] weights3_2_addr_22_reg_3922_pp0_iter1_reg;
reg   [4:0] weights3_2_addr_22_reg_3922_pp0_iter2_reg;
reg   [4:0] weights3_2_addr_22_reg_3922_pp0_iter3_reg;
reg   [4:0] weights3_2_addr_22_reg_3922_pp0_iter4_reg;
reg   [4:0] weights3_2_addr_22_reg_3922_pp0_iter5_reg;
reg   [4:0] weights3_2_addr_22_reg_3922_pp0_iter6_reg;
reg   [4:0] weights3_3_addr_22_reg_3927;
reg   [4:0] weights3_3_addr_22_reg_3927_pp0_iter1_reg;
reg   [4:0] weights3_3_addr_22_reg_3927_pp0_iter2_reg;
reg   [4:0] weights3_3_addr_22_reg_3927_pp0_iter3_reg;
reg   [4:0] weights3_3_addr_22_reg_3927_pp0_iter4_reg;
reg   [4:0] weights3_3_addr_22_reg_3927_pp0_iter5_reg;
reg   [4:0] weights3_4_addr_22_reg_3933;
reg   [4:0] weights3_4_addr_22_reg_3933_pp0_iter1_reg;
reg   [4:0] weights3_4_addr_22_reg_3933_pp0_iter2_reg;
reg   [4:0] weights3_4_addr_22_reg_3933_pp0_iter3_reg;
reg   [4:0] weights3_4_addr_22_reg_3933_pp0_iter4_reg;
reg   [4:0] weights3_4_addr_22_reg_3933_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_32_fu_2386_p1;
wire   [63:0] bitcast_ln194_33_fu_2391_p1;
wire   [63:0] bitcast_ln194_34_fu_2396_p1;
wire   [63:0] bitcast_ln194_35_fu_2401_p1;
wire   [63:0] bitcast_ln194_36_fu_2406_p1;
wire   [63:0] bitcast_ln194_37_fu_2411_p1;
wire   [63:0] bitcast_ln194_38_fu_2416_p1;
wire   [63:0] bitcast_ln194_39_fu_2421_p1;
reg   [63:0] weights3_6_load_20_reg_3979;
reg   [63:0] weights3_7_load_20_reg_3984;
reg   [63:0] weights3_3_load_21_reg_3989;
reg   [63:0] weights3_4_load_21_reg_3994;
reg   [63:0] weights3_5_load_21_reg_3999;
reg   [4:0] weights3_7_addr_21_reg_4004;
reg   [4:0] weights3_7_addr_21_reg_4004_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_21_reg_4004_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_21_reg_4004_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_21_reg_4004_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_21_reg_4004_pp0_iter5_reg;
reg   [63:0] weights3_0_load_22_reg_4009;
reg   [63:0] weights3_1_load_22_reg_4014;
reg   [63:0] weights3_2_load_22_reg_4019;
reg   [4:0] weights3_5_addr_22_reg_4024;
reg   [4:0] weights3_5_addr_22_reg_4024_pp0_iter1_reg;
reg   [4:0] weights3_5_addr_22_reg_4024_pp0_iter2_reg;
reg   [4:0] weights3_5_addr_22_reg_4024_pp0_iter3_reg;
reg   [4:0] weights3_5_addr_22_reg_4024_pp0_iter4_reg;
reg   [4:0] weights3_5_addr_22_reg_4024_pp0_iter5_reg;
reg   [4:0] weights3_6_addr_22_reg_4030;
reg   [4:0] weights3_6_addr_22_reg_4030_pp0_iter1_reg;
reg   [4:0] weights3_6_addr_22_reg_4030_pp0_iter2_reg;
reg   [4:0] weights3_6_addr_22_reg_4030_pp0_iter3_reg;
reg   [4:0] weights3_6_addr_22_reg_4030_pp0_iter4_reg;
reg   [4:0] weights3_6_addr_22_reg_4030_pp0_iter5_reg;
reg   [4:0] weights3_7_addr_22_reg_4035;
reg   [4:0] weights3_7_addr_22_reg_4035_pp0_iter1_reg;
reg   [4:0] weights3_7_addr_22_reg_4035_pp0_iter2_reg;
reg   [4:0] weights3_7_addr_22_reg_4035_pp0_iter3_reg;
reg   [4:0] weights3_7_addr_22_reg_4035_pp0_iter4_reg;
reg   [4:0] weights3_7_addr_22_reg_4035_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_40_fu_2426_p1;
wire   [63:0] bitcast_ln194_41_fu_2430_p1;
wire   [63:0] bitcast_ln194_42_fu_2434_p1;
wire   [63:0] bitcast_ln194_43_fu_2439_p1;
wire   [63:0] bitcast_ln194_44_fu_2444_p1;
wire   [63:0] bitcast_ln194_45_fu_2449_p1;
wire   [63:0] bitcast_ln194_46_fu_2454_p1;
wire   [63:0] bitcast_ln194_47_fu_2459_p1;
reg   [63:0] weights3_6_load_22_reg_4080;
reg   [63:0] weights3_7_load_22_reg_4085;
wire   [63:0] bitcast_ln194_48_fu_2464_p1;
wire   [63:0] bitcast_ln194_49_fu_2469_p1;
wire   [63:0] bitcast_ln194_50_fu_2474_p1;
wire   [63:0] bitcast_ln194_51_fu_2479_p1;
wire   [63:0] bitcast_ln194_52_fu_2483_p1;
wire   [63:0] bitcast_ln194_53_fu_2487_p1;
wire   [63:0] bitcast_ln194_54_fu_2491_p1;
wire   [63:0] bitcast_ln194_55_fu_2496_p1;
wire   [63:0] bitcast_ln194_56_fu_2501_p1;
wire   [63:0] bitcast_ln194_57_fu_2505_p1;
wire   [63:0] bitcast_ln194_58_fu_2509_p1;
wire   [63:0] bitcast_ln194_59_fu_2513_p1;
wire   [63:0] bitcast_ln194_60_fu_2518_p1;
wire   [63:0] bitcast_ln194_61_fu_2523_p1;
wire   [63:0] bitcast_ln194_62_fu_2528_p1;
wire   [63:0] bitcast_ln194_63_fu_2533_p1;
wire   [63:0] bitcast_ln194_64_fu_2538_p1;
wire   [63:0] bitcast_ln194_65_fu_2542_p1;
wire   [63:0] bitcast_ln194_66_fu_2546_p1;
wire   [63:0] bitcast_ln194_67_fu_2550_p1;
wire   [63:0] bitcast_ln194_68_fu_2554_p1;
wire   [63:0] bitcast_ln194_69_fu_2558_p1;
wire   [63:0] bitcast_ln194_70_fu_2563_p1;
wire   [63:0] bitcast_ln194_71_fu_2568_p1;
wire   [63:0] bitcast_ln194_72_fu_2573_p1;
wire   [63:0] bitcast_ln194_73_fu_2577_p1;
wire   [63:0] bitcast_ln194_74_fu_2581_p1;
wire   [63:0] bitcast_ln194_75_fu_2585_p1;
wire   [63:0] bitcast_ln194_76_fu_2590_p1;
wire   [63:0] bitcast_ln194_77_fu_2595_p1;
wire   [63:0] bitcast_ln194_78_fu_2600_p1;
wire   [63:0] bitcast_ln194_79_fu_2604_p1;
wire   [63:0] bitcast_ln194_80_fu_2618_p1;
wire   [63:0] bitcast_ln194_81_fu_2623_p1;
wire   [63:0] bitcast_ln194_82_fu_2628_p1;
wire   [63:0] bitcast_ln194_83_fu_2633_p1;
wire   [63:0] bitcast_ln194_84_fu_2637_p1;
wire   [63:0] bitcast_ln194_85_fu_2641_p1;
wire   [63:0] bitcast_ln194_86_fu_2645_p1;
wire   [63:0] bitcast_ln194_87_fu_2650_p1;
wire   [63:0] bitcast_ln194_88_fu_2655_p1;
wire   [63:0] bitcast_ln194_89_fu_2659_p1;
wire   [63:0] bitcast_ln194_90_fu_2663_p1;
wire   [63:0] bitcast_ln194_91_fu_2667_p1;
wire   [63:0] bitcast_ln194_92_fu_2672_p1;
wire   [63:0] bitcast_ln194_93_fu_2677_p1;
wire   [63:0] bitcast_ln194_94_fu_2682_p1;
wire   [63:0] bitcast_ln194_95_fu_2686_p1;
reg   [63:0] div213_7_reg_4330;
reg   [63:0] div213_7_1_reg_4335;
reg   [63:0] div213_7_2_reg_4340;
reg   [63:0] div213_9_reg_4345;
reg   [63:0] div213_9_1_reg_4350;
reg   [63:0] div213_9_2_reg_4355;
reg   [63:0] div213_10_reg_4360;
reg   [63:0] div213_10_1_reg_4365;
reg   [63:0] div213_10_2_reg_4370;
reg   [63:0] div213_11_reg_4375;
reg   [63:0] div213_11_1_reg_4380;
reg   [63:0] div213_11_2_reg_4385;
reg   [63:0] div213_12_reg_4390;
reg   [63:0] div213_12_1_reg_4395;
reg   [63:0] div213_12_2_reg_4400;
reg   [63:0] div213_13_reg_4405;
reg   [63:0] div213_13_1_reg_4410;
reg   [63:0] div213_13_2_reg_4415;
reg   [63:0] div213_14_reg_4420;
reg   [63:0] div213_14_1_reg_4425;
reg   [63:0] div213_14_2_reg_4430;
reg   [63:0] div213_15_reg_4435;
reg   [63:0] div213_15_1_reg_4440;
reg   [63:0] div213_15_2_reg_4445;
reg   [63:0] div213_18_reg_4450;
reg   [63:0] div213_18_1_reg_4455;
reg   [63:0] div213_29_1_reg_4460;
reg   [63:0] div213_29_2_reg_4465;
reg   [63:0] div213_30_reg_4470;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage10_subdone;
wire   [63:0] zext_ln194_fu_1291_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] lshr_ln194_1_cast_fu_1344_p1;
wire   [63:0] or_ln194_cast_fu_1369_p1;
wire   [63:0] zext_ln194_1_fu_1391_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] lshr_ln194_3_cast_fu_1412_p1;
wire   [63:0] lshr_ln194_4_cast_fu_1432_p1;
wire   [63:0] lshr_ln194_5_cast_fu_1454_p1;
wire   [63:0] zext_ln194_2_fu_1476_p1;
wire   [63:0] zext_ln194_3_fu_1496_p1;
wire   [63:0] lshr_ln194_8_cast_fu_1516_p1;
wire   [63:0] lshr_ln194_9_cast_fu_1536_p1;
wire   [63:0] zext_ln194_4_fu_1558_p1;
wire   [63:0] lshr_ln194_11_cast_fu_1585_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_5_fu_1607_p1;
wire   [63:0] lshr_ln194_13_cast_fu_1628_p1;
wire   [63:0] lshr_ln194_14_cast_fu_1648_p1;
wire   [63:0] lshr_ln194_15_cast_fu_1670_p1;
wire   [63:0] zext_ln194_7_fu_1692_p1;
wire   [63:0] lshr_ln194_18_cast_fu_1712_p1;
wire   [63:0] lshr_ln194_19_cast_fu_1732_p1;
wire   [63:0] zext_ln194_6_fu_1792_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_8_fu_1812_p1;
wire   [63:0] add_ln194_6_cast_fu_1825_p1;
wire   [63:0] lshr_ln194_21_cast_fu_1847_p1;
wire   [63:0] lshr_ln194_23_cast_fu_1869_p1;
wire   [63:0] lshr_ln194_24_cast_fu_1889_p1;
wire   [63:0] zext_ln194_9_fu_1951_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] lshr_ln194_25_cast_fu_1972_p1;
wire   [63:0] zext_ln194_10_fu_1994_p1;
wire   [63:0] zext_ln194_11_fu_2014_p1;
wire   [63:0] lshr_ln194_28_cast_fu_2034_p1;
wire   [63:0] lshr_ln194_29_cast_fu_2054_p1;
wire   [63:0] zext_ln194_12_fu_2076_p1;
wire   [63:0] add_ln194_10_cast_fu_2088_p1;
wire   [63:0] lshr_ln194_31_cast_fu_2150_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_13_fu_2172_p1;
wire   [63:0] lshr_ln194_33_cast_fu_2193_p1;
wire   [63:0] lshr_ln194_34_cast_fu_2213_p1;
wire   [63:0] lshr_ln194_35_cast_fu_2235_p1;
wire   [63:0] zext_ln194_15_fu_2257_p1;
wire   [63:0] lshr_ln194_38_cast_fu_2277_p1;
wire   [63:0] lshr_ln194_39_cast_fu_2297_p1;
wire   [63:0] zext_ln194_14_fu_2359_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln194_16_fu_2379_p1;
reg   [6:0] i_fu_166;
wire   [6:0] add_ln192_fu_2608_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [4:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [4:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln194_96_fu_2690_p1;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_97_fu_2695_p1;
wire   [63:0] bitcast_ln194_98_fu_2735_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln194_99_fu_2740_p1;
wire   [63:0] bitcast_ln194_100_fu_2814_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln194_101_fu_2818_p1;
wire   [63:0] bitcast_ln194_102_fu_2878_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln194_103_fu_2883_p1;
wire   [63:0] bitcast_ln194_104_fu_2951_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln194_105_fu_3014_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln194_106_fu_3019_p1;
wire   [63:0] bitcast_ln194_107_fu_3129_p1;
reg    weights3_1_ce1_local;
reg   [4:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [4:0] weights3_1_address0_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln194_108_fu_2700_p1;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_109_fu_2705_p1;
wire   [63:0] bitcast_ln194_110_fu_2745_p1;
wire   [63:0] bitcast_ln194_111_fu_2750_p1;
wire   [63:0] bitcast_ln194_112_fu_2822_p1;
wire   [63:0] bitcast_ln194_113_fu_2826_p1;
wire   [63:0] bitcast_ln194_114_fu_2888_p1;
wire   [63:0] bitcast_ln194_115_fu_2893_p1;
wire   [63:0] bitcast_ln194_116_fu_2956_p1;
wire   [63:0] bitcast_ln194_117_fu_3024_p1;
wire   [63:0] bitcast_ln194_118_fu_3029_p1;
wire   [63:0] bitcast_ln194_119_fu_3133_p1;
reg    weights3_2_ce1_local;
reg   [4:0] weights3_2_address1_local;
reg    weights3_2_ce0_local;
reg   [4:0] weights3_2_address0_local;
reg    weights3_2_we1_local;
reg   [63:0] weights3_2_d1_local;
wire   [63:0] bitcast_ln194_120_fu_2710_p1;
reg    weights3_2_we0_local;
reg   [63:0] weights3_2_d0_local;
wire   [63:0] bitcast_ln194_121_fu_2715_p1;
wire   [63:0] bitcast_ln194_122_fu_2755_p1;
wire   [63:0] bitcast_ln194_123_fu_2760_p1;
wire   [63:0] bitcast_ln194_124_fu_2830_p1;
wire   [63:0] bitcast_ln194_125_fu_2834_p1;
wire   [63:0] bitcast_ln194_126_fu_2898_p1;
wire   [63:0] bitcast_ln194_127_fu_2903_p1;
wire   [63:0] bitcast_ln194_128_fu_2961_p1;
wire   [63:0] bitcast_ln194_129_fu_3034_p1;
wire   [63:0] bitcast_ln194_130_fu_3039_p1;
wire   [63:0] bitcast_ln194_131_fu_3137_p1;
reg    weights3_3_ce1_local;
reg   [4:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [4:0] weights3_3_address0_local;
reg    weights3_3_we0_local;
reg   [63:0] weights3_3_d0_local;
wire   [63:0] bitcast_ln194_132_fu_2720_p1;
reg    weights3_3_we1_local;
reg   [63:0] weights3_3_d1_local;
wire   [63:0] bitcast_ln194_133_fu_2765_p1;
wire   [63:0] bitcast_ln194_134_fu_2770_p1;
wire   [63:0] bitcast_ln194_135_fu_2838_p1;
wire   [63:0] bitcast_ln194_136_fu_2842_p1;
wire   [63:0] bitcast_ln194_137_fu_2908_p1;
wire   [63:0] bitcast_ln194_138_fu_2912_p1;
wire   [63:0] bitcast_ln194_139_fu_2966_p1;
wire   [63:0] bitcast_ln194_140_fu_2971_p1;
wire   [63:0] bitcast_ln194_141_fu_3044_p1;
wire   [63:0] bitcast_ln194_142_fu_3049_p1;
wire   [63:0] bitcast_ln194_143_fu_3094_p1;
reg    weights3_4_ce1_local;
reg   [4:0] weights3_4_address1_local;
reg    weights3_4_ce0_local;
reg   [4:0] weights3_4_address0_local;
reg    weights3_4_we0_local;
reg   [63:0] weights3_4_d0_local;
wire   [63:0] bitcast_ln194_144_fu_2725_p1;
reg    weights3_4_we1_local;
reg   [63:0] weights3_4_d1_local;
wire   [63:0] bitcast_ln194_145_fu_2775_p1;
wire   [63:0] bitcast_ln194_146_fu_2780_p1;
wire   [63:0] bitcast_ln194_147_fu_2846_p1;
wire   [63:0] bitcast_ln194_148_fu_2850_p1;
wire   [63:0] bitcast_ln194_149_fu_2917_p1;
wire   [63:0] bitcast_ln194_150_fu_2921_p1;
wire   [63:0] bitcast_ln194_151_fu_2976_p1;
wire   [63:0] bitcast_ln194_152_fu_2981_p1;
wire   [63:0] bitcast_ln194_153_fu_3054_p1;
wire   [63:0] bitcast_ln194_154_fu_3059_p1;
wire   [63:0] bitcast_ln194_155_fu_3099_p1;
reg    weights3_5_ce1_local;
reg   [4:0] weights3_5_address1_local;
reg    weights3_5_ce0_local;
reg   [4:0] weights3_5_address0_local;
reg    weights3_5_we0_local;
reg   [63:0] weights3_5_d0_local;
wire   [63:0] bitcast_ln194_156_fu_2730_p1;
reg    weights3_5_we1_local;
reg   [63:0] weights3_5_d1_local;
wire   [63:0] bitcast_ln194_157_fu_2785_p1;
wire   [63:0] bitcast_ln194_158_fu_2790_p1;
wire   [63:0] bitcast_ln194_159_fu_2854_p1;
wire   [63:0] bitcast_ln194_160_fu_2858_p1;
wire   [63:0] bitcast_ln194_161_fu_2926_p1;
wire   [63:0] bitcast_ln194_162_fu_2930_p1;
wire   [63:0] bitcast_ln194_163_fu_2986_p1;
wire   [63:0] bitcast_ln194_164_fu_2991_p1;
wire   [63:0] bitcast_ln194_165_fu_3064_p1;
wire   [63:0] bitcast_ln194_166_fu_3069_p1;
wire   [63:0] bitcast_ln194_167_fu_3104_p1;
reg    weights3_6_ce1_local;
reg   [4:0] weights3_6_address1_local;
reg    weights3_6_ce0_local;
reg   [4:0] weights3_6_address0_local;
reg    weights3_6_we1_local;
reg   [63:0] weights3_6_d1_local;
wire   [63:0] bitcast_ln194_168_fu_2794_p1;
reg    weights3_6_we0_local;
reg   [63:0] weights3_6_d0_local;
wire   [63:0] bitcast_ln194_169_fu_2799_p1;
wire   [63:0] bitcast_ln194_170_fu_2862_p1;
wire   [63:0] bitcast_ln194_171_fu_2866_p1;
wire   [63:0] bitcast_ln194_172_fu_2935_p1;
wire   [63:0] bitcast_ln194_173_fu_2939_p1;
wire   [63:0] bitcast_ln194_174_fu_2996_p1;
wire   [63:0] bitcast_ln194_175_fu_3000_p1;
wire   [63:0] bitcast_ln194_176_fu_3074_p1;
wire   [63:0] bitcast_ln194_177_fu_3079_p1;
wire   [63:0] bitcast_ln194_178_fu_3109_p1;
wire   [63:0] bitcast_ln194_179_fu_3114_p1;
reg    weights3_7_ce1_local;
reg   [4:0] weights3_7_address1_local;
reg    weights3_7_ce0_local;
reg   [4:0] weights3_7_address0_local;
reg    weights3_7_we1_local;
reg   [63:0] weights3_7_d1_local;
wire   [63:0] bitcast_ln194_180_fu_2804_p1;
reg    weights3_7_we0_local;
reg   [63:0] weights3_7_d0_local;
wire   [63:0] bitcast_ln194_181_fu_2809_p1;
wire   [63:0] bitcast_ln194_182_fu_2870_p1;
wire   [63:0] bitcast_ln194_183_fu_2874_p1;
wire   [63:0] bitcast_ln194_184_fu_2943_p1;
wire   [63:0] bitcast_ln194_185_fu_2947_p1;
wire   [63:0] bitcast_ln194_186_fu_3005_p1;
wire   [63:0] bitcast_ln194_187_fu_3009_p1;
wire   [63:0] bitcast_ln194_188_fu_3084_p1;
wire   [63:0] bitcast_ln194_189_fu_3089_p1;
wire   [63:0] bitcast_ln194_190_fu_3119_p1;
wire   [63:0] bitcast_ln194_191_fu_3124_p1;
reg   [63:0] grp_fu_1005_p0;
reg   [63:0] grp_fu_1009_p0;
reg   [63:0] grp_fu_1013_p0;
reg   [63:0] grp_fu_1017_p0;
reg   [63:0] grp_fu_1021_p0;
reg   [63:0] grp_fu_1025_p0;
reg   [63:0] grp_fu_1029_p0;
reg   [63:0] grp_fu_1033_p0;
wire   [2:0] tmp_s_fu_1263_p4;
wire   [4:0] p_shl1_fu_1277_p3;
wire   [4:0] zext_ln194_17_fu_1273_p1;
wire   [4:0] sub_ln194_fu_1285_p2;
wire   [4:0] tmp_3_fu_1298_p4;
wire   [5:0] or_ln4_fu_1308_p3;
wire   [7:0] p_shl_fu_1320_p3;
wire   [7:0] or_ln192_cast_fu_1316_p1;
wire   [4:0] lshr_ln194_1_fu_1334_p4;
wire   [1:0] tmp_4_fu_1351_p4;
wire   [7:0] empty_65_fu_1376_p2;
wire   [4:0] lshr_ln194_2_fu_1381_p4;
wire   [7:0] add_ln194_fu_1397_p2;
wire   [4:0] lshr_ln194_3_fu_1402_p4;
wire   [7:0] empty_66_fu_1417_p2;
wire   [4:0] lshr_ln194_4_fu_1422_p4;
wire   [7:0] empty_67_fu_1439_p2;
wire   [4:0] lshr_ln194_5_fu_1444_p4;
wire   [7:0] empty_68_fu_1461_p2;
wire   [4:0] lshr_ln194_6_fu_1466_p4;
wire   [7:0] add_ln194_1_fu_1481_p2;
wire   [4:0] lshr_ln194_7_fu_1486_p4;
wire   [7:0] add_ln194_2_fu_1501_p2;
wire   [4:0] lshr_ln194_8_fu_1506_p4;
wire   [7:0] empty_69_fu_1521_p2;
wire   [4:0] lshr_ln194_9_fu_1526_p4;
wire   [7:0] empty_70_fu_1543_p2;
wire   [4:0] lshr_ln194_s_fu_1548_p4;
wire   [7:0] empty_71_fu_1570_p2;
wire   [4:0] lshr_ln194_10_fu_1575_p4;
wire   [7:0] empty_72_fu_1592_p2;
wire   [4:0] lshr_ln194_11_fu_1597_p4;
wire   [7:0] add_ln194_3_fu_1613_p2;
wire   [4:0] lshr_ln194_12_fu_1618_p4;
wire   [7:0] empty_73_fu_1633_p2;
wire   [4:0] lshr_ln194_13_fu_1638_p4;
wire   [7:0] empty_74_fu_1655_p2;
wire   [4:0] lshr_ln194_14_fu_1660_p4;
wire   [7:0] add_ln194_4_fu_1677_p2;
wire   [4:0] lshr_ln194_16_fu_1682_p4;
wire   [7:0] add_ln194_5_fu_1697_p2;
wire   [4:0] lshr_ln194_17_fu_1702_p4;
wire   [7:0] empty_76_fu_1717_p2;
wire   [4:0] lshr_ln194_18_fu_1722_p4;
wire   [7:0] empty_75_fu_1777_p2;
wire   [4:0] lshr_ln194_15_fu_1782_p4;
wire   [7:0] empty_77_fu_1797_p2;
wire   [4:0] lshr_ln194_19_fu_1802_p4;
wire   [4:0] add_ln194_6_fu_1819_p2;
wire   [7:0] empty_78_fu_1832_p2;
wire   [4:0] lshr_ln194_20_fu_1837_p4;
wire   [7:0] add_ln194_7_fu_1854_p2;
wire   [4:0] lshr_ln194_22_fu_1859_p4;
wire   [7:0] empty_80_fu_1874_p2;
wire   [4:0] lshr_ln194_23_fu_1879_p4;
wire   [7:0] empty_79_fu_1936_p2;
wire   [4:0] lshr_ln194_21_fu_1941_p4;
wire   [7:0] empty_81_fu_1957_p2;
wire   [4:0] lshr_ln194_24_fu_1962_p4;
wire   [7:0] empty_82_fu_1979_p2;
wire   [4:0] lshr_ln194_25_fu_1984_p4;
wire   [7:0] add_ln194_8_fu_1999_p2;
wire   [4:0] lshr_ln194_26_fu_2004_p4;
wire   [7:0] add_ln194_9_fu_2019_p2;
wire   [4:0] lshr_ln194_27_fu_2024_p4;
wire   [7:0] empty_83_fu_2039_p2;
wire   [4:0] lshr_ln194_28_fu_2044_p4;
wire   [7:0] empty_84_fu_2061_p2;
wire   [4:0] lshr_ln194_29_fu_2066_p4;
wire   [4:0] add_ln194_10_fu_2083_p2;
wire   [7:0] empty_85_fu_2135_p2;
wire   [4:0] lshr_ln194_30_fu_2140_p4;
wire   [7:0] empty_86_fu_2157_p2;
wire   [4:0] lshr_ln194_31_fu_2162_p4;
wire   [7:0] add_ln194_11_fu_2178_p2;
wire   [4:0] lshr_ln194_32_fu_2183_p4;
wire   [7:0] empty_87_fu_2198_p2;
wire   [4:0] lshr_ln194_33_fu_2203_p4;
wire   [7:0] empty_88_fu_2220_p2;
wire   [4:0] lshr_ln194_34_fu_2225_p4;
wire   [7:0] add_ln194_12_fu_2242_p2;
wire   [4:0] lshr_ln194_36_fu_2247_p4;
wire   [7:0] add_ln194_13_fu_2262_p2;
wire   [4:0] lshr_ln194_37_fu_2267_p4;
wire   [7:0] empty_90_fu_2282_p2;
wire   [4:0] lshr_ln194_38_fu_2287_p4;
wire   [7:0] empty_89_fu_2344_p2;
wire   [4:0] lshr_ln194_35_fu_2349_p4;
wire   [7:0] empty_91_fu_2364_p2;
wire   [4:0] lshr_ln194_39_fu_2369_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage10;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_166 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U839(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1005_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1005_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U840(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1009_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1009_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U841(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1013_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1013_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U842(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1017_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1017_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U843(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1021_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1021_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U844(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1025_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1025_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U845(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1029_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1029_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U846(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1033_p0),.din1(norm_164),.ce(1'b1),.dout(grp_fu_1033_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage10))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage10))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage10))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage10))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_166 <= 7'd0;
    end else if (((tmp_reg_3165 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_166 <= add_ln192_fu_2608_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_1061 <= weights3_0_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1061 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_1066 <= weights3_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1066 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1083 <= weights3_6_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1083 <= weights3_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1088 <= weights3_7_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1088 <= weights3_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_1093 <= weights3_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1093 <= weights3_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1098 <= weights3_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1098 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1103 <= weights3_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_1103 <= weights3_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1108 <= weights3_5_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_1108 <= weights3_5_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_1113 <= weights3_5_q0;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1113 <= weights3_5_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1126 <= weights3_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1126 <= weights3_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1131 <= weights3_4_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1131 <= weights3_4_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_1136 <= weights3_5_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1136 <= weights3_5_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1141 <= weights3_6_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_1141 <= weights3_6_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_1146 <= weights3_7_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_1146 <= weights3_7_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_10_1_reg_4365 <= grp_fu_1033_p2;
        div213_10_reg_4360 <= grp_fu_1029_p2;
        div213_7_1_reg_4335 <= grp_fu_1009_p2;
        div213_7_2_reg_4340 <= grp_fu_1013_p2;
        div213_7_reg_4330 <= grp_fu_1005_p2;
        div213_9_1_reg_4350 <= grp_fu_1021_p2;
        div213_9_2_reg_4355 <= grp_fu_1025_p2;
        div213_9_reg_4345 <= grp_fu_1017_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_10_2_reg_4370 <= grp_fu_1005_p2;
        div213_11_1_reg_4380 <= grp_fu_1013_p2;
        div213_11_2_reg_4385 <= grp_fu_1017_p2;
        div213_11_reg_4375 <= grp_fu_1009_p2;
        div213_12_1_reg_4395 <= grp_fu_1025_p2;
        div213_12_2_reg_4400 <= grp_fu_1029_p2;
        div213_12_reg_4390 <= grp_fu_1021_p2;
        div213_13_reg_4405 <= grp_fu_1033_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_13_1_reg_4410 <= grp_fu_1005_p2;
        div213_13_2_reg_4415 <= grp_fu_1009_p2;
        div213_14_1_reg_4425 <= grp_fu_1017_p2;
        div213_14_2_reg_4430 <= grp_fu_1021_p2;
        div213_14_reg_4420 <= grp_fu_1013_p2;
        div213_15_1_reg_4440 <= grp_fu_1029_p2;
        div213_15_2_reg_4445 <= grp_fu_1033_p2;
        div213_15_reg_4435 <= grp_fu_1025_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div213_18_1_reg_4455 <= grp_fu_1033_p2;
        div213_18_reg_4450 <= grp_fu_1029_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_29_1_reg_4460 <= grp_fu_1005_p2;
        div213_29_2_reg_4465 <= grp_fu_1009_p2;
        div213_30_reg_4470 <= grp_fu_1013_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_3174[7 : 1] <= empty_fu_1328_p2[7 : 1];
        i_4_reg_3160 <= ap_sig_allocacmp_i_4;
        or_ln5_reg_3217[3 : 2] <= or_ln5_fu_1361_p3[3 : 2];
        tmp_reg_3165 <= ap_sig_allocacmp_i_4[32'd6];
        tmp_reg_3165_pp0_iter1_reg <= tmp_reg_3165;
        tmp_reg_3165_pp0_iter2_reg <= tmp_reg_3165_pp0_iter1_reg;
        tmp_reg_3165_pp0_iter3_reg <= tmp_reg_3165_pp0_iter2_reg;
        tmp_reg_3165_pp0_iter4_reg <= tmp_reg_3165_pp0_iter3_reg;
        tmp_reg_3165_pp0_iter5_reg <= tmp_reg_3165_pp0_iter4_reg;
        weights3_0_addr_14_reg_3250[3 : 2] <= or_ln194_cast_fu_1369_p1[3 : 2];
        weights3_0_addr_14_reg_3250_pp0_iter1_reg[3 : 2] <= weights3_0_addr_14_reg_3250[3 : 2];
        weights3_0_addr_14_reg_3250_pp0_iter2_reg[3 : 2] <= weights3_0_addr_14_reg_3250_pp0_iter1_reg[3 : 2];
        weights3_0_addr_14_reg_3250_pp0_iter3_reg[3 : 2] <= weights3_0_addr_14_reg_3250_pp0_iter2_reg[3 : 2];
        weights3_0_addr_14_reg_3250_pp0_iter4_reg[3 : 2] <= weights3_0_addr_14_reg_3250_pp0_iter3_reg[3 : 2];
        weights3_0_addr_14_reg_3250_pp0_iter5_reg[3 : 2] <= weights3_0_addr_14_reg_3250_pp0_iter4_reg[3 : 2];
        weights3_0_addr_reg_3169 <= zext_ln194_fu_1291_p1;
        weights3_0_addr_reg_3169_pp0_iter1_reg <= weights3_0_addr_reg_3169;
        weights3_0_addr_reg_3169_pp0_iter2_reg <= weights3_0_addr_reg_3169_pp0_iter1_reg;
        weights3_0_addr_reg_3169_pp0_iter3_reg <= weights3_0_addr_reg_3169_pp0_iter2_reg;
        weights3_0_addr_reg_3169_pp0_iter4_reg <= weights3_0_addr_reg_3169_pp0_iter3_reg;
        weights3_0_addr_reg_3169_pp0_iter5_reg <= weights3_0_addr_reg_3169_pp0_iter4_reg;
        weights3_1_addr_14_reg_3255[3 : 2] <= or_ln194_cast_fu_1369_p1[3 : 2];
        weights3_1_addr_14_reg_3255_pp0_iter1_reg[3 : 2] <= weights3_1_addr_14_reg_3255[3 : 2];
        weights3_1_addr_14_reg_3255_pp0_iter2_reg[3 : 2] <= weights3_1_addr_14_reg_3255_pp0_iter1_reg[3 : 2];
        weights3_1_addr_14_reg_3255_pp0_iter3_reg[3 : 2] <= weights3_1_addr_14_reg_3255_pp0_iter2_reg[3 : 2];
        weights3_1_addr_14_reg_3255_pp0_iter4_reg[3 : 2] <= weights3_1_addr_14_reg_3255_pp0_iter3_reg[3 : 2];
        weights3_1_addr_14_reg_3255_pp0_iter5_reg[3 : 2] <= weights3_1_addr_14_reg_3255_pp0_iter4_reg[3 : 2];
        weights3_1_addr_reg_3222 <= zext_ln194_fu_1291_p1;
        weights3_1_addr_reg_3222_pp0_iter1_reg <= weights3_1_addr_reg_3222;
        weights3_1_addr_reg_3222_pp0_iter2_reg <= weights3_1_addr_reg_3222_pp0_iter1_reg;
        weights3_1_addr_reg_3222_pp0_iter3_reg <= weights3_1_addr_reg_3222_pp0_iter2_reg;
        weights3_1_addr_reg_3222_pp0_iter4_reg <= weights3_1_addr_reg_3222_pp0_iter3_reg;
        weights3_1_addr_reg_3222_pp0_iter5_reg <= weights3_1_addr_reg_3222_pp0_iter4_reg;
        weights3_2_addr_14_reg_3260[3 : 2] <= or_ln194_cast_fu_1369_p1[3 : 2];
        weights3_2_addr_14_reg_3260_pp0_iter1_reg[3 : 2] <= weights3_2_addr_14_reg_3260[3 : 2];
        weights3_2_addr_14_reg_3260_pp0_iter2_reg[3 : 2] <= weights3_2_addr_14_reg_3260_pp0_iter1_reg[3 : 2];
        weights3_2_addr_14_reg_3260_pp0_iter3_reg[3 : 2] <= weights3_2_addr_14_reg_3260_pp0_iter2_reg[3 : 2];
        weights3_2_addr_14_reg_3260_pp0_iter4_reg[3 : 2] <= weights3_2_addr_14_reg_3260_pp0_iter3_reg[3 : 2];
        weights3_2_addr_14_reg_3260_pp0_iter5_reg[3 : 2] <= weights3_2_addr_14_reg_3260_pp0_iter4_reg[3 : 2];
        weights3_2_addr_reg_3227 <= zext_ln194_fu_1291_p1;
        weights3_2_addr_reg_3227_pp0_iter1_reg <= weights3_2_addr_reg_3227;
        weights3_2_addr_reg_3227_pp0_iter2_reg <= weights3_2_addr_reg_3227_pp0_iter1_reg;
        weights3_2_addr_reg_3227_pp0_iter3_reg <= weights3_2_addr_reg_3227_pp0_iter2_reg;
        weights3_2_addr_reg_3227_pp0_iter4_reg <= weights3_2_addr_reg_3227_pp0_iter3_reg;
        weights3_2_addr_reg_3227_pp0_iter5_reg <= weights3_2_addr_reg_3227_pp0_iter4_reg;
        weights3_3_addr_reg_3232 <= lshr_ln194_1_cast_fu_1344_p1;
        weights3_3_addr_reg_3232_pp0_iter1_reg <= weights3_3_addr_reg_3232;
        weights3_3_addr_reg_3232_pp0_iter2_reg <= weights3_3_addr_reg_3232_pp0_iter1_reg;
        weights3_3_addr_reg_3232_pp0_iter3_reg <= weights3_3_addr_reg_3232_pp0_iter2_reg;
        weights3_3_addr_reg_3232_pp0_iter4_reg <= weights3_3_addr_reg_3232_pp0_iter3_reg;
        weights3_3_addr_reg_3232_pp0_iter5_reg <= weights3_3_addr_reg_3232_pp0_iter4_reg;
        weights3_4_addr_reg_3238 <= lshr_ln194_1_cast_fu_1344_p1;
        weights3_4_addr_reg_3238_pp0_iter1_reg <= weights3_4_addr_reg_3238;
        weights3_4_addr_reg_3238_pp0_iter2_reg <= weights3_4_addr_reg_3238_pp0_iter1_reg;
        weights3_4_addr_reg_3238_pp0_iter3_reg <= weights3_4_addr_reg_3238_pp0_iter2_reg;
        weights3_4_addr_reg_3238_pp0_iter4_reg <= weights3_4_addr_reg_3238_pp0_iter3_reg;
        weights3_4_addr_reg_3238_pp0_iter5_reg <= weights3_4_addr_reg_3238_pp0_iter4_reg;
        weights3_5_addr_reg_3244 <= lshr_ln194_1_cast_fu_1344_p1;
        weights3_5_addr_reg_3244_pp0_iter1_reg <= weights3_5_addr_reg_3244;
        weights3_5_addr_reg_3244_pp0_iter2_reg <= weights3_5_addr_reg_3244_pp0_iter1_reg;
        weights3_5_addr_reg_3244_pp0_iter3_reg <= weights3_5_addr_reg_3244_pp0_iter2_reg;
        weights3_5_addr_reg_3244_pp0_iter4_reg <= weights3_5_addr_reg_3244_pp0_iter3_reg;
        weights3_5_addr_reg_3244_pp0_iter5_reg <= weights3_5_addr_reg_3244_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        or_ln194_cast154_reg_3486[3 : 2] <= or_ln194_cast154_fu_1774_p1[3 : 2];
        weights3_0_addr_17_reg_3561[4 : 2] <= add_ln194_6_cast_fu_1825_p1[4 : 2];
        weights3_0_addr_17_reg_3561_pp0_iter1_reg[4 : 2] <= weights3_0_addr_17_reg_3561[4 : 2];
        weights3_0_addr_17_reg_3561_pp0_iter2_reg[4 : 2] <= weights3_0_addr_17_reg_3561_pp0_iter1_reg[4 : 2];
        weights3_0_addr_17_reg_3561_pp0_iter3_reg[4 : 2] <= weights3_0_addr_17_reg_3561_pp0_iter2_reg[4 : 2];
        weights3_0_addr_17_reg_3561_pp0_iter4_reg[4 : 2] <= weights3_0_addr_17_reg_3561_pp0_iter3_reg[4 : 2];
        weights3_0_addr_17_reg_3561_pp0_iter5_reg[4 : 2] <= weights3_0_addr_17_reg_3561_pp0_iter4_reg[4 : 2];
        weights3_0_addr_18_reg_3591 <= lshr_ln194_23_cast_fu_1869_p1;
        weights3_0_addr_18_reg_3591_pp0_iter1_reg <= weights3_0_addr_18_reg_3591;
        weights3_0_addr_18_reg_3591_pp0_iter2_reg <= weights3_0_addr_18_reg_3591_pp0_iter1_reg;
        weights3_0_addr_18_reg_3591_pp0_iter3_reg <= weights3_0_addr_18_reg_3591_pp0_iter2_reg;
        weights3_0_addr_18_reg_3591_pp0_iter4_reg <= weights3_0_addr_18_reg_3591_pp0_iter3_reg;
        weights3_0_addr_18_reg_3591_pp0_iter5_reg <= weights3_0_addr_18_reg_3591_pp0_iter4_reg;
        weights3_1_addr_17_reg_3566[4 : 2] <= add_ln194_6_cast_fu_1825_p1[4 : 2];
        weights3_1_addr_17_reg_3566_pp0_iter1_reg[4 : 2] <= weights3_1_addr_17_reg_3566[4 : 2];
        weights3_1_addr_17_reg_3566_pp0_iter2_reg[4 : 2] <= weights3_1_addr_17_reg_3566_pp0_iter1_reg[4 : 2];
        weights3_1_addr_17_reg_3566_pp0_iter3_reg[4 : 2] <= weights3_1_addr_17_reg_3566_pp0_iter2_reg[4 : 2];
        weights3_1_addr_17_reg_3566_pp0_iter4_reg[4 : 2] <= weights3_1_addr_17_reg_3566_pp0_iter3_reg[4 : 2];
        weights3_1_addr_17_reg_3566_pp0_iter5_reg[4 : 2] <= weights3_1_addr_17_reg_3566_pp0_iter4_reg[4 : 2];
        weights3_1_addr_18_reg_3596 <= lshr_ln194_24_cast_fu_1889_p1;
        weights3_1_addr_18_reg_3596_pp0_iter1_reg <= weights3_1_addr_18_reg_3596;
        weights3_1_addr_18_reg_3596_pp0_iter2_reg <= weights3_1_addr_18_reg_3596_pp0_iter1_reg;
        weights3_1_addr_18_reg_3596_pp0_iter3_reg <= weights3_1_addr_18_reg_3596_pp0_iter2_reg;
        weights3_1_addr_18_reg_3596_pp0_iter4_reg <= weights3_1_addr_18_reg_3596_pp0_iter3_reg;
        weights3_1_addr_18_reg_3596_pp0_iter5_reg <= weights3_1_addr_18_reg_3596_pp0_iter4_reg;
        weights3_2_addr_17_reg_3571[4 : 2] <= add_ln194_6_cast_fu_1825_p1[4 : 2];
        weights3_2_addr_17_reg_3571_pp0_iter1_reg[4 : 2] <= weights3_2_addr_17_reg_3571[4 : 2];
        weights3_2_addr_17_reg_3571_pp0_iter2_reg[4 : 2] <= weights3_2_addr_17_reg_3571_pp0_iter1_reg[4 : 2];
        weights3_2_addr_17_reg_3571_pp0_iter3_reg[4 : 2] <= weights3_2_addr_17_reg_3571_pp0_iter2_reg[4 : 2];
        weights3_2_addr_17_reg_3571_pp0_iter4_reg[4 : 2] <= weights3_2_addr_17_reg_3571_pp0_iter3_reg[4 : 2];
        weights3_2_addr_17_reg_3571_pp0_iter5_reg[4 : 2] <= weights3_2_addr_17_reg_3571_pp0_iter4_reg[4 : 2];
        weights3_2_addr_18_reg_3601 <= lshr_ln194_24_cast_fu_1889_p1;
        weights3_2_addr_18_reg_3601_pp0_iter1_reg <= weights3_2_addr_18_reg_3601;
        weights3_2_addr_18_reg_3601_pp0_iter2_reg <= weights3_2_addr_18_reg_3601_pp0_iter1_reg;
        weights3_2_addr_18_reg_3601_pp0_iter3_reg <= weights3_2_addr_18_reg_3601_pp0_iter2_reg;
        weights3_2_addr_18_reg_3601_pp0_iter4_reg <= weights3_2_addr_18_reg_3601_pp0_iter3_reg;
        weights3_2_addr_18_reg_3601_pp0_iter5_reg <= weights3_2_addr_18_reg_3601_pp0_iter4_reg;
        weights3_3_addr_17_reg_3576 <= lshr_ln194_21_cast_fu_1847_p1;
        weights3_3_addr_17_reg_3576_pp0_iter1_reg <= weights3_3_addr_17_reg_3576;
        weights3_3_addr_17_reg_3576_pp0_iter2_reg <= weights3_3_addr_17_reg_3576_pp0_iter1_reg;
        weights3_3_addr_17_reg_3576_pp0_iter3_reg <= weights3_3_addr_17_reg_3576_pp0_iter2_reg;
        weights3_3_addr_17_reg_3576_pp0_iter4_reg <= weights3_3_addr_17_reg_3576_pp0_iter3_reg;
        weights3_3_addr_17_reg_3576_pp0_iter5_reg <= weights3_3_addr_17_reg_3576_pp0_iter4_reg;
        weights3_3_addr_18_reg_3606 <= lshr_ln194_24_cast_fu_1889_p1;
        weights3_3_addr_18_reg_3606_pp0_iter1_reg <= weights3_3_addr_18_reg_3606;
        weights3_3_addr_18_reg_3606_pp0_iter2_reg <= weights3_3_addr_18_reg_3606_pp0_iter1_reg;
        weights3_3_addr_18_reg_3606_pp0_iter3_reg <= weights3_3_addr_18_reg_3606_pp0_iter2_reg;
        weights3_3_addr_18_reg_3606_pp0_iter4_reg <= weights3_3_addr_18_reg_3606_pp0_iter3_reg;
        weights3_3_addr_18_reg_3606_pp0_iter5_reg <= weights3_3_addr_18_reg_3606_pp0_iter4_reg;
        weights3_4_addr_17_reg_3581 <= lshr_ln194_21_cast_fu_1847_p1;
        weights3_4_addr_17_reg_3581_pp0_iter1_reg <= weights3_4_addr_17_reg_3581;
        weights3_4_addr_17_reg_3581_pp0_iter2_reg <= weights3_4_addr_17_reg_3581_pp0_iter1_reg;
        weights3_4_addr_17_reg_3581_pp0_iter3_reg <= weights3_4_addr_17_reg_3581_pp0_iter2_reg;
        weights3_4_addr_17_reg_3581_pp0_iter4_reg <= weights3_4_addr_17_reg_3581_pp0_iter3_reg;
        weights3_4_addr_17_reg_3581_pp0_iter5_reg <= weights3_4_addr_17_reg_3581_pp0_iter4_reg;
        weights3_5_addr_16_reg_3546 <= zext_ln194_8_fu_1812_p1;
        weights3_5_addr_16_reg_3546_pp0_iter1_reg <= weights3_5_addr_16_reg_3546;
        weights3_5_addr_16_reg_3546_pp0_iter2_reg <= weights3_5_addr_16_reg_3546_pp0_iter1_reg;
        weights3_5_addr_16_reg_3546_pp0_iter3_reg <= weights3_5_addr_16_reg_3546_pp0_iter2_reg;
        weights3_5_addr_16_reg_3546_pp0_iter4_reg <= weights3_5_addr_16_reg_3546_pp0_iter3_reg;
        weights3_5_addr_16_reg_3546_pp0_iter5_reg <= weights3_5_addr_16_reg_3546_pp0_iter4_reg;
        weights3_5_addr_17_reg_3586 <= lshr_ln194_21_cast_fu_1847_p1;
        weights3_5_addr_17_reg_3586_pp0_iter1_reg <= weights3_5_addr_17_reg_3586;
        weights3_5_addr_17_reg_3586_pp0_iter2_reg <= weights3_5_addr_17_reg_3586_pp0_iter1_reg;
        weights3_5_addr_17_reg_3586_pp0_iter3_reg <= weights3_5_addr_17_reg_3586_pp0_iter2_reg;
        weights3_5_addr_17_reg_3586_pp0_iter4_reg <= weights3_5_addr_17_reg_3586_pp0_iter3_reg;
        weights3_5_addr_17_reg_3586_pp0_iter5_reg <= weights3_5_addr_17_reg_3586_pp0_iter4_reg;
        weights3_6_addr_16_reg_3551 <= zext_ln194_8_fu_1812_p1;
        weights3_6_addr_16_reg_3551_pp0_iter1_reg <= weights3_6_addr_16_reg_3551;
        weights3_6_addr_16_reg_3551_pp0_iter2_reg <= weights3_6_addr_16_reg_3551_pp0_iter1_reg;
        weights3_6_addr_16_reg_3551_pp0_iter3_reg <= weights3_6_addr_16_reg_3551_pp0_iter2_reg;
        weights3_6_addr_16_reg_3551_pp0_iter4_reg <= weights3_6_addr_16_reg_3551_pp0_iter3_reg;
        weights3_6_addr_16_reg_3551_pp0_iter5_reg <= weights3_6_addr_16_reg_3551_pp0_iter4_reg;
        weights3_7_addr_15_reg_3531 <= zext_ln194_6_fu_1792_p1;
        weights3_7_addr_15_reg_3531_pp0_iter1_reg <= weights3_7_addr_15_reg_3531;
        weights3_7_addr_15_reg_3531_pp0_iter2_reg <= weights3_7_addr_15_reg_3531_pp0_iter1_reg;
        weights3_7_addr_15_reg_3531_pp0_iter3_reg <= weights3_7_addr_15_reg_3531_pp0_iter2_reg;
        weights3_7_addr_15_reg_3531_pp0_iter4_reg <= weights3_7_addr_15_reg_3531_pp0_iter3_reg;
        weights3_7_addr_15_reg_3531_pp0_iter5_reg <= weights3_7_addr_15_reg_3531_pp0_iter4_reg;
        weights3_7_addr_16_reg_3556 <= zext_ln194_8_fu_1812_p1;
        weights3_7_addr_16_reg_3556_pp0_iter1_reg <= weights3_7_addr_16_reg_3556;
        weights3_7_addr_16_reg_3556_pp0_iter2_reg <= weights3_7_addr_16_reg_3556_pp0_iter1_reg;
        weights3_7_addr_16_reg_3556_pp0_iter3_reg <= weights3_7_addr_16_reg_3556_pp0_iter2_reg;
        weights3_7_addr_16_reg_3556_pp0_iter4_reg <= weights3_7_addr_16_reg_3556_pp0_iter3_reg;
        weights3_7_addr_16_reg_3556_pp0_iter5_reg <= weights3_7_addr_16_reg_3556_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1037 <= weights3_0_q1;
        reg_1041 <= weights3_1_q1;
        reg_1045 <= weights3_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1049 <= weights3_3_q1;
        reg_1053 <= weights3_4_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1057 <= weights3_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1071 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1075 <= weights3_6_q1;
        reg_1079 <= weights3_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1118 <= weights3_6_q0;
        reg_1122 <= weights3_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1151 <= grp_fu_1005_p2;
        reg_1155 <= grp_fu_1009_p2;
        reg_1159 <= grp_fu_1013_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1163 <= grp_fu_1017_p2;
        reg_1167 <= grp_fu_1021_p2;
        reg_1171 <= grp_fu_1025_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1175 <= grp_fu_1029_p2;
        reg_1179 <= grp_fu_1033_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1183 <= grp_fu_1005_p2;
        reg_1187 <= grp_fu_1009_p2;
        reg_1191 <= grp_fu_1013_p2;
        reg_1195 <= grp_fu_1017_p2;
        reg_1199 <= grp_fu_1021_p2;
        reg_1203 <= grp_fu_1025_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1207 <= grp_fu_1029_p2;
        reg_1211 <= grp_fu_1033_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1215 <= grp_fu_1005_p2;
        reg_1219 <= grp_fu_1009_p2;
        reg_1223 <= grp_fu_1013_p2;
        reg_1227 <= grp_fu_1017_p2;
        reg_1231 <= grp_fu_1021_p2;
        reg_1235 <= grp_fu_1025_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_1239 <= grp_fu_1029_p2;
        reg_1243 <= grp_fu_1033_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_addr_12_reg_3275 <= lshr_ln194_3_cast_fu_1412_p1;
        weights3_0_addr_12_reg_3275_pp0_iter1_reg <= weights3_0_addr_12_reg_3275;
        weights3_0_addr_12_reg_3275_pp0_iter2_reg <= weights3_0_addr_12_reg_3275_pp0_iter1_reg;
        weights3_0_addr_12_reg_3275_pp0_iter3_reg <= weights3_0_addr_12_reg_3275_pp0_iter2_reg;
        weights3_0_addr_12_reg_3275_pp0_iter4_reg <= weights3_0_addr_12_reg_3275_pp0_iter3_reg;
        weights3_0_addr_12_reg_3275_pp0_iter5_reg <= weights3_0_addr_12_reg_3275_pp0_iter4_reg;
        weights3_0_addr_13_reg_3318 <= zext_ln194_3_fu_1496_p1;
        weights3_0_addr_13_reg_3318_pp0_iter1_reg <= weights3_0_addr_13_reg_3318;
        weights3_0_addr_13_reg_3318_pp0_iter2_reg <= weights3_0_addr_13_reg_3318_pp0_iter1_reg;
        weights3_0_addr_13_reg_3318_pp0_iter3_reg <= weights3_0_addr_13_reg_3318_pp0_iter2_reg;
        weights3_0_addr_13_reg_3318_pp0_iter4_reg <= weights3_0_addr_13_reg_3318_pp0_iter3_reg;
        weights3_0_addr_13_reg_3318_pp0_iter5_reg <= weights3_0_addr_13_reg_3318_pp0_iter4_reg;
        weights3_1_addr_12_reg_3281 <= lshr_ln194_4_cast_fu_1432_p1;
        weights3_1_addr_12_reg_3281_pp0_iter1_reg <= weights3_1_addr_12_reg_3281;
        weights3_1_addr_12_reg_3281_pp0_iter2_reg <= weights3_1_addr_12_reg_3281_pp0_iter1_reg;
        weights3_1_addr_12_reg_3281_pp0_iter3_reg <= weights3_1_addr_12_reg_3281_pp0_iter2_reg;
        weights3_1_addr_12_reg_3281_pp0_iter4_reg <= weights3_1_addr_12_reg_3281_pp0_iter3_reg;
        weights3_1_addr_12_reg_3281_pp0_iter5_reg <= weights3_1_addr_12_reg_3281_pp0_iter4_reg;
        weights3_1_addr_13_reg_3324 <= lshr_ln194_8_cast_fu_1516_p1;
        weights3_1_addr_13_reg_3324_pp0_iter1_reg <= weights3_1_addr_13_reg_3324;
        weights3_1_addr_13_reg_3324_pp0_iter2_reg <= weights3_1_addr_13_reg_3324_pp0_iter1_reg;
        weights3_1_addr_13_reg_3324_pp0_iter3_reg <= weights3_1_addr_13_reg_3324_pp0_iter2_reg;
        weights3_1_addr_13_reg_3324_pp0_iter4_reg <= weights3_1_addr_13_reg_3324_pp0_iter3_reg;
        weights3_1_addr_13_reg_3324_pp0_iter5_reg <= weights3_1_addr_13_reg_3324_pp0_iter4_reg;
        weights3_2_addr_12_reg_3287 <= lshr_ln194_4_cast_fu_1432_p1;
        weights3_2_addr_12_reg_3287_pp0_iter1_reg <= weights3_2_addr_12_reg_3287;
        weights3_2_addr_12_reg_3287_pp0_iter2_reg <= weights3_2_addr_12_reg_3287_pp0_iter1_reg;
        weights3_2_addr_12_reg_3287_pp0_iter3_reg <= weights3_2_addr_12_reg_3287_pp0_iter2_reg;
        weights3_2_addr_12_reg_3287_pp0_iter4_reg <= weights3_2_addr_12_reg_3287_pp0_iter3_reg;
        weights3_2_addr_12_reg_3287_pp0_iter5_reg <= weights3_2_addr_12_reg_3287_pp0_iter4_reg;
        weights3_2_addr_13_reg_3330 <= lshr_ln194_9_cast_fu_1536_p1;
        weights3_2_addr_13_reg_3330_pp0_iter1_reg <= weights3_2_addr_13_reg_3330;
        weights3_2_addr_13_reg_3330_pp0_iter2_reg <= weights3_2_addr_13_reg_3330_pp0_iter1_reg;
        weights3_2_addr_13_reg_3330_pp0_iter3_reg <= weights3_2_addr_13_reg_3330_pp0_iter2_reg;
        weights3_2_addr_13_reg_3330_pp0_iter4_reg <= weights3_2_addr_13_reg_3330_pp0_iter3_reg;
        weights3_2_addr_13_reg_3330_pp0_iter5_reg <= weights3_2_addr_13_reg_3330_pp0_iter4_reg;
        weights3_3_addr_12_reg_3293 <= lshr_ln194_4_cast_fu_1432_p1;
        weights3_3_addr_12_reg_3293_pp0_iter1_reg <= weights3_3_addr_12_reg_3293;
        weights3_3_addr_12_reg_3293_pp0_iter2_reg <= weights3_3_addr_12_reg_3293_pp0_iter1_reg;
        weights3_3_addr_12_reg_3293_pp0_iter3_reg <= weights3_3_addr_12_reg_3293_pp0_iter2_reg;
        weights3_3_addr_12_reg_3293_pp0_iter4_reg <= weights3_3_addr_12_reg_3293_pp0_iter3_reg;
        weights3_3_addr_12_reg_3293_pp0_iter5_reg <= weights3_3_addr_12_reg_3293_pp0_iter4_reg;
        weights3_3_addr_13_reg_3336 <= lshr_ln194_9_cast_fu_1536_p1;
        weights3_3_addr_13_reg_3336_pp0_iter1_reg <= weights3_3_addr_13_reg_3336;
        weights3_3_addr_13_reg_3336_pp0_iter2_reg <= weights3_3_addr_13_reg_3336_pp0_iter1_reg;
        weights3_3_addr_13_reg_3336_pp0_iter3_reg <= weights3_3_addr_13_reg_3336_pp0_iter2_reg;
        weights3_3_addr_13_reg_3336_pp0_iter4_reg <= weights3_3_addr_13_reg_3336_pp0_iter3_reg;
        weights3_3_addr_13_reg_3336_pp0_iter5_reg <= weights3_3_addr_13_reg_3336_pp0_iter4_reg;
        weights3_4_addr_12_reg_3298 <= lshr_ln194_5_cast_fu_1454_p1;
        weights3_4_addr_12_reg_3298_pp0_iter1_reg <= weights3_4_addr_12_reg_3298;
        weights3_4_addr_12_reg_3298_pp0_iter2_reg <= weights3_4_addr_12_reg_3298_pp0_iter1_reg;
        weights3_4_addr_12_reg_3298_pp0_iter3_reg <= weights3_4_addr_12_reg_3298_pp0_iter2_reg;
        weights3_4_addr_12_reg_3298_pp0_iter4_reg <= weights3_4_addr_12_reg_3298_pp0_iter3_reg;
        weights3_4_addr_12_reg_3298_pp0_iter5_reg <= weights3_4_addr_12_reg_3298_pp0_iter4_reg;
        weights3_4_addr_13_reg_3341 <= lshr_ln194_9_cast_fu_1536_p1;
        weights3_4_addr_13_reg_3341_pp0_iter1_reg <= weights3_4_addr_13_reg_3341;
        weights3_4_addr_13_reg_3341_pp0_iter2_reg <= weights3_4_addr_13_reg_3341_pp0_iter1_reg;
        weights3_4_addr_13_reg_3341_pp0_iter3_reg <= weights3_4_addr_13_reg_3341_pp0_iter2_reg;
        weights3_4_addr_13_reg_3341_pp0_iter4_reg <= weights3_4_addr_13_reg_3341_pp0_iter3_reg;
        weights3_4_addr_13_reg_3341_pp0_iter5_reg <= weights3_4_addr_13_reg_3341_pp0_iter4_reg;
        weights3_5_addr_12_reg_3303 <= lshr_ln194_5_cast_fu_1454_p1;
        weights3_5_addr_12_reg_3303_pp0_iter1_reg <= weights3_5_addr_12_reg_3303;
        weights3_5_addr_12_reg_3303_pp0_iter2_reg <= weights3_5_addr_12_reg_3303_pp0_iter1_reg;
        weights3_5_addr_12_reg_3303_pp0_iter3_reg <= weights3_5_addr_12_reg_3303_pp0_iter2_reg;
        weights3_5_addr_12_reg_3303_pp0_iter4_reg <= weights3_5_addr_12_reg_3303_pp0_iter3_reg;
        weights3_5_addr_12_reg_3303_pp0_iter5_reg <= weights3_5_addr_12_reg_3303_pp0_iter4_reg;
        weights3_5_addr_13_reg_3346 <= zext_ln194_4_fu_1558_p1;
        weights3_5_addr_13_reg_3346_pp0_iter1_reg <= weights3_5_addr_13_reg_3346;
        weights3_5_addr_13_reg_3346_pp0_iter2_reg <= weights3_5_addr_13_reg_3346_pp0_iter1_reg;
        weights3_5_addr_13_reg_3346_pp0_iter3_reg <= weights3_5_addr_13_reg_3346_pp0_iter2_reg;
        weights3_5_addr_13_reg_3346_pp0_iter4_reg <= weights3_5_addr_13_reg_3346_pp0_iter3_reg;
        weights3_5_addr_13_reg_3346_pp0_iter5_reg <= weights3_5_addr_13_reg_3346_pp0_iter4_reg;
        weights3_6_addr_12_reg_3308 <= lshr_ln194_5_cast_fu_1454_p1;
        weights3_6_addr_12_reg_3308_pp0_iter1_reg <= weights3_6_addr_12_reg_3308;
        weights3_6_addr_12_reg_3308_pp0_iter2_reg <= weights3_6_addr_12_reg_3308_pp0_iter1_reg;
        weights3_6_addr_12_reg_3308_pp0_iter3_reg <= weights3_6_addr_12_reg_3308_pp0_iter2_reg;
        weights3_6_addr_12_reg_3308_pp0_iter4_reg <= weights3_6_addr_12_reg_3308_pp0_iter3_reg;
        weights3_6_addr_12_reg_3308_pp0_iter5_reg <= weights3_6_addr_12_reg_3308_pp0_iter4_reg;
        weights3_6_addr_13_reg_3351 <= zext_ln194_4_fu_1558_p1;
        weights3_6_addr_13_reg_3351_pp0_iter1_reg <= weights3_6_addr_13_reg_3351;
        weights3_6_addr_13_reg_3351_pp0_iter2_reg <= weights3_6_addr_13_reg_3351_pp0_iter1_reg;
        weights3_6_addr_13_reg_3351_pp0_iter3_reg <= weights3_6_addr_13_reg_3351_pp0_iter2_reg;
        weights3_6_addr_13_reg_3351_pp0_iter4_reg <= weights3_6_addr_13_reg_3351_pp0_iter3_reg;
        weights3_6_addr_13_reg_3351_pp0_iter5_reg <= weights3_6_addr_13_reg_3351_pp0_iter4_reg;
        weights3_6_addr_reg_3265 <= zext_ln194_1_fu_1391_p1;
        weights3_6_addr_reg_3265_pp0_iter1_reg <= weights3_6_addr_reg_3265;
        weights3_6_addr_reg_3265_pp0_iter2_reg <= weights3_6_addr_reg_3265_pp0_iter1_reg;
        weights3_6_addr_reg_3265_pp0_iter3_reg <= weights3_6_addr_reg_3265_pp0_iter2_reg;
        weights3_6_addr_reg_3265_pp0_iter4_reg <= weights3_6_addr_reg_3265_pp0_iter3_reg;
        weights3_6_addr_reg_3265_pp0_iter5_reg <= weights3_6_addr_reg_3265_pp0_iter4_reg;
        weights3_7_addr_12_reg_3313 <= zext_ln194_2_fu_1476_p1;
        weights3_7_addr_12_reg_3313_pp0_iter1_reg <= weights3_7_addr_12_reg_3313;
        weights3_7_addr_12_reg_3313_pp0_iter2_reg <= weights3_7_addr_12_reg_3313_pp0_iter1_reg;
        weights3_7_addr_12_reg_3313_pp0_iter3_reg <= weights3_7_addr_12_reg_3313_pp0_iter2_reg;
        weights3_7_addr_12_reg_3313_pp0_iter4_reg <= weights3_7_addr_12_reg_3313_pp0_iter3_reg;
        weights3_7_addr_12_reg_3313_pp0_iter5_reg <= weights3_7_addr_12_reg_3313_pp0_iter4_reg;
        weights3_7_addr_13_reg_3356 <= zext_ln194_4_fu_1558_p1;
        weights3_7_addr_13_reg_3356_pp0_iter1_reg <= weights3_7_addr_13_reg_3356;
        weights3_7_addr_13_reg_3356_pp0_iter2_reg <= weights3_7_addr_13_reg_3356_pp0_iter1_reg;
        weights3_7_addr_13_reg_3356_pp0_iter3_reg <= weights3_7_addr_13_reg_3356_pp0_iter2_reg;
        weights3_7_addr_13_reg_3356_pp0_iter4_reg <= weights3_7_addr_13_reg_3356_pp0_iter3_reg;
        weights3_7_addr_13_reg_3356_pp0_iter5_reg <= weights3_7_addr_13_reg_3356_pp0_iter4_reg;
        weights3_7_addr_reg_3270 <= zext_ln194_1_fu_1391_p1;
        weights3_7_addr_reg_3270_pp0_iter1_reg <= weights3_7_addr_reg_3270;
        weights3_7_addr_reg_3270_pp0_iter2_reg <= weights3_7_addr_reg_3270_pp0_iter1_reg;
        weights3_7_addr_reg_3270_pp0_iter3_reg <= weights3_7_addr_reg_3270_pp0_iter2_reg;
        weights3_7_addr_reg_3270_pp0_iter4_reg <= weights3_7_addr_reg_3270_pp0_iter3_reg;
        weights3_7_addr_reg_3270_pp0_iter5_reg <= weights3_7_addr_reg_3270_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_addr_15_reg_3426 <= lshr_ln194_13_cast_fu_1628_p1;
        weights3_0_addr_15_reg_3426_pp0_iter1_reg <= weights3_0_addr_15_reg_3426;
        weights3_0_addr_15_reg_3426_pp0_iter2_reg <= weights3_0_addr_15_reg_3426_pp0_iter1_reg;
        weights3_0_addr_15_reg_3426_pp0_iter3_reg <= weights3_0_addr_15_reg_3426_pp0_iter2_reg;
        weights3_0_addr_15_reg_3426_pp0_iter4_reg <= weights3_0_addr_15_reg_3426_pp0_iter3_reg;
        weights3_0_addr_15_reg_3426_pp0_iter5_reg <= weights3_0_addr_15_reg_3426_pp0_iter4_reg;
        weights3_0_addr_16_reg_3461 <= zext_ln194_7_fu_1692_p1;
        weights3_0_addr_16_reg_3461_pp0_iter1_reg <= weights3_0_addr_16_reg_3461;
        weights3_0_addr_16_reg_3461_pp0_iter2_reg <= weights3_0_addr_16_reg_3461_pp0_iter1_reg;
        weights3_0_addr_16_reg_3461_pp0_iter3_reg <= weights3_0_addr_16_reg_3461_pp0_iter2_reg;
        weights3_0_addr_16_reg_3461_pp0_iter4_reg <= weights3_0_addr_16_reg_3461_pp0_iter3_reg;
        weights3_0_addr_16_reg_3461_pp0_iter5_reg <= weights3_0_addr_16_reg_3461_pp0_iter4_reg;
        weights3_1_addr_15_reg_3431 <= lshr_ln194_14_cast_fu_1648_p1;
        weights3_1_addr_15_reg_3431_pp0_iter1_reg <= weights3_1_addr_15_reg_3431;
        weights3_1_addr_15_reg_3431_pp0_iter2_reg <= weights3_1_addr_15_reg_3431_pp0_iter1_reg;
        weights3_1_addr_15_reg_3431_pp0_iter3_reg <= weights3_1_addr_15_reg_3431_pp0_iter2_reg;
        weights3_1_addr_15_reg_3431_pp0_iter4_reg <= weights3_1_addr_15_reg_3431_pp0_iter3_reg;
        weights3_1_addr_15_reg_3431_pp0_iter5_reg <= weights3_1_addr_15_reg_3431_pp0_iter4_reg;
        weights3_1_addr_16_reg_3466 <= lshr_ln194_18_cast_fu_1712_p1;
        weights3_1_addr_16_reg_3466_pp0_iter1_reg <= weights3_1_addr_16_reg_3466;
        weights3_1_addr_16_reg_3466_pp0_iter2_reg <= weights3_1_addr_16_reg_3466_pp0_iter1_reg;
        weights3_1_addr_16_reg_3466_pp0_iter3_reg <= weights3_1_addr_16_reg_3466_pp0_iter2_reg;
        weights3_1_addr_16_reg_3466_pp0_iter4_reg <= weights3_1_addr_16_reg_3466_pp0_iter3_reg;
        weights3_1_addr_16_reg_3466_pp0_iter5_reg <= weights3_1_addr_16_reg_3466_pp0_iter4_reg;
        weights3_2_addr_15_reg_3436 <= lshr_ln194_14_cast_fu_1648_p1;
        weights3_2_addr_15_reg_3436_pp0_iter1_reg <= weights3_2_addr_15_reg_3436;
        weights3_2_addr_15_reg_3436_pp0_iter2_reg <= weights3_2_addr_15_reg_3436_pp0_iter1_reg;
        weights3_2_addr_15_reg_3436_pp0_iter3_reg <= weights3_2_addr_15_reg_3436_pp0_iter2_reg;
        weights3_2_addr_15_reg_3436_pp0_iter4_reg <= weights3_2_addr_15_reg_3436_pp0_iter3_reg;
        weights3_2_addr_15_reg_3436_pp0_iter5_reg <= weights3_2_addr_15_reg_3436_pp0_iter4_reg;
        weights3_2_addr_16_reg_3471 <= lshr_ln194_19_cast_fu_1732_p1;
        weights3_2_addr_16_reg_3471_pp0_iter1_reg <= weights3_2_addr_16_reg_3471;
        weights3_2_addr_16_reg_3471_pp0_iter2_reg <= weights3_2_addr_16_reg_3471_pp0_iter1_reg;
        weights3_2_addr_16_reg_3471_pp0_iter3_reg <= weights3_2_addr_16_reg_3471_pp0_iter2_reg;
        weights3_2_addr_16_reg_3471_pp0_iter4_reg <= weights3_2_addr_16_reg_3471_pp0_iter3_reg;
        weights3_2_addr_16_reg_3471_pp0_iter5_reg <= weights3_2_addr_16_reg_3471_pp0_iter4_reg;
        weights3_3_addr_14_reg_3401 <= lshr_ln194_11_cast_fu_1585_p1;
        weights3_3_addr_14_reg_3401_pp0_iter1_reg <= weights3_3_addr_14_reg_3401;
        weights3_3_addr_14_reg_3401_pp0_iter2_reg <= weights3_3_addr_14_reg_3401_pp0_iter1_reg;
        weights3_3_addr_14_reg_3401_pp0_iter3_reg <= weights3_3_addr_14_reg_3401_pp0_iter2_reg;
        weights3_3_addr_14_reg_3401_pp0_iter4_reg <= weights3_3_addr_14_reg_3401_pp0_iter3_reg;
        weights3_3_addr_14_reg_3401_pp0_iter5_reg <= weights3_3_addr_14_reg_3401_pp0_iter4_reg;
        weights3_3_addr_15_reg_3441 <= lshr_ln194_14_cast_fu_1648_p1;
        weights3_3_addr_15_reg_3441_pp0_iter1_reg <= weights3_3_addr_15_reg_3441;
        weights3_3_addr_15_reg_3441_pp0_iter2_reg <= weights3_3_addr_15_reg_3441_pp0_iter1_reg;
        weights3_3_addr_15_reg_3441_pp0_iter3_reg <= weights3_3_addr_15_reg_3441_pp0_iter2_reg;
        weights3_3_addr_15_reg_3441_pp0_iter4_reg <= weights3_3_addr_15_reg_3441_pp0_iter3_reg;
        weights3_3_addr_15_reg_3441_pp0_iter5_reg <= weights3_3_addr_15_reg_3441_pp0_iter4_reg;
        weights3_3_addr_16_reg_3476 <= lshr_ln194_19_cast_fu_1732_p1;
        weights3_3_addr_16_reg_3476_pp0_iter1_reg <= weights3_3_addr_16_reg_3476;
        weights3_3_addr_16_reg_3476_pp0_iter2_reg <= weights3_3_addr_16_reg_3476_pp0_iter1_reg;
        weights3_3_addr_16_reg_3476_pp0_iter3_reg <= weights3_3_addr_16_reg_3476_pp0_iter2_reg;
        weights3_3_addr_16_reg_3476_pp0_iter4_reg <= weights3_3_addr_16_reg_3476_pp0_iter3_reg;
        weights3_3_addr_16_reg_3476_pp0_iter5_reg <= weights3_3_addr_16_reg_3476_pp0_iter4_reg;
        weights3_4_addr_14_reg_3406 <= lshr_ln194_11_cast_fu_1585_p1;
        weights3_4_addr_14_reg_3406_pp0_iter1_reg <= weights3_4_addr_14_reg_3406;
        weights3_4_addr_14_reg_3406_pp0_iter2_reg <= weights3_4_addr_14_reg_3406_pp0_iter1_reg;
        weights3_4_addr_14_reg_3406_pp0_iter3_reg <= weights3_4_addr_14_reg_3406_pp0_iter2_reg;
        weights3_4_addr_14_reg_3406_pp0_iter4_reg <= weights3_4_addr_14_reg_3406_pp0_iter3_reg;
        weights3_4_addr_14_reg_3406_pp0_iter5_reg <= weights3_4_addr_14_reg_3406_pp0_iter4_reg;
        weights3_4_addr_15_reg_3446 <= lshr_ln194_15_cast_fu_1670_p1;
        weights3_4_addr_15_reg_3446_pp0_iter1_reg <= weights3_4_addr_15_reg_3446;
        weights3_4_addr_15_reg_3446_pp0_iter2_reg <= weights3_4_addr_15_reg_3446_pp0_iter1_reg;
        weights3_4_addr_15_reg_3446_pp0_iter3_reg <= weights3_4_addr_15_reg_3446_pp0_iter2_reg;
        weights3_4_addr_15_reg_3446_pp0_iter4_reg <= weights3_4_addr_15_reg_3446_pp0_iter3_reg;
        weights3_4_addr_15_reg_3446_pp0_iter5_reg <= weights3_4_addr_15_reg_3446_pp0_iter4_reg;
        weights3_4_addr_16_reg_3481 <= lshr_ln194_19_cast_fu_1732_p1;
        weights3_4_addr_16_reg_3481_pp0_iter1_reg <= weights3_4_addr_16_reg_3481;
        weights3_4_addr_16_reg_3481_pp0_iter2_reg <= weights3_4_addr_16_reg_3481_pp0_iter1_reg;
        weights3_4_addr_16_reg_3481_pp0_iter3_reg <= weights3_4_addr_16_reg_3481_pp0_iter2_reg;
        weights3_4_addr_16_reg_3481_pp0_iter4_reg <= weights3_4_addr_16_reg_3481_pp0_iter3_reg;
        weights3_4_addr_16_reg_3481_pp0_iter5_reg <= weights3_4_addr_16_reg_3481_pp0_iter4_reg;
        weights3_5_addr_14_reg_3411 <= lshr_ln194_11_cast_fu_1585_p1;
        weights3_5_addr_14_reg_3411_pp0_iter1_reg <= weights3_5_addr_14_reg_3411;
        weights3_5_addr_14_reg_3411_pp0_iter2_reg <= weights3_5_addr_14_reg_3411_pp0_iter1_reg;
        weights3_5_addr_14_reg_3411_pp0_iter3_reg <= weights3_5_addr_14_reg_3411_pp0_iter2_reg;
        weights3_5_addr_14_reg_3411_pp0_iter4_reg <= weights3_5_addr_14_reg_3411_pp0_iter3_reg;
        weights3_5_addr_14_reg_3411_pp0_iter5_reg <= weights3_5_addr_14_reg_3411_pp0_iter4_reg;
        weights3_5_addr_15_reg_3451 <= lshr_ln194_15_cast_fu_1670_p1;
        weights3_5_addr_15_reg_3451_pp0_iter1_reg <= weights3_5_addr_15_reg_3451;
        weights3_5_addr_15_reg_3451_pp0_iter2_reg <= weights3_5_addr_15_reg_3451_pp0_iter1_reg;
        weights3_5_addr_15_reg_3451_pp0_iter3_reg <= weights3_5_addr_15_reg_3451_pp0_iter2_reg;
        weights3_5_addr_15_reg_3451_pp0_iter4_reg <= weights3_5_addr_15_reg_3451_pp0_iter3_reg;
        weights3_5_addr_15_reg_3451_pp0_iter5_reg <= weights3_5_addr_15_reg_3451_pp0_iter4_reg;
        weights3_6_addr_14_reg_3416 <= zext_ln194_5_fu_1607_p1;
        weights3_6_addr_14_reg_3416_pp0_iter1_reg <= weights3_6_addr_14_reg_3416;
        weights3_6_addr_14_reg_3416_pp0_iter2_reg <= weights3_6_addr_14_reg_3416_pp0_iter1_reg;
        weights3_6_addr_14_reg_3416_pp0_iter3_reg <= weights3_6_addr_14_reg_3416_pp0_iter2_reg;
        weights3_6_addr_14_reg_3416_pp0_iter4_reg <= weights3_6_addr_14_reg_3416_pp0_iter3_reg;
        weights3_6_addr_14_reg_3416_pp0_iter5_reg <= weights3_6_addr_14_reg_3416_pp0_iter4_reg;
        weights3_6_addr_15_reg_3456 <= lshr_ln194_15_cast_fu_1670_p1;
        weights3_6_addr_15_reg_3456_pp0_iter1_reg <= weights3_6_addr_15_reg_3456;
        weights3_6_addr_15_reg_3456_pp0_iter2_reg <= weights3_6_addr_15_reg_3456_pp0_iter1_reg;
        weights3_6_addr_15_reg_3456_pp0_iter3_reg <= weights3_6_addr_15_reg_3456_pp0_iter2_reg;
        weights3_6_addr_15_reg_3456_pp0_iter4_reg <= weights3_6_addr_15_reg_3456_pp0_iter3_reg;
        weights3_6_addr_15_reg_3456_pp0_iter5_reg <= weights3_6_addr_15_reg_3456_pp0_iter4_reg;
        weights3_7_addr_14_reg_3421 <= zext_ln194_5_fu_1607_p1;
        weights3_7_addr_14_reg_3421_pp0_iter1_reg <= weights3_7_addr_14_reg_3421;
        weights3_7_addr_14_reg_3421_pp0_iter2_reg <= weights3_7_addr_14_reg_3421_pp0_iter1_reg;
        weights3_7_addr_14_reg_3421_pp0_iter3_reg <= weights3_7_addr_14_reg_3421_pp0_iter2_reg;
        weights3_7_addr_14_reg_3421_pp0_iter4_reg <= weights3_7_addr_14_reg_3421_pp0_iter3_reg;
        weights3_7_addr_14_reg_3421_pp0_iter5_reg <= weights3_7_addr_14_reg_3421_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_addr_19_reg_3711 <= zext_ln194_11_fu_2014_p1;
        weights3_0_addr_19_reg_3711_pp0_iter1_reg <= weights3_0_addr_19_reg_3711;
        weights3_0_addr_19_reg_3711_pp0_iter2_reg <= weights3_0_addr_19_reg_3711_pp0_iter1_reg;
        weights3_0_addr_19_reg_3711_pp0_iter3_reg <= weights3_0_addr_19_reg_3711_pp0_iter2_reg;
        weights3_0_addr_19_reg_3711_pp0_iter4_reg <= weights3_0_addr_19_reg_3711_pp0_iter3_reg;
        weights3_0_addr_19_reg_3711_pp0_iter5_reg <= weights3_0_addr_19_reg_3711_pp0_iter4_reg;
        weights3_0_addr_20_reg_3751[4 : 2] <= add_ln194_10_cast_fu_2088_p1[4 : 2];
        weights3_0_addr_20_reg_3751_pp0_iter1_reg[4 : 2] <= weights3_0_addr_20_reg_3751[4 : 2];
        weights3_0_addr_20_reg_3751_pp0_iter2_reg[4 : 2] <= weights3_0_addr_20_reg_3751_pp0_iter1_reg[4 : 2];
        weights3_0_addr_20_reg_3751_pp0_iter3_reg[4 : 2] <= weights3_0_addr_20_reg_3751_pp0_iter2_reg[4 : 2];
        weights3_0_addr_20_reg_3751_pp0_iter4_reg[4 : 2] <= weights3_0_addr_20_reg_3751_pp0_iter3_reg[4 : 2];
        weights3_0_addr_20_reg_3751_pp0_iter5_reg[4 : 2] <= weights3_0_addr_20_reg_3751_pp0_iter4_reg[4 : 2];
        weights3_1_addr_19_reg_3716 <= lshr_ln194_28_cast_fu_2034_p1;
        weights3_1_addr_19_reg_3716_pp0_iter1_reg <= weights3_1_addr_19_reg_3716;
        weights3_1_addr_19_reg_3716_pp0_iter2_reg <= weights3_1_addr_19_reg_3716_pp0_iter1_reg;
        weights3_1_addr_19_reg_3716_pp0_iter3_reg <= weights3_1_addr_19_reg_3716_pp0_iter2_reg;
        weights3_1_addr_19_reg_3716_pp0_iter4_reg <= weights3_1_addr_19_reg_3716_pp0_iter3_reg;
        weights3_1_addr_19_reg_3716_pp0_iter5_reg <= weights3_1_addr_19_reg_3716_pp0_iter4_reg;
        weights3_1_addr_20_reg_3757[4 : 2] <= add_ln194_10_cast_fu_2088_p1[4 : 2];
        weights3_1_addr_20_reg_3757_pp0_iter1_reg[4 : 2] <= weights3_1_addr_20_reg_3757[4 : 2];
        weights3_1_addr_20_reg_3757_pp0_iter2_reg[4 : 2] <= weights3_1_addr_20_reg_3757_pp0_iter1_reg[4 : 2];
        weights3_1_addr_20_reg_3757_pp0_iter3_reg[4 : 2] <= weights3_1_addr_20_reg_3757_pp0_iter2_reg[4 : 2];
        weights3_1_addr_20_reg_3757_pp0_iter4_reg[4 : 2] <= weights3_1_addr_20_reg_3757_pp0_iter3_reg[4 : 2];
        weights3_1_addr_20_reg_3757_pp0_iter5_reg[4 : 2] <= weights3_1_addr_20_reg_3757_pp0_iter4_reg[4 : 2];
        weights3_2_addr_19_reg_3721 <= lshr_ln194_29_cast_fu_2054_p1;
        weights3_2_addr_19_reg_3721_pp0_iter1_reg <= weights3_2_addr_19_reg_3721;
        weights3_2_addr_19_reg_3721_pp0_iter2_reg <= weights3_2_addr_19_reg_3721_pp0_iter1_reg;
        weights3_2_addr_19_reg_3721_pp0_iter3_reg <= weights3_2_addr_19_reg_3721_pp0_iter2_reg;
        weights3_2_addr_19_reg_3721_pp0_iter4_reg <= weights3_2_addr_19_reg_3721_pp0_iter3_reg;
        weights3_2_addr_19_reg_3721_pp0_iter5_reg <= weights3_2_addr_19_reg_3721_pp0_iter4_reg;
        weights3_2_addr_20_reg_3763[4 : 2] <= add_ln194_10_cast_fu_2088_p1[4 : 2];
        weights3_2_addr_20_reg_3763_pp0_iter1_reg[4 : 2] <= weights3_2_addr_20_reg_3763[4 : 2];
        weights3_2_addr_20_reg_3763_pp0_iter2_reg[4 : 2] <= weights3_2_addr_20_reg_3763_pp0_iter1_reg[4 : 2];
        weights3_2_addr_20_reg_3763_pp0_iter3_reg[4 : 2] <= weights3_2_addr_20_reg_3763_pp0_iter2_reg[4 : 2];
        weights3_2_addr_20_reg_3763_pp0_iter4_reg[4 : 2] <= weights3_2_addr_20_reg_3763_pp0_iter3_reg[4 : 2];
        weights3_2_addr_20_reg_3763_pp0_iter5_reg[4 : 2] <= weights3_2_addr_20_reg_3763_pp0_iter4_reg[4 : 2];
        weights3_3_addr_19_reg_3726 <= lshr_ln194_29_cast_fu_2054_p1;
        weights3_3_addr_19_reg_3726_pp0_iter1_reg <= weights3_3_addr_19_reg_3726;
        weights3_3_addr_19_reg_3726_pp0_iter2_reg <= weights3_3_addr_19_reg_3726_pp0_iter1_reg;
        weights3_3_addr_19_reg_3726_pp0_iter3_reg <= weights3_3_addr_19_reg_3726_pp0_iter2_reg;
        weights3_3_addr_19_reg_3726_pp0_iter4_reg <= weights3_3_addr_19_reg_3726_pp0_iter3_reg;
        weights3_3_addr_19_reg_3726_pp0_iter5_reg <= weights3_3_addr_19_reg_3726_pp0_iter4_reg;
        weights3_4_addr_18_reg_3691 <= lshr_ln194_25_cast_fu_1972_p1;
        weights3_4_addr_18_reg_3691_pp0_iter1_reg <= weights3_4_addr_18_reg_3691;
        weights3_4_addr_18_reg_3691_pp0_iter2_reg <= weights3_4_addr_18_reg_3691_pp0_iter1_reg;
        weights3_4_addr_18_reg_3691_pp0_iter3_reg <= weights3_4_addr_18_reg_3691_pp0_iter2_reg;
        weights3_4_addr_18_reg_3691_pp0_iter4_reg <= weights3_4_addr_18_reg_3691_pp0_iter3_reg;
        weights3_4_addr_18_reg_3691_pp0_iter5_reg <= weights3_4_addr_18_reg_3691_pp0_iter4_reg;
        weights3_4_addr_19_reg_3731 <= lshr_ln194_29_cast_fu_2054_p1;
        weights3_4_addr_19_reg_3731_pp0_iter1_reg <= weights3_4_addr_19_reg_3731;
        weights3_4_addr_19_reg_3731_pp0_iter2_reg <= weights3_4_addr_19_reg_3731_pp0_iter1_reg;
        weights3_4_addr_19_reg_3731_pp0_iter3_reg <= weights3_4_addr_19_reg_3731_pp0_iter2_reg;
        weights3_4_addr_19_reg_3731_pp0_iter4_reg <= weights3_4_addr_19_reg_3731_pp0_iter3_reg;
        weights3_4_addr_19_reg_3731_pp0_iter5_reg <= weights3_4_addr_19_reg_3731_pp0_iter4_reg;
        weights3_5_addr_18_reg_3696 <= lshr_ln194_25_cast_fu_1972_p1;
        weights3_5_addr_18_reg_3696_pp0_iter1_reg <= weights3_5_addr_18_reg_3696;
        weights3_5_addr_18_reg_3696_pp0_iter2_reg <= weights3_5_addr_18_reg_3696_pp0_iter1_reg;
        weights3_5_addr_18_reg_3696_pp0_iter3_reg <= weights3_5_addr_18_reg_3696_pp0_iter2_reg;
        weights3_5_addr_18_reg_3696_pp0_iter4_reg <= weights3_5_addr_18_reg_3696_pp0_iter3_reg;
        weights3_5_addr_18_reg_3696_pp0_iter5_reg <= weights3_5_addr_18_reg_3696_pp0_iter4_reg;
        weights3_5_addr_19_reg_3736 <= zext_ln194_12_fu_2076_p1;
        weights3_5_addr_19_reg_3736_pp0_iter1_reg <= weights3_5_addr_19_reg_3736;
        weights3_5_addr_19_reg_3736_pp0_iter2_reg <= weights3_5_addr_19_reg_3736_pp0_iter1_reg;
        weights3_5_addr_19_reg_3736_pp0_iter3_reg <= weights3_5_addr_19_reg_3736_pp0_iter2_reg;
        weights3_5_addr_19_reg_3736_pp0_iter4_reg <= weights3_5_addr_19_reg_3736_pp0_iter3_reg;
        weights3_5_addr_19_reg_3736_pp0_iter5_reg <= weights3_5_addr_19_reg_3736_pp0_iter4_reg;
        weights3_6_addr_17_reg_3666 <= zext_ln194_9_fu_1951_p1;
        weights3_6_addr_17_reg_3666_pp0_iter1_reg <= weights3_6_addr_17_reg_3666;
        weights3_6_addr_17_reg_3666_pp0_iter2_reg <= weights3_6_addr_17_reg_3666_pp0_iter1_reg;
        weights3_6_addr_17_reg_3666_pp0_iter3_reg <= weights3_6_addr_17_reg_3666_pp0_iter2_reg;
        weights3_6_addr_17_reg_3666_pp0_iter4_reg <= weights3_6_addr_17_reg_3666_pp0_iter3_reg;
        weights3_6_addr_17_reg_3666_pp0_iter5_reg <= weights3_6_addr_17_reg_3666_pp0_iter4_reg;
        weights3_6_addr_18_reg_3701 <= lshr_ln194_25_cast_fu_1972_p1;
        weights3_6_addr_18_reg_3701_pp0_iter1_reg <= weights3_6_addr_18_reg_3701;
        weights3_6_addr_18_reg_3701_pp0_iter2_reg <= weights3_6_addr_18_reg_3701_pp0_iter1_reg;
        weights3_6_addr_18_reg_3701_pp0_iter3_reg <= weights3_6_addr_18_reg_3701_pp0_iter2_reg;
        weights3_6_addr_18_reg_3701_pp0_iter4_reg <= weights3_6_addr_18_reg_3701_pp0_iter3_reg;
        weights3_6_addr_18_reg_3701_pp0_iter5_reg <= weights3_6_addr_18_reg_3701_pp0_iter4_reg;
        weights3_6_addr_19_reg_3741 <= zext_ln194_12_fu_2076_p1;
        weights3_6_addr_19_reg_3741_pp0_iter1_reg <= weights3_6_addr_19_reg_3741;
        weights3_6_addr_19_reg_3741_pp0_iter2_reg <= weights3_6_addr_19_reg_3741_pp0_iter1_reg;
        weights3_6_addr_19_reg_3741_pp0_iter3_reg <= weights3_6_addr_19_reg_3741_pp0_iter2_reg;
        weights3_6_addr_19_reg_3741_pp0_iter4_reg <= weights3_6_addr_19_reg_3741_pp0_iter3_reg;
        weights3_6_addr_19_reg_3741_pp0_iter5_reg <= weights3_6_addr_19_reg_3741_pp0_iter4_reg;
        weights3_7_addr_17_reg_3671 <= zext_ln194_9_fu_1951_p1;
        weights3_7_addr_17_reg_3671_pp0_iter1_reg <= weights3_7_addr_17_reg_3671;
        weights3_7_addr_17_reg_3671_pp0_iter2_reg <= weights3_7_addr_17_reg_3671_pp0_iter1_reg;
        weights3_7_addr_17_reg_3671_pp0_iter3_reg <= weights3_7_addr_17_reg_3671_pp0_iter2_reg;
        weights3_7_addr_17_reg_3671_pp0_iter4_reg <= weights3_7_addr_17_reg_3671_pp0_iter3_reg;
        weights3_7_addr_17_reg_3671_pp0_iter5_reg <= weights3_7_addr_17_reg_3671_pp0_iter4_reg;
        weights3_7_addr_18_reg_3706 <= zext_ln194_10_fu_1994_p1;
        weights3_7_addr_18_reg_3706_pp0_iter1_reg <= weights3_7_addr_18_reg_3706;
        weights3_7_addr_18_reg_3706_pp0_iter2_reg <= weights3_7_addr_18_reg_3706_pp0_iter1_reg;
        weights3_7_addr_18_reg_3706_pp0_iter3_reg <= weights3_7_addr_18_reg_3706_pp0_iter2_reg;
        weights3_7_addr_18_reg_3706_pp0_iter4_reg <= weights3_7_addr_18_reg_3706_pp0_iter3_reg;
        weights3_7_addr_18_reg_3706_pp0_iter5_reg <= weights3_7_addr_18_reg_3706_pp0_iter4_reg;
        weights3_7_addr_19_reg_3746 <= zext_ln194_12_fu_2076_p1;
        weights3_7_addr_19_reg_3746_pp0_iter1_reg <= weights3_7_addr_19_reg_3746;
        weights3_7_addr_19_reg_3746_pp0_iter2_reg <= weights3_7_addr_19_reg_3746_pp0_iter1_reg;
        weights3_7_addr_19_reg_3746_pp0_iter3_reg <= weights3_7_addr_19_reg_3746_pp0_iter2_reg;
        weights3_7_addr_19_reg_3746_pp0_iter4_reg <= weights3_7_addr_19_reg_3746_pp0_iter3_reg;
        weights3_7_addr_19_reg_3746_pp0_iter5_reg <= weights3_7_addr_19_reg_3746_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_addr_21_reg_3874 <= lshr_ln194_33_cast_fu_2193_p1;
        weights3_0_addr_21_reg_3874_pp0_iter1_reg <= weights3_0_addr_21_reg_3874;
        weights3_0_addr_21_reg_3874_pp0_iter2_reg <= weights3_0_addr_21_reg_3874_pp0_iter1_reg;
        weights3_0_addr_21_reg_3874_pp0_iter3_reg <= weights3_0_addr_21_reg_3874_pp0_iter2_reg;
        weights3_0_addr_21_reg_3874_pp0_iter4_reg <= weights3_0_addr_21_reg_3874_pp0_iter3_reg;
        weights3_0_addr_21_reg_3874_pp0_iter5_reg <= weights3_0_addr_21_reg_3874_pp0_iter4_reg;
        weights3_0_addr_22_reg_3912 <= zext_ln194_15_fu_2257_p1;
        weights3_0_addr_22_reg_3912_pp0_iter1_reg <= weights3_0_addr_22_reg_3912;
        weights3_0_addr_22_reg_3912_pp0_iter2_reg <= weights3_0_addr_22_reg_3912_pp0_iter1_reg;
        weights3_0_addr_22_reg_3912_pp0_iter3_reg <= weights3_0_addr_22_reg_3912_pp0_iter2_reg;
        weights3_0_addr_22_reg_3912_pp0_iter4_reg <= weights3_0_addr_22_reg_3912_pp0_iter3_reg;
        weights3_0_addr_22_reg_3912_pp0_iter5_reg <= weights3_0_addr_22_reg_3912_pp0_iter4_reg;
        weights3_0_addr_22_reg_3912_pp0_iter6_reg <= weights3_0_addr_22_reg_3912_pp0_iter5_reg;
        weights3_1_addr_21_reg_3880 <= lshr_ln194_34_cast_fu_2213_p1;
        weights3_1_addr_21_reg_3880_pp0_iter1_reg <= weights3_1_addr_21_reg_3880;
        weights3_1_addr_21_reg_3880_pp0_iter2_reg <= weights3_1_addr_21_reg_3880_pp0_iter1_reg;
        weights3_1_addr_21_reg_3880_pp0_iter3_reg <= weights3_1_addr_21_reg_3880_pp0_iter2_reg;
        weights3_1_addr_21_reg_3880_pp0_iter4_reg <= weights3_1_addr_21_reg_3880_pp0_iter3_reg;
        weights3_1_addr_21_reg_3880_pp0_iter5_reg <= weights3_1_addr_21_reg_3880_pp0_iter4_reg;
        weights3_1_addr_22_reg_3917 <= lshr_ln194_38_cast_fu_2277_p1;
        weights3_1_addr_22_reg_3917_pp0_iter1_reg <= weights3_1_addr_22_reg_3917;
        weights3_1_addr_22_reg_3917_pp0_iter2_reg <= weights3_1_addr_22_reg_3917_pp0_iter1_reg;
        weights3_1_addr_22_reg_3917_pp0_iter3_reg <= weights3_1_addr_22_reg_3917_pp0_iter2_reg;
        weights3_1_addr_22_reg_3917_pp0_iter4_reg <= weights3_1_addr_22_reg_3917_pp0_iter3_reg;
        weights3_1_addr_22_reg_3917_pp0_iter5_reg <= weights3_1_addr_22_reg_3917_pp0_iter4_reg;
        weights3_1_addr_22_reg_3917_pp0_iter6_reg <= weights3_1_addr_22_reg_3917_pp0_iter5_reg;
        weights3_2_addr_21_reg_3886 <= lshr_ln194_34_cast_fu_2213_p1;
        weights3_2_addr_21_reg_3886_pp0_iter1_reg <= weights3_2_addr_21_reg_3886;
        weights3_2_addr_21_reg_3886_pp0_iter2_reg <= weights3_2_addr_21_reg_3886_pp0_iter1_reg;
        weights3_2_addr_21_reg_3886_pp0_iter3_reg <= weights3_2_addr_21_reg_3886_pp0_iter2_reg;
        weights3_2_addr_21_reg_3886_pp0_iter4_reg <= weights3_2_addr_21_reg_3886_pp0_iter3_reg;
        weights3_2_addr_21_reg_3886_pp0_iter5_reg <= weights3_2_addr_21_reg_3886_pp0_iter4_reg;
        weights3_2_addr_22_reg_3922 <= lshr_ln194_39_cast_fu_2297_p1;
        weights3_2_addr_22_reg_3922_pp0_iter1_reg <= weights3_2_addr_22_reg_3922;
        weights3_2_addr_22_reg_3922_pp0_iter2_reg <= weights3_2_addr_22_reg_3922_pp0_iter1_reg;
        weights3_2_addr_22_reg_3922_pp0_iter3_reg <= weights3_2_addr_22_reg_3922_pp0_iter2_reg;
        weights3_2_addr_22_reg_3922_pp0_iter4_reg <= weights3_2_addr_22_reg_3922_pp0_iter3_reg;
        weights3_2_addr_22_reg_3922_pp0_iter5_reg <= weights3_2_addr_22_reg_3922_pp0_iter4_reg;
        weights3_2_addr_22_reg_3922_pp0_iter6_reg <= weights3_2_addr_22_reg_3922_pp0_iter5_reg;
        weights3_3_addr_20_reg_3849 <= lshr_ln194_31_cast_fu_2150_p1;
        weights3_3_addr_20_reg_3849_pp0_iter1_reg <= weights3_3_addr_20_reg_3849;
        weights3_3_addr_20_reg_3849_pp0_iter2_reg <= weights3_3_addr_20_reg_3849_pp0_iter1_reg;
        weights3_3_addr_20_reg_3849_pp0_iter3_reg <= weights3_3_addr_20_reg_3849_pp0_iter2_reg;
        weights3_3_addr_20_reg_3849_pp0_iter4_reg <= weights3_3_addr_20_reg_3849_pp0_iter3_reg;
        weights3_3_addr_20_reg_3849_pp0_iter5_reg <= weights3_3_addr_20_reg_3849_pp0_iter4_reg;
        weights3_3_addr_21_reg_3892 <= lshr_ln194_34_cast_fu_2213_p1;
        weights3_3_addr_21_reg_3892_pp0_iter1_reg <= weights3_3_addr_21_reg_3892;
        weights3_3_addr_21_reg_3892_pp0_iter2_reg <= weights3_3_addr_21_reg_3892_pp0_iter1_reg;
        weights3_3_addr_21_reg_3892_pp0_iter3_reg <= weights3_3_addr_21_reg_3892_pp0_iter2_reg;
        weights3_3_addr_21_reg_3892_pp0_iter4_reg <= weights3_3_addr_21_reg_3892_pp0_iter3_reg;
        weights3_3_addr_21_reg_3892_pp0_iter5_reg <= weights3_3_addr_21_reg_3892_pp0_iter4_reg;
        weights3_3_addr_22_reg_3927 <= lshr_ln194_39_cast_fu_2297_p1;
        weights3_3_addr_22_reg_3927_pp0_iter1_reg <= weights3_3_addr_22_reg_3927;
        weights3_3_addr_22_reg_3927_pp0_iter2_reg <= weights3_3_addr_22_reg_3927_pp0_iter1_reg;
        weights3_3_addr_22_reg_3927_pp0_iter3_reg <= weights3_3_addr_22_reg_3927_pp0_iter2_reg;
        weights3_3_addr_22_reg_3927_pp0_iter4_reg <= weights3_3_addr_22_reg_3927_pp0_iter3_reg;
        weights3_3_addr_22_reg_3927_pp0_iter5_reg <= weights3_3_addr_22_reg_3927_pp0_iter4_reg;
        weights3_4_addr_20_reg_3854 <= lshr_ln194_31_cast_fu_2150_p1;
        weights3_4_addr_20_reg_3854_pp0_iter1_reg <= weights3_4_addr_20_reg_3854;
        weights3_4_addr_20_reg_3854_pp0_iter2_reg <= weights3_4_addr_20_reg_3854_pp0_iter1_reg;
        weights3_4_addr_20_reg_3854_pp0_iter3_reg <= weights3_4_addr_20_reg_3854_pp0_iter2_reg;
        weights3_4_addr_20_reg_3854_pp0_iter4_reg <= weights3_4_addr_20_reg_3854_pp0_iter3_reg;
        weights3_4_addr_20_reg_3854_pp0_iter5_reg <= weights3_4_addr_20_reg_3854_pp0_iter4_reg;
        weights3_4_addr_21_reg_3897 <= lshr_ln194_35_cast_fu_2235_p1;
        weights3_4_addr_21_reg_3897_pp0_iter1_reg <= weights3_4_addr_21_reg_3897;
        weights3_4_addr_21_reg_3897_pp0_iter2_reg <= weights3_4_addr_21_reg_3897_pp0_iter1_reg;
        weights3_4_addr_21_reg_3897_pp0_iter3_reg <= weights3_4_addr_21_reg_3897_pp0_iter2_reg;
        weights3_4_addr_21_reg_3897_pp0_iter4_reg <= weights3_4_addr_21_reg_3897_pp0_iter3_reg;
        weights3_4_addr_21_reg_3897_pp0_iter5_reg <= weights3_4_addr_21_reg_3897_pp0_iter4_reg;
        weights3_4_addr_22_reg_3933 <= lshr_ln194_39_cast_fu_2297_p1;
        weights3_4_addr_22_reg_3933_pp0_iter1_reg <= weights3_4_addr_22_reg_3933;
        weights3_4_addr_22_reg_3933_pp0_iter2_reg <= weights3_4_addr_22_reg_3933_pp0_iter1_reg;
        weights3_4_addr_22_reg_3933_pp0_iter3_reg <= weights3_4_addr_22_reg_3933_pp0_iter2_reg;
        weights3_4_addr_22_reg_3933_pp0_iter4_reg <= weights3_4_addr_22_reg_3933_pp0_iter3_reg;
        weights3_4_addr_22_reg_3933_pp0_iter5_reg <= weights3_4_addr_22_reg_3933_pp0_iter4_reg;
        weights3_5_addr_20_reg_3859 <= lshr_ln194_31_cast_fu_2150_p1;
        weights3_5_addr_20_reg_3859_pp0_iter1_reg <= weights3_5_addr_20_reg_3859;
        weights3_5_addr_20_reg_3859_pp0_iter2_reg <= weights3_5_addr_20_reg_3859_pp0_iter1_reg;
        weights3_5_addr_20_reg_3859_pp0_iter3_reg <= weights3_5_addr_20_reg_3859_pp0_iter2_reg;
        weights3_5_addr_20_reg_3859_pp0_iter4_reg <= weights3_5_addr_20_reg_3859_pp0_iter3_reg;
        weights3_5_addr_20_reg_3859_pp0_iter5_reg <= weights3_5_addr_20_reg_3859_pp0_iter4_reg;
        weights3_5_addr_21_reg_3902 <= lshr_ln194_35_cast_fu_2235_p1;
        weights3_5_addr_21_reg_3902_pp0_iter1_reg <= weights3_5_addr_21_reg_3902;
        weights3_5_addr_21_reg_3902_pp0_iter2_reg <= weights3_5_addr_21_reg_3902_pp0_iter1_reg;
        weights3_5_addr_21_reg_3902_pp0_iter3_reg <= weights3_5_addr_21_reg_3902_pp0_iter2_reg;
        weights3_5_addr_21_reg_3902_pp0_iter4_reg <= weights3_5_addr_21_reg_3902_pp0_iter3_reg;
        weights3_5_addr_21_reg_3902_pp0_iter5_reg <= weights3_5_addr_21_reg_3902_pp0_iter4_reg;
        weights3_6_addr_20_reg_3864 <= zext_ln194_13_fu_2172_p1;
        weights3_6_addr_20_reg_3864_pp0_iter1_reg <= weights3_6_addr_20_reg_3864;
        weights3_6_addr_20_reg_3864_pp0_iter2_reg <= weights3_6_addr_20_reg_3864_pp0_iter1_reg;
        weights3_6_addr_20_reg_3864_pp0_iter3_reg <= weights3_6_addr_20_reg_3864_pp0_iter2_reg;
        weights3_6_addr_20_reg_3864_pp0_iter4_reg <= weights3_6_addr_20_reg_3864_pp0_iter3_reg;
        weights3_6_addr_20_reg_3864_pp0_iter5_reg <= weights3_6_addr_20_reg_3864_pp0_iter4_reg;
        weights3_6_addr_21_reg_3907 <= lshr_ln194_35_cast_fu_2235_p1;
        weights3_6_addr_21_reg_3907_pp0_iter1_reg <= weights3_6_addr_21_reg_3907;
        weights3_6_addr_21_reg_3907_pp0_iter2_reg <= weights3_6_addr_21_reg_3907_pp0_iter1_reg;
        weights3_6_addr_21_reg_3907_pp0_iter3_reg <= weights3_6_addr_21_reg_3907_pp0_iter2_reg;
        weights3_6_addr_21_reg_3907_pp0_iter4_reg <= weights3_6_addr_21_reg_3907_pp0_iter3_reg;
        weights3_6_addr_21_reg_3907_pp0_iter5_reg <= weights3_6_addr_21_reg_3907_pp0_iter4_reg;
        weights3_7_addr_20_reg_3869 <= zext_ln194_13_fu_2172_p1;
        weights3_7_addr_20_reg_3869_pp0_iter1_reg <= weights3_7_addr_20_reg_3869;
        weights3_7_addr_20_reg_3869_pp0_iter2_reg <= weights3_7_addr_20_reg_3869_pp0_iter1_reg;
        weights3_7_addr_20_reg_3869_pp0_iter3_reg <= weights3_7_addr_20_reg_3869_pp0_iter2_reg;
        weights3_7_addr_20_reg_3869_pp0_iter4_reg <= weights3_7_addr_20_reg_3869_pp0_iter3_reg;
        weights3_7_addr_20_reg_3869_pp0_iter5_reg <= weights3_7_addr_20_reg_3869_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_load_16_reg_3536 <= weights3_0_q0;
        weights3_1_load_16_reg_3541 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_load_18_reg_3676 <= weights3_0_q0;
        weights3_1_load_18_reg_3681 <= weights3_1_q0;
        weights3_2_load_18_reg_3686 <= weights3_2_q0;
        weights3_3_load_17_reg_3651 <= weights3_3_q0;
        weights3_4_load_17_reg_3656 <= weights3_4_q0;
        weights3_5_load_17_reg_3661 <= weights3_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_load_19_reg_3809 <= weights3_0_q1;
        weights3_0_load_20_reg_3834 <= weights3_0_q0;
        weights3_1_load_19_reg_3814 <= weights3_1_q1;
        weights3_1_load_20_reg_3839 <= weights3_1_q0;
        weights3_2_load_19_reg_3819 <= weights3_2_q1;
        weights3_2_load_20_reg_3844 <= weights3_2_q0;
        weights3_3_load_19_reg_3824 <= weights3_3_q0;
        weights3_4_load_19_reg_3829 <= weights3_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_load_22_reg_4009 <= weights3_0_q0;
        weights3_1_load_22_reg_4014 <= weights3_1_q0;
        weights3_2_load_22_reg_4019 <= weights3_2_q0;
        weights3_3_load_21_reg_3989 <= weights3_3_q0;
        weights3_4_load_21_reg_3994 <= weights3_4_q0;
        weights3_5_load_21_reg_3999 <= weights3_5_q0;
        weights3_6_load_20_reg_3979 <= weights3_6_q0;
        weights3_7_load_20_reg_3984 <= weights3_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_5_addr_22_reg_4024 <= zext_ln194_16_fu_2379_p1;
        weights3_5_addr_22_reg_4024_pp0_iter1_reg <= weights3_5_addr_22_reg_4024;
        weights3_5_addr_22_reg_4024_pp0_iter2_reg <= weights3_5_addr_22_reg_4024_pp0_iter1_reg;
        weights3_5_addr_22_reg_4024_pp0_iter3_reg <= weights3_5_addr_22_reg_4024_pp0_iter2_reg;
        weights3_5_addr_22_reg_4024_pp0_iter4_reg <= weights3_5_addr_22_reg_4024_pp0_iter3_reg;
        weights3_5_addr_22_reg_4024_pp0_iter5_reg <= weights3_5_addr_22_reg_4024_pp0_iter4_reg;
        weights3_6_addr_22_reg_4030 <= zext_ln194_16_fu_2379_p1;
        weights3_6_addr_22_reg_4030_pp0_iter1_reg <= weights3_6_addr_22_reg_4030;
        weights3_6_addr_22_reg_4030_pp0_iter2_reg <= weights3_6_addr_22_reg_4030_pp0_iter1_reg;
        weights3_6_addr_22_reg_4030_pp0_iter3_reg <= weights3_6_addr_22_reg_4030_pp0_iter2_reg;
        weights3_6_addr_22_reg_4030_pp0_iter4_reg <= weights3_6_addr_22_reg_4030_pp0_iter3_reg;
        weights3_6_addr_22_reg_4030_pp0_iter5_reg <= weights3_6_addr_22_reg_4030_pp0_iter4_reg;
        weights3_7_addr_21_reg_4004 <= zext_ln194_14_fu_2359_p1;
        weights3_7_addr_21_reg_4004_pp0_iter1_reg <= weights3_7_addr_21_reg_4004;
        weights3_7_addr_21_reg_4004_pp0_iter2_reg <= weights3_7_addr_21_reg_4004_pp0_iter1_reg;
        weights3_7_addr_21_reg_4004_pp0_iter3_reg <= weights3_7_addr_21_reg_4004_pp0_iter2_reg;
        weights3_7_addr_21_reg_4004_pp0_iter4_reg <= weights3_7_addr_21_reg_4004_pp0_iter3_reg;
        weights3_7_addr_21_reg_4004_pp0_iter5_reg <= weights3_7_addr_21_reg_4004_pp0_iter4_reg;
        weights3_7_addr_22_reg_4035 <= zext_ln194_16_fu_2379_p1;
        weights3_7_addr_22_reg_4035_pp0_iter1_reg <= weights3_7_addr_22_reg_4035;
        weights3_7_addr_22_reg_4035_pp0_iter2_reg <= weights3_7_addr_22_reg_4035_pp0_iter1_reg;
        weights3_7_addr_22_reg_4035_pp0_iter3_reg <= weights3_7_addr_22_reg_4035_pp0_iter2_reg;
        weights3_7_addr_22_reg_4035_pp0_iter4_reg <= weights3_7_addr_22_reg_4035_pp0_iter3_reg;
        weights3_7_addr_22_reg_4035_pp0_iter5_reg <= weights3_7_addr_22_reg_4035_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_6_load_22_reg_4080 <= weights3_6_q0;
        weights3_7_load_22_reg_4085 <= weights3_7_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_3165 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (tmp_reg_3165_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter5_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_166;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1005_p0 = bitcast_ln194_88_fu_2655_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1005_p0 = bitcast_ln194_80_fu_2618_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1005_p0 = bitcast_ln194_72_fu_2573_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1005_p0 = bitcast_ln194_64_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1005_p0 = bitcast_ln194_56_fu_2501_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1005_p0 = bitcast_ln194_48_fu_2464_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1005_p0 = bitcast_ln194_40_fu_2426_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1005_p0 = bitcast_ln194_32_fu_2386_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1005_p0 = bitcast_ln194_21_fu_2304_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1005_p0 = bitcast_ln194_13_fu_2095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1005_p0 = bitcast_ln194_6_fu_1896_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1005_p0 = bitcast_ln194_fu_1565_p1;
    end else begin
        grp_fu_1005_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1009_p0 = bitcast_ln194_89_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1009_p0 = bitcast_ln194_81_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1009_p0 = bitcast_ln194_73_fu_2577_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1009_p0 = bitcast_ln194_65_fu_2542_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1009_p0 = bitcast_ln194_57_fu_2505_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1009_p0 = bitcast_ln194_49_fu_2469_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1009_p0 = bitcast_ln194_41_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1009_p0 = bitcast_ln194_33_fu_2391_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1009_p0 = bitcast_ln194_22_fu_2309_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1009_p0 = bitcast_ln194_14_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1009_p0 = bitcast_ln194_7_fu_1901_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1009_p0 = bitcast_ln194_1_fu_1739_p1;
    end else begin
        grp_fu_1009_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1013_p0 = bitcast_ln194_90_fu_2663_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1013_p0 = bitcast_ln194_82_fu_2628_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1013_p0 = bitcast_ln194_74_fu_2581_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1013_p0 = bitcast_ln194_66_fu_2546_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1013_p0 = bitcast_ln194_58_fu_2509_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1013_p0 = bitcast_ln194_50_fu_2474_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1013_p0 = bitcast_ln194_42_fu_2434_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1013_p0 = bitcast_ln194_34_fu_2396_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1013_p0 = bitcast_ln194_23_fu_2314_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1013_p0 = bitcast_ln194_15_fu_2105_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1013_p0 = bitcast_ln194_8_fu_1906_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1013_p0 = bitcast_ln194_2_fu_1744_p1;
    end else begin
        grp_fu_1013_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1017_p0 = bitcast_ln194_91_fu_2667_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1017_p0 = bitcast_ln194_83_fu_2633_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1017_p0 = bitcast_ln194_75_fu_2585_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1017_p0 = bitcast_ln194_67_fu_2550_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1017_p0 = bitcast_ln194_59_fu_2513_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1017_p0 = bitcast_ln194_51_fu_2479_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1017_p0 = bitcast_ln194_43_fu_2439_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1017_p0 = bitcast_ln194_35_fu_2401_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1017_p0 = bitcast_ln194_27_fu_2319_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1017_p0 = bitcast_ln194_16_fu_2110_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1017_p0 = bitcast_ln194_9_fu_1911_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1017_p0 = bitcast_ln194_3_fu_1749_p1;
    end else begin
        grp_fu_1017_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1021_p0 = bitcast_ln194_92_fu_2672_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1021_p0 = bitcast_ln194_84_fu_2637_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1021_p0 = bitcast_ln194_76_fu_2590_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1021_p0 = bitcast_ln194_68_fu_2554_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1021_p0 = bitcast_ln194_60_fu_2518_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1021_p0 = bitcast_ln194_52_fu_2483_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1021_p0 = bitcast_ln194_44_fu_2444_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1021_p0 = bitcast_ln194_36_fu_2406_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1021_p0 = bitcast_ln194_28_fu_2324_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1021_p0 = bitcast_ln194_17_fu_2115_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1021_p0 = bitcast_ln194_10_fu_1916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1021_p0 = bitcast_ln194_4_fu_1754_p1;
    end else begin
        grp_fu_1021_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1025_p0 = bitcast_ln194_93_fu_2677_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1025_p0 = bitcast_ln194_85_fu_2641_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1025_p0 = bitcast_ln194_77_fu_2595_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1025_p0 = bitcast_ln194_69_fu_2558_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1025_p0 = bitcast_ln194_61_fu_2523_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1025_p0 = bitcast_ln194_53_fu_2487_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1025_p0 = bitcast_ln194_45_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1025_p0 = bitcast_ln194_37_fu_2411_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1025_p0 = bitcast_ln194_29_fu_2329_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1025_p0 = bitcast_ln194_18_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1025_p0 = bitcast_ln194_11_fu_1921_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1025_p0 = bitcast_ln194_5_fu_1759_p1;
    end else begin
        grp_fu_1025_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1029_p0 = bitcast_ln194_94_fu_2682_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1029_p0 = bitcast_ln194_86_fu_2645_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1029_p0 = bitcast_ln194_78_fu_2600_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1029_p0 = bitcast_ln194_70_fu_2563_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1029_p0 = bitcast_ln194_62_fu_2528_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1029_p0 = bitcast_ln194_54_fu_2491_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1029_p0 = bitcast_ln194_46_fu_2454_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1029_p0 = bitcast_ln194_38_fu_2416_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1029_p0 = bitcast_ln194_30_fu_2334_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1029_p0 = bitcast_ln194_19_fu_2125_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1029_p0 = bitcast_ln194_12_fu_1926_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1029_p0 = bitcast_ln194_24_fu_1764_p1;
    end else begin
        grp_fu_1029_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1033_p0 = bitcast_ln194_95_fu_2686_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1033_p0 = bitcast_ln194_87_fu_2650_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1033_p0 = bitcast_ln194_79_fu_2604_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1033_p0 = bitcast_ln194_71_fu_2568_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1033_p0 = bitcast_ln194_63_fu_2533_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1033_p0 = bitcast_ln194_55_fu_2496_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1033_p0 = bitcast_ln194_47_fu_2459_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1033_p0 = bitcast_ln194_39_fu_2421_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1033_p0 = bitcast_ln194_31_fu_2339_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1033_p0 = bitcast_ln194_20_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1033_p0 = bitcast_ln194_26_fu_1931_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1033_p0 = bitcast_ln194_25_fu_1769_p1;
    end else begin
        grp_fu_1033_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address0_local = weights3_0_addr_22_reg_3912_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address0_local = weights3_0_addr_21_reg_3874_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address0_local = weights3_0_addr_18_reg_3591_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address0_local = weights3_0_addr_16_reg_3461_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address0_local = weights3_0_addr_14_reg_3250_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address0_local = weights3_0_addr_12_reg_3275_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address0_local = zext_ln194_15_fu_2257_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = add_ln194_10_cast_fu_2088_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address0_local = lshr_ln194_23_cast_fu_1869_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = zext_ln194_7_fu_1692_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = zext_ln194_3_fu_1496_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = or_ln194_cast_fu_1369_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address1_local = weights3_0_addr_20_reg_3751_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address1_local = weights3_0_addr_19_reg_3711_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address1_local = weights3_0_addr_17_reg_3561_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address1_local = weights3_0_addr_15_reg_3426_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address1_local = weights3_0_addr_13_reg_3318_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address1_local = weights3_0_addr_reg_3169_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address1_local = lshr_ln194_33_cast_fu_2193_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address1_local = zext_ln194_11_fu_2014_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address1_local = add_ln194_6_cast_fu_1825_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = lshr_ln194_13_cast_fu_1628_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = lshr_ln194_3_cast_fu_1412_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_1291_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_d0_local = bitcast_ln194_107_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_d0_local = bitcast_ln194_106_fu_3019_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_d0_local = bitcast_ln194_103_fu_2883_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_d0_local = bitcast_ln194_101_fu_2818_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_d0_local = bitcast_ln194_99_fu_2740_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_d0_local = bitcast_ln194_97_fu_2695_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_0_d1_local = bitcast_ln194_105_fu_3014_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_0_d1_local = bitcast_ln194_104_fu_2951_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_0_d1_local = bitcast_ln194_102_fu_2878_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_0_d1_local = bitcast_ln194_100_fu_2814_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_0_d1_local = bitcast_ln194_98_fu_2735_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_0_d1_local = bitcast_ln194_96_fu_2690_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address0_local = weights3_1_addr_22_reg_3917_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address0_local = weights3_1_addr_21_reg_3880_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address0_local = weights3_1_addr_18_reg_3596_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address0_local = weights3_1_addr_16_reg_3466_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address0_local = weights3_1_addr_14_reg_3255_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address0_local = weights3_1_addr_12_reg_3281_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address0_local = lshr_ln194_38_cast_fu_2277_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = add_ln194_10_cast_fu_2088_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address0_local = lshr_ln194_24_cast_fu_1889_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = lshr_ln194_18_cast_fu_1712_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = lshr_ln194_8_cast_fu_1516_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = or_ln194_cast_fu_1369_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address1_local = weights3_1_addr_20_reg_3757_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address1_local = weights3_1_addr_19_reg_3716_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address1_local = weights3_1_addr_17_reg_3566_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address1_local = weights3_1_addr_15_reg_3431_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address1_local = weights3_1_addr_13_reg_3324_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address1_local = weights3_1_addr_reg_3222_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address1_local = lshr_ln194_34_cast_fu_2213_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address1_local = lshr_ln194_28_cast_fu_2034_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address1_local = add_ln194_6_cast_fu_1825_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = lshr_ln194_14_cast_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = lshr_ln194_4_cast_fu_1432_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_1291_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_d0_local = bitcast_ln194_119_fu_3133_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_d0_local = bitcast_ln194_118_fu_3029_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_d0_local = bitcast_ln194_115_fu_2893_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_d0_local = bitcast_ln194_113_fu_2826_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_d0_local = bitcast_ln194_111_fu_2750_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_d0_local = bitcast_ln194_109_fu_2705_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_1_d1_local = bitcast_ln194_117_fu_3024_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_1_d1_local = bitcast_ln194_116_fu_2956_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_1_d1_local = bitcast_ln194_114_fu_2888_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_1_d1_local = bitcast_ln194_112_fu_2822_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_1_d1_local = bitcast_ln194_110_fu_2745_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_1_d1_local = bitcast_ln194_108_fu_2700_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_2_address0_local = weights3_2_addr_22_reg_3922_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_2_address0_local = weights3_2_addr_21_reg_3886_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_2_address0_local = weights3_2_addr_18_reg_3601_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_2_address0_local = weights3_2_addr_16_reg_3471_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_2_address0_local = weights3_2_addr_14_reg_3260_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_2_address0_local = weights3_2_addr_12_reg_3287_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_address0_local = lshr_ln194_39_cast_fu_2297_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address0_local = add_ln194_10_cast_fu_2088_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_address0_local = lshr_ln194_24_cast_fu_1889_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address0_local = lshr_ln194_19_cast_fu_1732_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = lshr_ln194_9_cast_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address0_local = or_ln194_cast_fu_1369_p1;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_2_address1_local = weights3_2_addr_20_reg_3763_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_2_address1_local = weights3_2_addr_19_reg_3721_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_2_address1_local = weights3_2_addr_17_reg_3571_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_2_address1_local = weights3_2_addr_15_reg_3436_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_2_address1_local = weights3_2_addr_13_reg_3330_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_2_address1_local = weights3_2_addr_reg_3227_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_address1_local = lshr_ln194_34_cast_fu_2213_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address1_local = lshr_ln194_29_cast_fu_2054_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_address1_local = add_ln194_6_cast_fu_1825_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address1_local = lshr_ln194_14_cast_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address1_local = lshr_ln194_4_cast_fu_1432_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address1_local = zext_ln194_fu_1291_p1;
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_2_d0_local = bitcast_ln194_131_fu_3137_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_2_d0_local = bitcast_ln194_130_fu_3039_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_2_d0_local = bitcast_ln194_127_fu_2903_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_2_d0_local = bitcast_ln194_125_fu_2834_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_2_d0_local = bitcast_ln194_123_fu_2760_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_2_d0_local = bitcast_ln194_121_fu_2715_p1;
    end else begin
        weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_2_d1_local = bitcast_ln194_129_fu_3034_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_2_d1_local = bitcast_ln194_128_fu_2961_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_2_d1_local = bitcast_ln194_126_fu_2898_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_2_d1_local = bitcast_ln194_124_fu_2830_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_2_d1_local = bitcast_ln194_122_fu_2755_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_2_d1_local = bitcast_ln194_120_fu_2710_p1;
        end else begin
            weights3_2_d1_local = 'bx;
        end
    end else begin
        weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address0_local = weights3_3_addr_22_reg_3927_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_address0_local = weights3_3_addr_21_reg_3892_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_address0_local = weights3_3_addr_19_reg_3726_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_address0_local = weights3_3_addr_17_reg_3576_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_address0_local = weights3_3_addr_15_reg_3441_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_address0_local = weights3_3_addr_13_reg_3336_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_address0_local = weights3_3_addr_reg_3232_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address0_local = lshr_ln194_34_cast_fu_2213_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address0_local = lshr_ln194_29_cast_fu_2054_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address0_local = lshr_ln194_21_cast_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = lshr_ln194_14_cast_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = lshr_ln194_9_cast_fu_1536_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_address1_local = weights3_3_addr_20_reg_3849_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_address1_local = weights3_3_addr_18_reg_3606_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_address1_local = weights3_3_addr_16_reg_3476_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_address1_local = weights3_3_addr_14_reg_3401_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_address1_local = weights3_3_addr_12_reg_3293_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_address1_local = weights3_3_addr_22_reg_3927;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address1_local = lshr_ln194_31_cast_fu_2150_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address1_local = weights3_3_addr_18_reg_3606;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address1_local = weights3_3_addr_16_reg_3476;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address1_local = lshr_ln194_11_cast_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address1_local = lshr_ln194_4_cast_fu_1432_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address1_local = lshr_ln194_1_cast_fu_1344_p1;
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_d0_local = bitcast_ln194_143_fu_3094_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_d0_local = bitcast_ln194_142_fu_3049_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_d0_local = bitcast_ln194_140_fu_2971_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_d0_local = bitcast_ln194_138_fu_2912_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_d0_local = bitcast_ln194_136_fu_2842_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_d0_local = bitcast_ln194_134_fu_2770_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_d0_local = bitcast_ln194_132_fu_2720_p1;
    end else begin
        weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_3_d1_local = bitcast_ln194_141_fu_3044_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_3_d1_local = bitcast_ln194_139_fu_2966_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_3_d1_local = bitcast_ln194_137_fu_2908_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_3_d1_local = bitcast_ln194_135_fu_2838_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_3_d1_local = bitcast_ln194_133_fu_2765_p1;
        end else begin
            weights3_3_d1_local = 'bx;
        end
    end else begin
        weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_4_address0_local = weights3_4_addr_22_reg_3933_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_4_address0_local = weights3_4_addr_21_reg_3897_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_4_address0_local = weights3_4_addr_19_reg_3731_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_4_address0_local = weights3_4_addr_17_reg_3581_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_4_address0_local = weights3_4_addr_15_reg_3446_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_4_address0_local = weights3_4_addr_13_reg_3341_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_4_address0_local = weights3_4_addr_reg_3238_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_4_address0_local = lshr_ln194_35_cast_fu_2235_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_4_address0_local = lshr_ln194_29_cast_fu_2054_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_4_address0_local = lshr_ln194_21_cast_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_4_address0_local = lshr_ln194_15_cast_fu_1670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_4_address0_local = lshr_ln194_9_cast_fu_1536_p1;
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_4_address1_local = weights3_4_addr_20_reg_3854_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_4_address1_local = weights3_4_addr_18_reg_3691_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_4_address1_local = weights3_4_addr_16_reg_3481_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_4_address1_local = weights3_4_addr_14_reg_3406_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_4_address1_local = weights3_4_addr_12_reg_3298_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_4_address1_local = weights3_4_addr_22_reg_3933;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_4_address1_local = lshr_ln194_31_cast_fu_2150_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_4_address1_local = lshr_ln194_25_cast_fu_1972_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_4_address1_local = weights3_4_addr_16_reg_3481;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_4_address1_local = lshr_ln194_11_cast_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_4_address1_local = lshr_ln194_5_cast_fu_1454_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_4_address1_local = lshr_ln194_1_cast_fu_1344_p1;
    end else begin
        weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce1_local = 1'b1;
    end else begin
        weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_4_d0_local = bitcast_ln194_155_fu_3099_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_4_d0_local = bitcast_ln194_154_fu_3059_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_4_d0_local = bitcast_ln194_152_fu_2981_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_4_d0_local = bitcast_ln194_150_fu_2921_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_4_d0_local = bitcast_ln194_148_fu_2850_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_4_d0_local = bitcast_ln194_146_fu_2780_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_4_d0_local = bitcast_ln194_144_fu_2725_p1;
    end else begin
        weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_4_d1_local = bitcast_ln194_153_fu_3054_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_4_d1_local = bitcast_ln194_151_fu_2976_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_4_d1_local = bitcast_ln194_149_fu_2917_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_4_d1_local = bitcast_ln194_147_fu_2846_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_4_d1_local = bitcast_ln194_145_fu_2775_p1;
        end else begin
            weights3_4_d1_local = 'bx;
        end
    end else begin
        weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_4_we0_local = 1'b1;
    end else begin
        weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        weights3_4_we1_local = 1'b1;
    end else begin
        weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_5_address0_local = weights3_5_addr_22_reg_4024_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_5_address0_local = weights3_5_addr_21_reg_3902_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_5_address0_local = weights3_5_addr_19_reg_3736_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_5_address0_local = weights3_5_addr_17_reg_3586_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_5_address0_local = weights3_5_addr_15_reg_3451_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_5_address0_local = weights3_5_addr_13_reg_3346_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_5_address0_local = weights3_5_addr_reg_3244_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_5_address0_local = lshr_ln194_35_cast_fu_2235_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_5_address0_local = zext_ln194_12_fu_2076_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_5_address0_local = lshr_ln194_21_cast_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_5_address0_local = lshr_ln194_15_cast_fu_1670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_5_address0_local = zext_ln194_4_fu_1558_p1;
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_5_address1_local = weights3_5_addr_20_reg_3859_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_5_address1_local = weights3_5_addr_18_reg_3696_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_5_address1_local = weights3_5_addr_16_reg_3546_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_5_address1_local = weights3_5_addr_14_reg_3411_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_5_address1_local = weights3_5_addr_12_reg_3303_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_5_address1_local = zext_ln194_16_fu_2379_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_5_address1_local = lshr_ln194_31_cast_fu_2150_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_5_address1_local = lshr_ln194_25_cast_fu_1972_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_5_address1_local = zext_ln194_8_fu_1812_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_5_address1_local = lshr_ln194_11_cast_fu_1585_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_5_address1_local = lshr_ln194_5_cast_fu_1454_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_5_address1_local = lshr_ln194_1_cast_fu_1344_p1;
    end else begin
        weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce1_local = 1'b1;
    end else begin
        weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_5_d0_local = bitcast_ln194_167_fu_3104_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_5_d0_local = bitcast_ln194_166_fu_3069_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_5_d0_local = bitcast_ln194_164_fu_2991_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_5_d0_local = bitcast_ln194_162_fu_2930_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_5_d0_local = bitcast_ln194_160_fu_2858_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_5_d0_local = bitcast_ln194_158_fu_2790_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_5_d0_local = bitcast_ln194_156_fu_2730_p1;
    end else begin
        weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_5_d1_local = bitcast_ln194_165_fu_3064_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_5_d1_local = bitcast_ln194_163_fu_2986_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_5_d1_local = bitcast_ln194_161_fu_2926_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_5_d1_local = bitcast_ln194_159_fu_2854_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_5_d1_local = bitcast_ln194_157_fu_2785_p1;
        end else begin
            weights3_5_d1_local = 'bx;
        end
    end else begin
        weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_5_we0_local = 1'b1;
    end else begin
        weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        weights3_5_we1_local = 1'b1;
    end else begin
        weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_address0_local = weights3_6_addr_22_reg_4030_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_6_address0_local = weights3_6_addr_20_reg_3864_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_6_address0_local = weights3_6_addr_18_reg_3701_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_6_address0_local = weights3_6_addr_16_reg_3551_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_6_address0_local = weights3_6_addr_14_reg_3416_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_6_address0_local = weights3_6_addr_12_reg_3308_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_6_address0_local = zext_ln194_16_fu_2379_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_6_address0_local = zext_ln194_13_fu_2172_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_6_address0_local = lshr_ln194_25_cast_fu_1972_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_6_address0_local = zext_ln194_8_fu_1812_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_6_address0_local = zext_ln194_5_fu_1607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_address0_local = lshr_ln194_5_cast_fu_1454_p1;
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_address1_local = weights3_6_addr_21_reg_3907_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_6_address1_local = weights3_6_addr_19_reg_3741_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_6_address1_local = weights3_6_addr_17_reg_3666_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_6_address1_local = weights3_6_addr_15_reg_3456_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_6_address1_local = weights3_6_addr_13_reg_3351_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_6_address1_local = weights3_6_addr_reg_3265_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_6_address1_local = weights3_6_addr_21_reg_3907;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_6_address1_local = weights3_6_addr_19_reg_3741;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_6_address1_local = zext_ln194_9_fu_1951_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_6_address1_local = weights3_6_addr_15_reg_3456;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_6_address1_local = weights3_6_addr_13_reg_3351;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_address1_local = zext_ln194_1_fu_1391_p1;
    end else begin
        weights3_6_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce1_local = 1'b1;
    end else begin
        weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_d0_local = bitcast_ln194_179_fu_3114_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_6_d0_local = bitcast_ln194_177_fu_3079_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_6_d0_local = bitcast_ln194_175_fu_3000_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_6_d0_local = bitcast_ln194_173_fu_2939_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_6_d0_local = bitcast_ln194_171_fu_2866_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_6_d0_local = bitcast_ln194_169_fu_2799_p1;
    end else begin
        weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_d1_local = bitcast_ln194_178_fu_3109_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_6_d1_local = bitcast_ln194_176_fu_3074_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_6_d1_local = bitcast_ln194_174_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_6_d1_local = bitcast_ln194_172_fu_2935_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_6_d1_local = bitcast_ln194_170_fu_2862_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_6_d1_local = bitcast_ln194_168_fu_2794_p1;
    end else begin
        weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        weights3_6_we0_local = 1'b1;
    end else begin
        weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        weights3_6_we1_local = 1'b1;
    end else begin
        weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_address0_local = weights3_7_addr_22_reg_4035_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_7_address0_local = weights3_7_addr_20_reg_3869_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_7_address0_local = weights3_7_addr_18_reg_3706_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_7_address0_local = weights3_7_addr_16_reg_3556_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_7_address0_local = weights3_7_addr_14_reg_3421_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_7_address0_local = weights3_7_addr_12_reg_3313_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_7_address0_local = zext_ln194_16_fu_2379_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_7_address0_local = zext_ln194_13_fu_2172_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_7_address0_local = zext_ln194_10_fu_1994_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_7_address0_local = zext_ln194_8_fu_1812_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_7_address0_local = zext_ln194_5_fu_1607_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_address0_local = zext_ln194_2_fu_1476_p1;
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_address1_local = weights3_7_addr_21_reg_4004_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_7_address1_local = weights3_7_addr_19_reg_3746_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_7_address1_local = weights3_7_addr_17_reg_3671_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_7_address1_local = weights3_7_addr_15_reg_3531_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_7_address1_local = weights3_7_addr_13_reg_3356_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_7_address1_local = weights3_7_addr_reg_3270_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_7_address1_local = zext_ln194_14_fu_2359_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_7_address1_local = weights3_7_addr_19_reg_3746;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_7_address1_local = zext_ln194_9_fu_1951_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_7_address1_local = zext_ln194_6_fu_1792_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_7_address1_local = weights3_7_addr_13_reg_3356;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_address1_local = zext_ln194_1_fu_1391_p1;
    end else begin
        weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce1_local = 1'b1;
    end else begin
        weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_d0_local = bitcast_ln194_191_fu_3124_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_7_d0_local = bitcast_ln194_189_fu_3089_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_7_d0_local = bitcast_ln194_187_fu_3009_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_7_d0_local = bitcast_ln194_185_fu_2947_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_7_d0_local = bitcast_ln194_183_fu_2874_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_7_d0_local = bitcast_ln194_181_fu_2809_p1;
    end else begin
        weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_d1_local = bitcast_ln194_190_fu_3119_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_7_d1_local = bitcast_ln194_188_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_7_d1_local = bitcast_ln194_186_fu_3005_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_7_d1_local = bitcast_ln194_184_fu_2943_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_7_d1_local = bitcast_ln194_182_fu_2870_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_7_d1_local = bitcast_ln194_180_fu_2804_p1;
    end else begin
        weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        weights3_7_we0_local = 1'b1;
    end else begin
        weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        weights3_7_we1_local = 1'b1;
    end else begin
        weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage10))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_2608_p2 = (i_4_reg_3160 + 7'd32);
assign add_ln194_10_cast_fu_2088_p1 = add_ln194_10_fu_2083_p2;
assign add_ln194_10_fu_2083_p2 = (or_ln194_cast154_reg_3486 + 5'd6);
assign add_ln194_11_fu_2178_p2 = (empty_reg_3174 + 8'd77);
assign add_ln194_12_fu_2242_p2 = (empty_reg_3174 + 8'd85);
assign add_ln194_13_fu_2262_p2 = (empty_reg_3174 + 8'd86);
assign add_ln194_1_fu_1481_p2 = (empty_reg_3174 + 8'd13);
assign add_ln194_2_fu_1501_p2 = (empty_reg_3174 + 8'd14);
assign add_ln194_3_fu_1613_p2 = (empty_reg_3174 + 8'd29);
assign add_ln194_4_fu_1677_p2 = (empty_reg_3174 + 8'd37);
assign add_ln194_5_fu_1697_p2 = (empty_reg_3174 + 8'd38);
assign add_ln194_6_cast_fu_1825_p1 = add_ln194_6_fu_1819_p2;
assign add_ln194_6_fu_1819_p2 = (or_ln194_cast154_fu_1774_p1 + 5'd3);
assign add_ln194_7_fu_1854_p2 = (empty_reg_3174 + 8'd53);
assign add_ln194_8_fu_1999_p2 = (empty_reg_3174 + 8'd61);
assign add_ln194_9_fu_2019_p2 = (empty_reg_3174 + 8'd62);
assign add_ln194_fu_1397_p2 = (empty_reg_3174 + 8'd5);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_100_fu_2814_p1 = div213_10_2_reg_4370;
assign bitcast_ln194_101_fu_2818_p1 = div213_13_1_reg_4410;
assign bitcast_ln194_102_fu_2878_p1 = reg_1151;
assign bitcast_ln194_103_fu_2883_p1 = reg_1183;
assign bitcast_ln194_104_fu_2951_p1 = reg_1215;
assign bitcast_ln194_105_fu_3014_p1 = reg_1151;
assign bitcast_ln194_106_fu_3019_p1 = reg_1183;
assign bitcast_ln194_107_fu_3129_p1 = div213_29_1_reg_4460;
assign bitcast_ln194_108_fu_2700_p1 = reg_1155;
assign bitcast_ln194_109_fu_2705_p1 = reg_1195;
assign bitcast_ln194_10_fu_1916_p1 = reg_1045;
assign bitcast_ln194_110_fu_2745_p1 = reg_1231;
assign bitcast_ln194_111_fu_2750_p1 = reg_1179;
assign bitcast_ln194_112_fu_2822_p1 = div213_11_reg_4375;
assign bitcast_ln194_113_fu_2826_p1 = div213_13_2_reg_4415;
assign bitcast_ln194_114_fu_2888_p1 = reg_1155;
assign bitcast_ln194_115_fu_2893_p1 = reg_1187;
assign bitcast_ln194_116_fu_2956_p1 = reg_1219;
assign bitcast_ln194_117_fu_3024_p1 = reg_1155;
assign bitcast_ln194_118_fu_3029_p1 = reg_1187;
assign bitcast_ln194_119_fu_3133_p1 = div213_29_2_reg_4465;
assign bitcast_ln194_11_fu_1921_p1 = reg_1049;
assign bitcast_ln194_120_fu_2710_p1 = reg_1159;
assign bitcast_ln194_121_fu_2715_p1 = reg_1199;
assign bitcast_ln194_122_fu_2755_p1 = reg_1235;
assign bitcast_ln194_123_fu_2760_p1 = reg_1211;
assign bitcast_ln194_124_fu_2830_p1 = div213_11_1_reg_4380;
assign bitcast_ln194_125_fu_2834_p1 = div213_14_reg_4420;
assign bitcast_ln194_126_fu_2898_p1 = reg_1159;
assign bitcast_ln194_127_fu_2903_p1 = reg_1191;
assign bitcast_ln194_128_fu_2961_p1 = reg_1223;
assign bitcast_ln194_129_fu_3034_p1 = reg_1159;
assign bitcast_ln194_12_fu_1926_p1 = reg_1053;
assign bitcast_ln194_130_fu_3039_p1 = reg_1191;
assign bitcast_ln194_131_fu_3137_p1 = div213_30_reg_4470;
assign bitcast_ln194_132_fu_2720_p1 = reg_1163;
assign bitcast_ln194_133_fu_2765_p1 = reg_1203;
assign bitcast_ln194_134_fu_2770_p1 = reg_1239;
assign bitcast_ln194_135_fu_2838_p1 = div213_9_reg_4345;
assign bitcast_ln194_136_fu_2842_p1 = div213_11_2_reg_4385;
assign bitcast_ln194_137_fu_2908_p1 = div213_14_1_reg_4425;
assign bitcast_ln194_138_fu_2912_p1 = reg_1163;
assign bitcast_ln194_139_fu_2966_p1 = reg_1195;
assign bitcast_ln194_13_fu_2095_p1 = reg_1057;
assign bitcast_ln194_140_fu_2971_p1 = reg_1227;
assign bitcast_ln194_141_fu_3044_p1 = reg_1163;
assign bitcast_ln194_142_fu_3049_p1 = reg_1195;
assign bitcast_ln194_143_fu_3094_p1 = reg_1163;
assign bitcast_ln194_144_fu_2725_p1 = reg_1167;
assign bitcast_ln194_145_fu_2775_p1 = reg_1207;
assign bitcast_ln194_146_fu_2780_p1 = reg_1243;
assign bitcast_ln194_147_fu_2846_p1 = div213_9_1_reg_4350;
assign bitcast_ln194_148_fu_2850_p1 = div213_12_reg_4390;
assign bitcast_ln194_149_fu_2917_p1 = div213_14_2_reg_4430;
assign bitcast_ln194_14_fu_2100_p1 = reg_1083;
assign bitcast_ln194_150_fu_2921_p1 = reg_1167;
assign bitcast_ln194_151_fu_2976_p1 = reg_1199;
assign bitcast_ln194_152_fu_2981_p1 = reg_1231;
assign bitcast_ln194_153_fu_3054_p1 = reg_1167;
assign bitcast_ln194_154_fu_3059_p1 = reg_1199;
assign bitcast_ln194_155_fu_3099_p1 = reg_1167;
assign bitcast_ln194_156_fu_2730_p1 = reg_1171;
assign bitcast_ln194_157_fu_2785_p1 = reg_1215;
assign bitcast_ln194_158_fu_2790_p1 = div213_7_reg_4330;
assign bitcast_ln194_159_fu_2854_p1 = div213_9_2_reg_4355;
assign bitcast_ln194_15_fu_2105_p1 = reg_1088;
assign bitcast_ln194_160_fu_2858_p1 = div213_12_1_reg_4395;
assign bitcast_ln194_161_fu_2926_p1 = div213_15_reg_4435;
assign bitcast_ln194_162_fu_2930_p1 = reg_1171;
assign bitcast_ln194_163_fu_2986_p1 = reg_1203;
assign bitcast_ln194_164_fu_2991_p1 = reg_1235;
assign bitcast_ln194_165_fu_3064_p1 = reg_1171;
assign bitcast_ln194_166_fu_3069_p1 = reg_1203;
assign bitcast_ln194_167_fu_3104_p1 = reg_1171;
assign bitcast_ln194_168_fu_2794_p1 = reg_1183;
assign bitcast_ln194_169_fu_2799_p1 = reg_1219;
assign bitcast_ln194_16_fu_2110_p1 = reg_1061;
assign bitcast_ln194_170_fu_2862_p1 = div213_7_1_reg_4335;
assign bitcast_ln194_171_fu_2866_p1 = div213_10_reg_4360;
assign bitcast_ln194_172_fu_2935_p1 = div213_12_2_reg_4400;
assign bitcast_ln194_173_fu_2939_p1 = div213_15_1_reg_4440;
assign bitcast_ln194_174_fu_2996_p1 = div213_18_reg_4450;
assign bitcast_ln194_175_fu_3000_p1 = reg_1175;
assign bitcast_ln194_176_fu_3074_p1 = reg_1207;
assign bitcast_ln194_177_fu_3079_p1 = reg_1239;
assign bitcast_ln194_178_fu_3109_p1 = reg_1175;
assign bitcast_ln194_179_fu_3114_p1 = reg_1207;
assign bitcast_ln194_17_fu_2115_p1 = reg_1066;
assign bitcast_ln194_180_fu_2804_p1 = reg_1187;
assign bitcast_ln194_181_fu_2809_p1 = reg_1223;
assign bitcast_ln194_182_fu_2870_p1 = div213_7_2_reg_4340;
assign bitcast_ln194_183_fu_2874_p1 = div213_10_1_reg_4365;
assign bitcast_ln194_184_fu_2943_p1 = div213_13_reg_4405;
assign bitcast_ln194_185_fu_2947_p1 = div213_15_2_reg_4445;
assign bitcast_ln194_186_fu_3005_p1 = div213_18_1_reg_4455;
assign bitcast_ln194_187_fu_3009_p1 = reg_1179;
assign bitcast_ln194_188_fu_3084_p1 = reg_1211;
assign bitcast_ln194_189_fu_3089_p1 = reg_1243;
assign bitcast_ln194_18_fu_2120_p1 = reg_1093;
assign bitcast_ln194_190_fu_3119_p1 = reg_1179;
assign bitcast_ln194_191_fu_3124_p1 = reg_1211;
assign bitcast_ln194_19_fu_2125_p1 = reg_1098;
assign bitcast_ln194_1_fu_1739_p1 = reg_1041;
assign bitcast_ln194_20_fu_2130_p1 = reg_1103;
assign bitcast_ln194_21_fu_2304_p1 = reg_1108;
assign bitcast_ln194_22_fu_2309_p1 = reg_1075;
assign bitcast_ln194_23_fu_2314_p1 = reg_1079;
assign bitcast_ln194_24_fu_1764_p1 = reg_1061;
assign bitcast_ln194_25_fu_1769_p1 = reg_1066;
assign bitcast_ln194_26_fu_1931_p1 = reg_1071;
assign bitcast_ln194_27_fu_2319_p1 = reg_1049;
assign bitcast_ln194_28_fu_2324_p1 = reg_1053;
assign bitcast_ln194_29_fu_2329_p1 = reg_1113;
assign bitcast_ln194_2_fu_1744_p1 = reg_1045;
assign bitcast_ln194_30_fu_2334_p1 = reg_1118;
assign bitcast_ln194_31_fu_2339_p1 = reg_1122;
assign bitcast_ln194_32_fu_2386_p1 = reg_1037;
assign bitcast_ln194_33_fu_2391_p1 = reg_1041;
assign bitcast_ln194_34_fu_2396_p1 = reg_1045;
assign bitcast_ln194_35_fu_2401_p1 = reg_1126;
assign bitcast_ln194_36_fu_2406_p1 = reg_1131;
assign bitcast_ln194_37_fu_2411_p1 = reg_1136;
assign bitcast_ln194_38_fu_2416_p1 = reg_1083;
assign bitcast_ln194_39_fu_2421_p1 = reg_1088;
assign bitcast_ln194_3_fu_1749_p1 = reg_1049;
assign bitcast_ln194_40_fu_2426_p1 = weights3_0_load_16_reg_3536;
assign bitcast_ln194_41_fu_2430_p1 = weights3_1_load_16_reg_3541;
assign bitcast_ln194_42_fu_2434_p1 = reg_1071;
assign bitcast_ln194_43_fu_2439_p1 = reg_1098;
assign bitcast_ln194_44_fu_2444_p1 = reg_1103;
assign bitcast_ln194_45_fu_2449_p1 = reg_1057;
assign bitcast_ln194_46_fu_2454_p1 = reg_1141;
assign bitcast_ln194_47_fu_2459_p1 = reg_1146;
assign bitcast_ln194_48_fu_2464_p1 = reg_1061;
assign bitcast_ln194_49_fu_2469_p1 = reg_1066;
assign bitcast_ln194_4_fu_1754_p1 = reg_1053;
assign bitcast_ln194_50_fu_2474_p1 = reg_1093;
assign bitcast_ln194_51_fu_2479_p1 = weights3_3_load_17_reg_3651;
assign bitcast_ln194_52_fu_2483_p1 = weights3_4_load_17_reg_3656;
assign bitcast_ln194_53_fu_2487_p1 = weights3_5_load_17_reg_3661;
assign bitcast_ln194_54_fu_2491_p1 = reg_1075;
assign bitcast_ln194_55_fu_2496_p1 = reg_1079;
assign bitcast_ln194_56_fu_2501_p1 = weights3_0_load_18_reg_3676;
assign bitcast_ln194_57_fu_2505_p1 = weights3_1_load_18_reg_3681;
assign bitcast_ln194_58_fu_2509_p1 = weights3_2_load_18_reg_3686;
assign bitcast_ln194_59_fu_2513_p1 = reg_1049;
assign bitcast_ln194_5_fu_1759_p1 = reg_1057;
assign bitcast_ln194_60_fu_2518_p1 = reg_1053;
assign bitcast_ln194_61_fu_2523_p1 = reg_1108;
assign bitcast_ln194_62_fu_2528_p1 = reg_1118;
assign bitcast_ln194_63_fu_2533_p1 = reg_1122;
assign bitcast_ln194_64_fu_2538_p1 = weights3_0_load_19_reg_3809;
assign bitcast_ln194_65_fu_2542_p1 = weights3_1_load_19_reg_3814;
assign bitcast_ln194_66_fu_2546_p1 = weights3_2_load_19_reg_3819;
assign bitcast_ln194_67_fu_2550_p1 = weights3_3_load_19_reg_3824;
assign bitcast_ln194_68_fu_2554_p1 = weights3_4_load_19_reg_3829;
assign bitcast_ln194_69_fu_2558_p1 = reg_1113;
assign bitcast_ln194_6_fu_1896_p1 = reg_1075;
assign bitcast_ln194_70_fu_2563_p1 = reg_1083;
assign bitcast_ln194_71_fu_2568_p1 = reg_1088;
assign bitcast_ln194_72_fu_2573_p1 = weights3_0_load_20_reg_3834;
assign bitcast_ln194_73_fu_2577_p1 = weights3_1_load_20_reg_3839;
assign bitcast_ln194_74_fu_2581_p1 = weights3_2_load_20_reg_3844;
assign bitcast_ln194_75_fu_2585_p1 = reg_1126;
assign bitcast_ln194_76_fu_2590_p1 = reg_1131;
assign bitcast_ln194_77_fu_2595_p1 = reg_1136;
assign bitcast_ln194_78_fu_2600_p1 = weights3_6_load_20_reg_3979;
assign bitcast_ln194_79_fu_2604_p1 = weights3_7_load_20_reg_3984;
assign bitcast_ln194_7_fu_1901_p1 = reg_1079;
assign bitcast_ln194_80_fu_2618_p1 = reg_1037;
assign bitcast_ln194_81_fu_2623_p1 = reg_1041;
assign bitcast_ln194_82_fu_2628_p1 = reg_1045;
assign bitcast_ln194_83_fu_2633_p1 = weights3_3_load_21_reg_3989;
assign bitcast_ln194_84_fu_2637_p1 = weights3_4_load_21_reg_3994;
assign bitcast_ln194_85_fu_2641_p1 = weights3_5_load_21_reg_3999;
assign bitcast_ln194_86_fu_2645_p1 = reg_1141;
assign bitcast_ln194_87_fu_2650_p1 = reg_1146;
assign bitcast_ln194_88_fu_2655_p1 = weights3_0_load_22_reg_4009;
assign bitcast_ln194_89_fu_2659_p1 = weights3_1_load_22_reg_4014;
assign bitcast_ln194_8_fu_1906_p1 = reg_1037;
assign bitcast_ln194_90_fu_2663_p1 = weights3_2_load_22_reg_4019;
assign bitcast_ln194_91_fu_2667_p1 = reg_1098;
assign bitcast_ln194_92_fu_2672_p1 = reg_1103;
assign bitcast_ln194_93_fu_2677_p1 = reg_1057;
assign bitcast_ln194_94_fu_2682_p1 = weights3_6_load_22_reg_4080;
assign bitcast_ln194_95_fu_2686_p1 = weights3_7_load_22_reg_4085;
assign bitcast_ln194_96_fu_2690_p1 = reg_1151;
assign bitcast_ln194_97_fu_2695_p1 = reg_1191;
assign bitcast_ln194_98_fu_2735_p1 = reg_1227;
assign bitcast_ln194_99_fu_2740_p1 = reg_1175;
assign bitcast_ln194_9_fu_1911_p1 = reg_1041;
assign bitcast_ln194_fu_1565_p1 = reg_1037;
assign empty_65_fu_1376_p2 = (empty_reg_3174 + 8'd3);
assign empty_66_fu_1417_p2 = (empty_reg_3174 + 8'd6);
assign empty_67_fu_1439_p2 = (empty_reg_3174 + 8'd9);
assign empty_68_fu_1461_p2 = (empty_reg_3174 + 8'd12);
assign empty_69_fu_1521_p2 = (empty_reg_3174 + 8'd15);
assign empty_70_fu_1543_p2 = (empty_reg_3174 + 8'd18);
assign empty_71_fu_1570_p2 = (empty_reg_3174 + 8'd24);
assign empty_72_fu_1592_p2 = (empty_reg_3174 + 8'd27);
assign empty_73_fu_1633_p2 = (empty_reg_3174 + 8'd30);
assign empty_74_fu_1655_p2 = (empty_reg_3174 + 8'd33);
assign empty_75_fu_1777_p2 = (empty_reg_3174 + 8'd36);
assign empty_76_fu_1717_p2 = (empty_reg_3174 + 8'd39);
assign empty_77_fu_1797_p2 = (empty_reg_3174 + 8'd42);
assign empty_78_fu_1832_p2 = (empty_reg_3174 + 8'd48);
assign empty_79_fu_1936_p2 = (empty_reg_3174 + 8'd51);
assign empty_80_fu_1874_p2 = (empty_reg_3174 + 8'd54);
assign empty_81_fu_1957_p2 = (empty_reg_3174 + 8'd57);
assign empty_82_fu_1979_p2 = (empty_reg_3174 + 8'd60);
assign empty_83_fu_2039_p2 = (empty_reg_3174 + 8'd63);
assign empty_84_fu_2061_p2 = (empty_reg_3174 + 8'd66);
assign empty_85_fu_2135_p2 = (empty_reg_3174 + 8'd72);
assign empty_86_fu_2157_p2 = (empty_reg_3174 + 8'd75);
assign empty_87_fu_2198_p2 = (empty_reg_3174 + 8'd78);
assign empty_88_fu_2220_p2 = (empty_reg_3174 + 8'd81);
assign empty_89_fu_2344_p2 = (empty_reg_3174 + 8'd84);
assign empty_90_fu_2282_p2 = (empty_reg_3174 + 8'd87);
assign empty_91_fu_2364_p2 = (empty_reg_3174 + 8'd90);
assign empty_fu_1328_p2 = (p_shl_fu_1320_p3 - or_ln192_cast_fu_1316_p1);
assign lshr_ln194_10_fu_1575_p4 = {{empty_71_fu_1570_p2[7:3]}};
assign lshr_ln194_11_cast_fu_1585_p1 = lshr_ln194_10_fu_1575_p4;
assign lshr_ln194_11_fu_1597_p4 = {{empty_72_fu_1592_p2[7:3]}};
assign lshr_ln194_12_fu_1618_p4 = {{add_ln194_3_fu_1613_p2[7:3]}};
assign lshr_ln194_13_cast_fu_1628_p1 = lshr_ln194_12_fu_1618_p4;
assign lshr_ln194_13_fu_1638_p4 = {{empty_73_fu_1633_p2[7:3]}};
assign lshr_ln194_14_cast_fu_1648_p1 = lshr_ln194_13_fu_1638_p4;
assign lshr_ln194_14_fu_1660_p4 = {{empty_74_fu_1655_p2[7:3]}};
assign lshr_ln194_15_cast_fu_1670_p1 = lshr_ln194_14_fu_1660_p4;
assign lshr_ln194_15_fu_1782_p4 = {{empty_75_fu_1777_p2[7:3]}};
assign lshr_ln194_16_fu_1682_p4 = {{add_ln194_4_fu_1677_p2[7:3]}};
assign lshr_ln194_17_fu_1702_p4 = {{add_ln194_5_fu_1697_p2[7:3]}};
assign lshr_ln194_18_cast_fu_1712_p1 = lshr_ln194_17_fu_1702_p4;
assign lshr_ln194_18_fu_1722_p4 = {{empty_76_fu_1717_p2[7:3]}};
assign lshr_ln194_19_cast_fu_1732_p1 = lshr_ln194_18_fu_1722_p4;
assign lshr_ln194_19_fu_1802_p4 = {{empty_77_fu_1797_p2[7:3]}};
assign lshr_ln194_1_cast_fu_1344_p1 = lshr_ln194_1_fu_1334_p4;
assign lshr_ln194_1_fu_1334_p4 = {{empty_fu_1328_p2[7:3]}};
assign lshr_ln194_20_fu_1837_p4 = {{empty_78_fu_1832_p2[7:3]}};
assign lshr_ln194_21_cast_fu_1847_p1 = lshr_ln194_20_fu_1837_p4;
assign lshr_ln194_21_fu_1941_p4 = {{empty_79_fu_1936_p2[7:3]}};
assign lshr_ln194_22_fu_1859_p4 = {{add_ln194_7_fu_1854_p2[7:3]}};
assign lshr_ln194_23_cast_fu_1869_p1 = lshr_ln194_22_fu_1859_p4;
assign lshr_ln194_23_fu_1879_p4 = {{empty_80_fu_1874_p2[7:3]}};
assign lshr_ln194_24_cast_fu_1889_p1 = lshr_ln194_23_fu_1879_p4;
assign lshr_ln194_24_fu_1962_p4 = {{empty_81_fu_1957_p2[7:3]}};
assign lshr_ln194_25_cast_fu_1972_p1 = lshr_ln194_24_fu_1962_p4;
assign lshr_ln194_25_fu_1984_p4 = {{empty_82_fu_1979_p2[7:3]}};
assign lshr_ln194_26_fu_2004_p4 = {{add_ln194_8_fu_1999_p2[7:3]}};
assign lshr_ln194_27_fu_2024_p4 = {{add_ln194_9_fu_2019_p2[7:3]}};
assign lshr_ln194_28_cast_fu_2034_p1 = lshr_ln194_27_fu_2024_p4;
assign lshr_ln194_28_fu_2044_p4 = {{empty_83_fu_2039_p2[7:3]}};
assign lshr_ln194_29_cast_fu_2054_p1 = lshr_ln194_28_fu_2044_p4;
assign lshr_ln194_29_fu_2066_p4 = {{empty_84_fu_2061_p2[7:3]}};
assign lshr_ln194_2_fu_1381_p4 = {{empty_65_fu_1376_p2[7:3]}};
assign lshr_ln194_30_fu_2140_p4 = {{empty_85_fu_2135_p2[7:3]}};
assign lshr_ln194_31_cast_fu_2150_p1 = lshr_ln194_30_fu_2140_p4;
assign lshr_ln194_31_fu_2162_p4 = {{empty_86_fu_2157_p2[7:3]}};
assign lshr_ln194_32_fu_2183_p4 = {{add_ln194_11_fu_2178_p2[7:3]}};
assign lshr_ln194_33_cast_fu_2193_p1 = lshr_ln194_32_fu_2183_p4;
assign lshr_ln194_33_fu_2203_p4 = {{empty_87_fu_2198_p2[7:3]}};
assign lshr_ln194_34_cast_fu_2213_p1 = lshr_ln194_33_fu_2203_p4;
assign lshr_ln194_34_fu_2225_p4 = {{empty_88_fu_2220_p2[7:3]}};
assign lshr_ln194_35_cast_fu_2235_p1 = lshr_ln194_34_fu_2225_p4;
assign lshr_ln194_35_fu_2349_p4 = {{empty_89_fu_2344_p2[7:3]}};
assign lshr_ln194_36_fu_2247_p4 = {{add_ln194_12_fu_2242_p2[7:3]}};
assign lshr_ln194_37_fu_2267_p4 = {{add_ln194_13_fu_2262_p2[7:3]}};
assign lshr_ln194_38_cast_fu_2277_p1 = lshr_ln194_37_fu_2267_p4;
assign lshr_ln194_38_fu_2287_p4 = {{empty_90_fu_2282_p2[7:3]}};
assign lshr_ln194_39_cast_fu_2297_p1 = lshr_ln194_38_fu_2287_p4;
assign lshr_ln194_39_fu_2369_p4 = {{empty_91_fu_2364_p2[7:3]}};
assign lshr_ln194_3_cast_fu_1412_p1 = lshr_ln194_3_fu_1402_p4;
assign lshr_ln194_3_fu_1402_p4 = {{add_ln194_fu_1397_p2[7:3]}};
assign lshr_ln194_4_cast_fu_1432_p1 = lshr_ln194_4_fu_1422_p4;
assign lshr_ln194_4_fu_1422_p4 = {{empty_66_fu_1417_p2[7:3]}};
assign lshr_ln194_5_cast_fu_1454_p1 = lshr_ln194_5_fu_1444_p4;
assign lshr_ln194_5_fu_1444_p4 = {{empty_67_fu_1439_p2[7:3]}};
assign lshr_ln194_6_fu_1466_p4 = {{empty_68_fu_1461_p2[7:3]}};
assign lshr_ln194_7_fu_1486_p4 = {{add_ln194_1_fu_1481_p2[7:3]}};
assign lshr_ln194_8_cast_fu_1516_p1 = lshr_ln194_8_fu_1506_p4;
assign lshr_ln194_8_fu_1506_p4 = {{add_ln194_2_fu_1501_p2[7:3]}};
assign lshr_ln194_9_cast_fu_1536_p1 = lshr_ln194_9_fu_1526_p4;
assign lshr_ln194_9_fu_1526_p4 = {{empty_69_fu_1521_p2[7:3]}};
assign lshr_ln194_s_fu_1548_p4 = {{empty_70_fu_1543_p2[7:3]}};
assign or_ln192_cast_fu_1316_p1 = or_ln4_fu_1308_p3;
assign or_ln194_cast154_fu_1774_p1 = or_ln5_reg_3217;
assign or_ln194_cast_fu_1369_p1 = or_ln5_fu_1361_p3;
assign or_ln4_fu_1308_p3 = {{tmp_3_fu_1298_p4}, {1'd1}};
assign or_ln5_fu_1361_p3 = {{tmp_4_fu_1351_p4}, {2'd3}};
assign p_shl1_fu_1277_p3 = {{tmp_s_fu_1263_p4}, {2'd0}};
assign p_shl_fu_1320_p3 = {{tmp_3_fu_1298_p4}, {3'd4}};
assign sub_ln194_fu_1285_p2 = (p_shl1_fu_1277_p3 - zext_ln194_17_fu_1273_p1);
assign tmp_3_fu_1298_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
assign tmp_4_fu_1351_p4 = {{sub_ln194_fu_1285_p2[3:2]}};
assign tmp_s_fu_1263_p4 = {{ap_sig_allocacmp_i_4[5:3]}};
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
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_address1 = weights3_4_address1_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_ce1 = weights3_4_ce1_local;
assign weights3_4_d0 = weights3_4_d0_local;
assign weights3_4_d1 = weights3_4_d1_local;
assign weights3_4_we0 = weights3_4_we0_local;
assign weights3_4_we1 = weights3_4_we1_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_address1 = weights3_5_address1_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_ce1 = weights3_5_ce1_local;
assign weights3_5_d0 = weights3_5_d0_local;
assign weights3_5_d1 = weights3_5_d1_local;
assign weights3_5_we0 = weights3_5_we0_local;
assign weights3_5_we1 = weights3_5_we1_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_address1 = weights3_6_address1_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_ce1 = weights3_6_ce1_local;
assign weights3_6_d0 = weights3_6_d0_local;
assign weights3_6_d1 = weights3_6_d1_local;
assign weights3_6_we0 = weights3_6_we0_local;
assign weights3_6_we1 = weights3_6_we1_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_address1 = weights3_7_address1_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_ce1 = weights3_7_ce1_local;
assign weights3_7_d0 = weights3_7_d0_local;
assign weights3_7_d1 = weights3_7_d1_local;
assign weights3_7_we0 = weights3_7_we0_local;
assign weights3_7_we1 = weights3_7_we1_local;
assign zext_ln194_10_fu_1994_p1 = lshr_ln194_25_fu_1984_p4;
assign zext_ln194_11_fu_2014_p1 = lshr_ln194_26_fu_2004_p4;
assign zext_ln194_12_fu_2076_p1 = lshr_ln194_29_fu_2066_p4;
assign zext_ln194_13_fu_2172_p1 = lshr_ln194_31_fu_2162_p4;
assign zext_ln194_14_fu_2359_p1 = lshr_ln194_35_fu_2349_p4;
assign zext_ln194_15_fu_2257_p1 = lshr_ln194_36_fu_2247_p4;
assign zext_ln194_16_fu_2379_p1 = lshr_ln194_39_fu_2369_p4;
assign zext_ln194_17_fu_1273_p1 = tmp_s_fu_1263_p4;
assign zext_ln194_1_fu_1391_p1 = lshr_ln194_2_fu_1381_p4;
assign zext_ln194_2_fu_1476_p1 = lshr_ln194_6_fu_1466_p4;
assign zext_ln194_3_fu_1496_p1 = lshr_ln194_7_fu_1486_p4;
assign zext_ln194_4_fu_1558_p1 = lshr_ln194_s_fu_1548_p4;
assign zext_ln194_5_fu_1607_p1 = lshr_ln194_11_fu_1597_p4;
assign zext_ln194_6_fu_1792_p1 = lshr_ln194_15_fu_1782_p4;
assign zext_ln194_7_fu_1692_p1 = lshr_ln194_16_fu_1682_p4;
assign zext_ln194_8_fu_1812_p1 = lshr_ln194_19_fu_1802_p4;
assign zext_ln194_9_fu_1951_p1 = lshr_ln194_21_fu_1941_p4;
assign zext_ln194_fu_1291_p1 = sub_ln194_fu_1285_p2;
always @ (posedge ap_clk) begin
    empty_reg_3174[0] <= 1'b1;
    or_ln5_reg_3217[1:0] <= 2'b11;
    weights3_0_addr_14_reg_3250[1:0] <= 2'b11;
    weights3_0_addr_14_reg_3250[4] <= 1'b0;
    weights3_0_addr_14_reg_3250_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_3250_pp0_iter1_reg[4] <= 1'b0;
    weights3_0_addr_14_reg_3250_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_3250_pp0_iter2_reg[4] <= 1'b0;
    weights3_0_addr_14_reg_3250_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_3250_pp0_iter3_reg[4] <= 1'b0;
    weights3_0_addr_14_reg_3250_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_3250_pp0_iter4_reg[4] <= 1'b0;
    weights3_0_addr_14_reg_3250_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_3250_pp0_iter5_reg[4] <= 1'b0;
    weights3_1_addr_14_reg_3255[1:0] <= 2'b11;
    weights3_1_addr_14_reg_3255[4] <= 1'b0;
    weights3_1_addr_14_reg_3255_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_3255_pp0_iter1_reg[4] <= 1'b0;
    weights3_1_addr_14_reg_3255_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_3255_pp0_iter2_reg[4] <= 1'b0;
    weights3_1_addr_14_reg_3255_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_3255_pp0_iter3_reg[4] <= 1'b0;
    weights3_1_addr_14_reg_3255_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_3255_pp0_iter4_reg[4] <= 1'b0;
    weights3_1_addr_14_reg_3255_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_3255_pp0_iter5_reg[4] <= 1'b0;
    weights3_2_addr_14_reg_3260[1:0] <= 2'b11;
    weights3_2_addr_14_reg_3260[4] <= 1'b0;
    weights3_2_addr_14_reg_3260_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_3260_pp0_iter1_reg[4] <= 1'b0;
    weights3_2_addr_14_reg_3260_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_3260_pp0_iter2_reg[4] <= 1'b0;
    weights3_2_addr_14_reg_3260_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_3260_pp0_iter3_reg[4] <= 1'b0;
    weights3_2_addr_14_reg_3260_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_3260_pp0_iter4_reg[4] <= 1'b0;
    weights3_2_addr_14_reg_3260_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_2_addr_14_reg_3260_pp0_iter5_reg[4] <= 1'b0;
    or_ln194_cast154_reg_3486[1:0] <= 2'b11;
    or_ln194_cast154_reg_3486[4] <= 1'b0;
    weights3_0_addr_17_reg_3561[1:0] <= 2'b10;
    weights3_0_addr_17_reg_3561_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_3561_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_3561_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_3561_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_3561_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_3566[1:0] <= 2'b10;
    weights3_1_addr_17_reg_3566_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_3566_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_3566_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_3566_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_3566_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_3571[1:0] <= 2'b10;
    weights3_2_addr_17_reg_3571_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_3571_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_3571_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_3571_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_2_addr_17_reg_3571_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_0_addr_20_reg_3751[1:0] <= 2'b01;
    weights3_0_addr_20_reg_3751_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_3751_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_3751_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_3751_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_3751_pp0_iter5_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_3757[1:0] <= 2'b01;
    weights3_1_addr_20_reg_3757_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_3757_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_3757_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_3757_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_3757_pp0_iter5_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_3763[1:0] <= 2'b01;
    weights3_2_addr_20_reg_3763_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_3763_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_3763_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_3763_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_2_addr_20_reg_3763_pp0_iter5_reg[1:0] <= 2'b01;
end
endmodule 