module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_0_address1,val_0_ce1,val_0_q1,val_1_address0,val_1_ce0,val_1_q0,val_1_address1,val_1_ce1,val_1_q1,val_2_address0,val_2_ce0,val_2_q0,val_2_address1,val_2_ce1,val_2_q1,val_3_address0,val_3_ce0,val_3_q0,val_3_address1,val_3_ce1,val_3_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_0_address1,rowDelimiters_0_ce1,rowDelimiters_0_q1,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,rowDelimiters_1_address1,rowDelimiters_1_ce1,rowDelimiters_1_q1,rowDelimiters_2_address0,rowDelimiters_2_ce0,rowDelimiters_2_q0,rowDelimiters_2_address1,rowDelimiters_2_ce1,rowDelimiters_2_q1,rowDelimiters_3_address0,rowDelimiters_3_ce0,rowDelimiters_3_q0,rowDelimiters_3_address1,rowDelimiters_3_ce1,rowDelimiters_3_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,vec_2_address0,vec_2_ce0,vec_2_q0,vec_2_address1,vec_2_ce1,vec_2_q1,vec_3_address0,vec_3_ce0,vec_3_q0,vec_3_address1,vec_3_ce1,vec_3_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_2_address0,out_2_ce0,out_2_we0,out_2_d0,out_3_address0,out_3_ce0,out_3_we0,out_3_d0); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [8:0] val_0_address1;
output   val_0_ce1;
input  [63:0] val_0_q1;
output  [8:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [8:0] val_1_address1;
output   val_1_ce1;
input  [63:0] val_1_q1;
output  [8:0] val_2_address0;
output   val_2_ce0;
input  [63:0] val_2_q0;
output  [8:0] val_2_address1;
output   val_2_ce1;
input  [63:0] val_2_q1;
output  [8:0] val_3_address0;
output   val_3_ce0;
input  [63:0] val_3_q0;
output  [8:0] val_3_address1;
output   val_3_ce1;
input  [63:0] val_3_q1;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [10:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [6:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [6:0] rowDelimiters_0_address1;
output   rowDelimiters_0_ce1;
input  [31:0] rowDelimiters_0_q1;
output  [6:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [6:0] rowDelimiters_1_address1;
output   rowDelimiters_1_ce1;
input  [31:0] rowDelimiters_1_q1;
output  [6:0] rowDelimiters_2_address0;
output   rowDelimiters_2_ce0;
input  [31:0] rowDelimiters_2_q0;
output  [6:0] rowDelimiters_2_address1;
output   rowDelimiters_2_ce1;
input  [31:0] rowDelimiters_2_q1;
output  [6:0] rowDelimiters_3_address0;
output   rowDelimiters_3_ce0;
input  [31:0] rowDelimiters_3_q0;
output  [6:0] rowDelimiters_3_address1;
output   rowDelimiters_3_ce1;
input  [31:0] rowDelimiters_3_q1;
output  [6:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [6:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [6:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [6:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [6:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [6:0] vec_2_address1;
output   vec_2_ce1;
input  [63:0] vec_2_q1;
output  [6:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [6:0] vec_3_address1;
output   vec_3_ce1;
input  [63:0] vec_3_q1;
output  [6:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [6:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
output  [6:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [63:0] out_2_d0;
output  [6:0] out_3_address0;
output   out_3_ce0;
output   out_3_we0;
output  [63:0] out_3_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln15_fu_507_p2;
reg   [8:0] add_ln15_reg_1306;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln12_fu_513_p1;
reg   [1:0] trunc_ln12_reg_1311;
wire   [63:0] zext_ln9_fu_527_p1;
reg   [63:0] zext_ln9_reg_1317;
wire   [31:0] tmp_begin_fu_553_p11;
reg   [31:0] tmp_begin_reg_1365;
wire    ap_CS_fsm_state3;
wire   [31:0] tmp_end_fu_577_p11;
reg   [31:0] tmp_end_reg_1370;
wire   [4:0] grp_spmv_Pipeline_spmv_2_fu_436_ap_return;
reg   [4:0] targetBlock_reg_1376;
wire    ap_CS_fsm_state4;
wire   [0:0] empty_fu_602_p2;
reg   [0:0] empty_reg_1407;
wire   [0:0] empty_14_fu_608_p2;
reg   [0:0] empty_14_reg_1412;
wire   [0:0] empty_16_fu_614_p2;
reg   [0:0] empty_16_reg_1417;
wire   [0:0] empty_18_fu_620_p2;
reg   [0:0] empty_18_reg_1422;
wire   [63:0] empty_39_fu_821_p3;
reg   [63:0] empty_39_reg_1427;
wire    ap_CS_fsm_state5;
wire   [0:0] empty_40_fu_829_p2;
reg   [0:0] empty_40_reg_1432;
wire   [0:0] empty_42_fu_834_p2;
reg   [0:0] empty_42_reg_1437;
wire   [0:0] empty_44_fu_839_p2;
reg   [0:0] empty_44_reg_1442;
wire   [0:0] empty_46_fu_844_p2;
reg   [0:0] empty_46_reg_1447;
wire   [63:0] empty_67_fu_1040_p3;
reg   [63:0] empty_67_reg_1452;
wire    ap_CS_fsm_state6;
wire   [0:0] empty_68_fu_1048_p2;
reg   [0:0] empty_68_reg_1457;
wire   [0:0] empty_70_fu_1053_p2;
reg   [0:0] empty_70_reg_1462;
wire   [0:0] empty_72_fu_1058_p2;
reg   [0:0] empty_72_reg_1467;
wire    grp_spmv_Pipeline_spmv_2_fu_436_ap_start;
wire    grp_spmv_Pipeline_spmv_2_fu_436_ap_done;
wire    grp_spmv_Pipeline_spmv_2_fu_436_ap_idle;
wire    grp_spmv_Pipeline_spmv_2_fu_436_ap_ready;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_436_val_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_val_0_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_436_val_0_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_val_0_ce1;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_436_val_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_val_1_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_436_val_1_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_val_1_ce1;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_436_val_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_val_2_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_436_val_2_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_val_2_ce1;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_436_val_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_val_3_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_436_val_3_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_val_3_ce1;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_436_cols_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_cols_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_436_cols_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_cols_ce1;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_436_vec_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_vec_0_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_436_vec_0_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_vec_0_ce1;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_436_vec_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_vec_1_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_436_vec_1_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_vec_1_ce1;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_436_vec_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_vec_2_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_436_vec_2_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_vec_2_ce1;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_436_vec_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_436_vec_3_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_436_vec_3_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_436_vec_3_ce1;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_31_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_31_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_30_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_30_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_29_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_29_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_28_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_28_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_27_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_27_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_26_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_26_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_25_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_25_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_24_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_24_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_23_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_23_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_22_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_22_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_21_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_21_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_20_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_20_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_19_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_19_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_18_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_18_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_17_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_17_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_16_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_16_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_15_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_15_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_14_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_14_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_13_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_13_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_12_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_12_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_11_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_11_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_10_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_10_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_9_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_9_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_8_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_8_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_7_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_7_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_6_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_6_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_5_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_5_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_4_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_4_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_3_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_3_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_2_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_2_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_436_sum_1_out;
wire    grp_spmv_Pipeline_spmv_2_fu_436_sum_1_out_ap_vld;
reg    grp_spmv_Pipeline_spmv_2_fu_436_ap_start_reg;
reg   [63:0] sum_loc_fu_280;
reg   [63:0] sum_31_loc_fu_276;
reg   [63:0] sum_30_loc_fu_272;
reg   [63:0] sum_29_loc_fu_268;
reg   [63:0] sum_28_loc_fu_264;
reg   [63:0] sum_27_loc_fu_260;
reg   [63:0] sum_26_loc_fu_256;
reg   [63:0] sum_25_loc_fu_252;
reg   [63:0] sum_24_loc_fu_248;
reg   [63:0] sum_23_loc_fu_244;
reg   [63:0] sum_22_loc_fu_240;
reg   [63:0] sum_21_loc_fu_236;
reg   [63:0] sum_20_loc_fu_232;
reg   [63:0] sum_19_loc_fu_228;
reg   [63:0] sum_18_loc_fu_224;
reg   [63:0] sum_17_loc_fu_220;
reg   [63:0] sum_16_loc_fu_216;
reg   [63:0] sum_15_loc_fu_212;
reg   [63:0] sum_14_loc_fu_208;
reg   [63:0] sum_13_loc_fu_204;
reg   [63:0] sum_12_loc_fu_200;
reg   [63:0] sum_11_loc_fu_196;
reg   [63:0] sum_10_loc_fu_192;
reg   [63:0] sum_9_loc_fu_188;
reg   [63:0] sum_8_loc_fu_184;
reg   [63:0] sum_7_loc_fu_180;
reg   [63:0] sum_6_loc_fu_176;
reg   [63:0] sum_5_loc_fu_172;
reg   [63:0] sum_4_loc_fu_168;
reg   [63:0] sum_3_loc_fu_164;
reg   [63:0] sum_2_loc_fu_160;
reg   [63:0] sum_1_loc_fu_156;
wire   [0:0] icmp_ln12_fu_501_p2;
wire   [63:0] zext_ln15_fu_545_p1;
wire    ap_CS_fsm_state7;
reg   [8:0] i_fu_152;
reg    rowDelimiters_0_ce1_local;
reg    rowDelimiters_0_ce0_local;
reg    rowDelimiters_1_ce1_local;
reg    rowDelimiters_1_ce0_local;
reg    rowDelimiters_2_ce1_local;
reg    rowDelimiters_2_ce0_local;
reg    rowDelimiters_3_ce1_local;
reg    rowDelimiters_3_ce0_local;
reg    out_2_we0_local;
wire   [63:0] bitcast_ln20_fu_1092_p1;
reg    out_2_ce0_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
reg    out_0_we0_local;
reg    out_0_ce0_local;
reg    out_3_we0_local;
reg    out_3_ce0_local;
wire   [6:0] lshr_ln9_fu_517_p4;
wire   [6:0] lshr_ln_fu_535_p4;
wire   [31:0] tmp_begin_fu_553_p9;
wire   [31:0] tmp_end_fu_577_p9;
wire   [63:0] empty_13_fu_671_p3;
wire   [63:0] empty_15_fu_678_p3;
wire   [63:0] empty_17_fu_685_p3;
wire   [0:0] empty_20_fu_699_p2;
wire   [63:0] empty_19_fu_692_p3;
wire   [0:0] empty_22_fu_712_p2;
wire   [63:0] empty_21_fu_704_p3;
wire   [0:0] empty_24_fu_725_p2;
wire   [63:0] empty_23_fu_717_p3;
wire   [0:0] empty_26_fu_738_p2;
wire   [63:0] empty_25_fu_730_p3;
wire   [0:0] empty_28_fu_751_p2;
wire   [63:0] empty_27_fu_743_p3;
wire   [0:0] empty_30_fu_764_p2;
wire   [63:0] empty_29_fu_756_p3;
wire   [0:0] empty_32_fu_777_p2;
wire   [63:0] empty_31_fu_769_p3;
wire   [0:0] empty_34_fu_790_p2;
wire   [63:0] empty_33_fu_782_p3;
wire   [0:0] empty_36_fu_803_p2;
wire   [63:0] empty_35_fu_795_p3;
wire   [0:0] empty_38_fu_816_p2;
wire   [63:0] empty_37_fu_808_p3;
wire   [63:0] empty_41_fu_891_p3;
wire   [63:0] empty_43_fu_897_p3;
wire   [63:0] empty_45_fu_904_p3;
wire   [0:0] empty_48_fu_918_p2;
wire   [63:0] empty_47_fu_911_p3;
wire   [0:0] empty_50_fu_931_p2;
wire   [63:0] empty_49_fu_923_p3;
wire   [0:0] empty_52_fu_944_p2;
wire   [63:0] empty_51_fu_936_p3;
wire   [0:0] empty_54_fu_957_p2;
wire   [63:0] empty_53_fu_949_p3;
wire   [0:0] empty_56_fu_970_p2;
wire   [63:0] empty_55_fu_962_p3;
wire   [0:0] empty_58_fu_983_p2;
wire   [63:0] empty_57_fu_975_p3;
wire   [0:0] empty_60_fu_996_p2;
wire   [63:0] empty_59_fu_988_p3;
wire   [0:0] empty_62_fu_1009_p2;
wire   [63:0] empty_61_fu_1001_p3;
wire   [0:0] empty_64_fu_1022_p2;
wire   [63:0] empty_63_fu_1014_p3;
wire   [0:0] empty_66_fu_1035_p2;
wire   [63:0] empty_65_fu_1027_p3;
wire   [63:0] empty_69_fu_1072_p3;
wire   [63:0] empty_71_fu_1078_p3;
wire   [63:0] sum_0_lcssa_ph_fu_1085_p3;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire   [1:0] tmp_begin_fu_553_p1;
wire   [1:0] tmp_begin_fu_553_p3;
wire  signed [1:0] tmp_begin_fu_553_p5;
wire  signed [1:0] tmp_begin_fu_553_p7;
wire  signed [1:0] tmp_end_fu_577_p1;
wire   [1:0] tmp_end_fu_577_p3;
wire   [1:0] tmp_end_fu_577_p5;
wire  signed [1:0] tmp_end_fu_577_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_spmv_Pipeline_spmv_2_fu_436_ap_start_reg = 1'b0;
#0 i_fu_152 = 9'd0;
end
spmv_spmv_Pipeline_spmv_2 grp_spmv_Pipeline_spmv_2_fu_436(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_spmv_Pipeline_spmv_2_fu_436_ap_start),.ap_done(grp_spmv_Pipeline_spmv_2_fu_436_ap_done),.ap_idle(grp_spmv_Pipeline_spmv_2_fu_436_ap_idle),.ap_ready(grp_spmv_Pipeline_spmv_2_fu_436_ap_ready),.sext_ln16(tmp_begin_reg_1365),.sext_ln16_1(tmp_end_reg_1370),.val_0_address0(grp_spmv_Pipeline_spmv_2_fu_436_val_0_address0),.val_0_ce0(grp_spmv_Pipeline_spmv_2_fu_436_val_0_ce0),.val_0_q0(val_0_q0),.val_0_address1(grp_spmv_Pipeline_spmv_2_fu_436_val_0_address1),.val_0_ce1(grp_spmv_Pipeline_spmv_2_fu_436_val_0_ce1),.val_0_q1(val_0_q1),.val_1_address0(grp_spmv_Pipeline_spmv_2_fu_436_val_1_address0),.val_1_ce0(grp_spmv_Pipeline_spmv_2_fu_436_val_1_ce0),.val_1_q0(val_1_q0),.val_1_address1(grp_spmv_Pipeline_spmv_2_fu_436_val_1_address1),.val_1_ce1(grp_spmv_Pipeline_spmv_2_fu_436_val_1_ce1),.val_1_q1(val_1_q1),.val_2_address0(grp_spmv_Pipeline_spmv_2_fu_436_val_2_address0),.val_2_ce0(grp_spmv_Pipeline_spmv_2_fu_436_val_2_ce0),.val_2_q0(val_2_q0),.val_2_address1(grp_spmv_Pipeline_spmv_2_fu_436_val_2_address1),.val_2_ce1(grp_spmv_Pipeline_spmv_2_fu_436_val_2_ce1),.val_2_q1(val_2_q1),.val_3_address0(grp_spmv_Pipeline_spmv_2_fu_436_val_3_address0),.val_3_ce0(grp_spmv_Pipeline_spmv_2_fu_436_val_3_ce0),.val_3_q0(val_3_q0),.val_3_address1(grp_spmv_Pipeline_spmv_2_fu_436_val_3_address1),.val_3_ce1(grp_spmv_Pipeline_spmv_2_fu_436_val_3_ce1),.val_3_q1(val_3_q1),.cols_address0(grp_spmv_Pipeline_spmv_2_fu_436_cols_address0),.cols_ce0(grp_spmv_Pipeline_spmv_2_fu_436_cols_ce0),.cols_q0(cols_q0),.cols_address1(grp_spmv_Pipeline_spmv_2_fu_436_cols_address1),.cols_ce1(grp_spmv_Pipeline_spmv_2_fu_436_cols_ce1),.cols_q1(cols_q1),.vec_0_address0(grp_spmv_Pipeline_spmv_2_fu_436_vec_0_address0),.vec_0_ce0(grp_spmv_Pipeline_spmv_2_fu_436_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_0_address1(grp_spmv_Pipeline_spmv_2_fu_436_vec_0_address1),.vec_0_ce1(grp_spmv_Pipeline_spmv_2_fu_436_vec_0_ce1),.vec_0_q1(vec_0_q1),.vec_1_address0(grp_spmv_Pipeline_spmv_2_fu_436_vec_1_address0),.vec_1_ce0(grp_spmv_Pipeline_spmv_2_fu_436_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_1_address1(grp_spmv_Pipeline_spmv_2_fu_436_vec_1_address1),.vec_1_ce1(grp_spmv_Pipeline_spmv_2_fu_436_vec_1_ce1),.vec_1_q1(vec_1_q1),.vec_2_address0(grp_spmv_Pipeline_spmv_2_fu_436_vec_2_address0),.vec_2_ce0(grp_spmv_Pipeline_spmv_2_fu_436_vec_2_ce0),.vec_2_q0(vec_2_q0),.vec_2_address1(grp_spmv_Pipeline_spmv_2_fu_436_vec_2_address1),.vec_2_ce1(grp_spmv_Pipeline_spmv_2_fu_436_vec_2_ce1),.vec_2_q1(vec_2_q1),.vec_3_address0(grp_spmv_Pipeline_spmv_2_fu_436_vec_3_address0),.vec_3_ce0(grp_spmv_Pipeline_spmv_2_fu_436_vec_3_ce0),.vec_3_q0(vec_3_q0),.vec_3_address1(grp_spmv_Pipeline_spmv_2_fu_436_vec_3_address1),.vec_3_ce1(grp_spmv_Pipeline_spmv_2_fu_436_vec_3_ce1),.vec_3_q1(vec_3_q1),.tmp_end(tmp_end_reg_1370),.sum_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_out),.sum_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_out_ap_vld),.sum_31_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_31_out),.sum_31_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_31_out_ap_vld),.sum_30_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_30_out),.sum_30_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_30_out_ap_vld),.sum_29_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_29_out),.sum_29_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_29_out_ap_vld),.sum_28_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_28_out),.sum_28_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_28_out_ap_vld),.sum_27_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_27_out),.sum_27_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_27_out_ap_vld),.sum_26_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_26_out),.sum_26_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_26_out_ap_vld),.sum_25_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_25_out),.sum_25_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_25_out_ap_vld),.sum_24_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_24_out),.sum_24_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_24_out_ap_vld),.sum_23_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_23_out),.sum_23_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_23_out_ap_vld),.sum_22_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_22_out),.sum_22_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_22_out_ap_vld),.sum_21_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_21_out),.sum_21_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_21_out_ap_vld),.sum_20_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_20_out),.sum_20_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_20_out_ap_vld),.sum_19_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_19_out),.sum_19_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_19_out_ap_vld),.sum_18_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_18_out),.sum_18_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_18_out_ap_vld),.sum_17_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_17_out),.sum_17_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_17_out_ap_vld),.sum_16_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_16_out),.sum_16_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_16_out_ap_vld),.sum_15_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_15_out),.sum_15_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_15_out_ap_vld),.sum_14_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_14_out),.sum_14_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_14_out_ap_vld),.sum_13_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_13_out),.sum_13_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_13_out_ap_vld),.sum_12_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_12_out),.sum_12_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_12_out_ap_vld),.sum_11_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_11_out),.sum_11_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_11_out_ap_vld),.sum_10_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_10_out),.sum_10_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_10_out_ap_vld),.sum_9_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_9_out),.sum_9_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_9_out_ap_vld),.sum_8_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_8_out),.sum_8_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_8_out_ap_vld),.sum_7_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_7_out),.sum_7_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_7_out_ap_vld),.sum_6_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_6_out),.sum_6_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_6_out_ap_vld),.sum_5_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_5_out),.sum_5_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_5_out_ap_vld),.sum_4_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_4_out),.sum_4_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_4_out_ap_vld),.sum_3_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_3_out),.sum_3_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_3_out_ap_vld),.sum_2_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_2_out),.sum_2_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_2_out_ap_vld),.sum_1_out(grp_spmv_Pipeline_spmv_2_fu_436_sum_1_out),.sum_1_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_436_sum_1_out_ap_vld),.ap_return(grp_spmv_Pipeline_spmv_2_fu_436_ap_return));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U117(.din0(rowDelimiters_0_q1),.din1(rowDelimiters_1_q1),.din2(rowDelimiters_2_q1),.din3(rowDelimiters_3_q1),.def(tmp_begin_fu_553_p9),.sel(trunc_ln12_reg_1311),.dout(tmp_begin_fu_553_p11));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U118(.din0(rowDelimiters_0_q0),.din1(rowDelimiters_1_q0),.din2(rowDelimiters_2_q0),.din3(rowDelimiters_3_q0),.def(tmp_end_fu_577_p9),.sel(trunc_ln12_reg_1311),.dout(tmp_end_fu_577_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_spmv_Pipeline_spmv_2_fu_436_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_spmv_Pipeline_spmv_2_fu_436_ap_start_reg <= 1'b1;
        end else if ((grp_spmv_Pipeline_spmv_2_fu_436_ap_ready == 1'b1)) begin
            grp_spmv_Pipeline_spmv_2_fu_436_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_152 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_fu_152 <= add_ln15_reg_1306;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln15_reg_1306 <= add_ln15_fu_507_p2;
        trunc_ln12_reg_1311 <= trunc_ln12_fu_513_p1;
        zext_ln9_reg_1317[6 : 0] <= zext_ln9_fu_527_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_14_reg_1412 <= empty_14_fu_608_p2;
        empty_16_reg_1417 <= empty_16_fu_614_p2;
        empty_18_reg_1422 <= empty_18_fu_620_p2;
        empty_reg_1407 <= empty_fu_602_p2;
        targetBlock_reg_1376 <= grp_spmv_Pipeline_spmv_2_fu_436_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_39_reg_1427 <= empty_39_fu_821_p3;
        empty_40_reg_1432 <= empty_40_fu_829_p2;
        empty_42_reg_1437 <= empty_42_fu_834_p2;
        empty_44_reg_1442 <= empty_44_fu_839_p2;
        empty_46_reg_1447 <= empty_46_fu_844_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_67_reg_1452 <= empty_67_fu_1040_p3;
        empty_68_reg_1457 <= empty_68_fu_1048_p2;
        empty_70_reg_1462 <= empty_70_fu_1053_p2;
        empty_72_reg_1467 <= empty_72_fu_1058_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_10_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_10_loc_fu_192 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_10_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_11_loc_fu_196 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_12_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_12_loc_fu_200 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_12_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_13_loc_fu_204 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_14_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_14_loc_fu_208 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_14_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_15_loc_fu_212 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_16_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_16_loc_fu_216 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_17_loc_fu_220 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_18_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_18_loc_fu_224 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_18_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_19_loc_fu_228 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_loc_fu_156 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_20_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_20_loc_fu_232 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_20_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_21_loc_fu_236 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_22_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_22_loc_fu_240 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_22_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_23_loc_fu_244 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_24_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_24_loc_fu_248 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_24_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_25_loc_fu_252 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_26_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_26_loc_fu_256 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_26_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_27_loc_fu_260 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_28_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_28_loc_fu_264 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_28_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_29_loc_fu_268 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_2_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_2_loc_fu_160 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_2_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_30_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_30_loc_fu_272 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_30_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_31_loc_fu_276 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_3_loc_fu_164 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_4_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_4_loc_fu_168 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_5_loc_fu_172 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_6_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_6_loc_fu_176 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_6_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_7_loc_fu_180 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_8_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_8_loc_fu_184 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_8_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_9_loc_fu_188 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_436_sum_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_loc_fu_280 <= grp_spmv_Pipeline_spmv_2_fu_436_sum_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_begin_reg_1365 <= tmp_begin_fu_553_p11;
        tmp_end_reg_1370 <= tmp_end_fu_577_p11;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_spmv_Pipeline_spmv_2_fu_436_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln12_fu_501_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln12_fu_501_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (trunc_ln12_reg_1311 == 2'd0))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (trunc_ln12_reg_1311 == 2'd1))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        out_2_ce0_local = 1'b1;
    end else begin
        out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (trunc_ln12_reg_1311 == 2'd2))) begin
        out_2_we0_local = 1'b1;
    end else begin
        out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        out_3_ce0_local = 1'b1;
    end else begin
        out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (trunc_ln12_reg_1311 == 2'd3))) begin
        out_3_we0_local = 1'b1;
    end else begin
        out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_ce0_local = 1'b1;
    end else begin
        rowDelimiters_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_ce1_local = 1'b1;
    end else begin
        rowDelimiters_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce0_local = 1'b1;
    end else begin
        rowDelimiters_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce1_local = 1'b1;
    end else begin
        rowDelimiters_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_ce0_local = 1'b1;
    end else begin
        rowDelimiters_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_ce1_local = 1'b1;
    end else begin
        rowDelimiters_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce0_local = 1'b1;
    end else begin
        rowDelimiters_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce1_local = 1'b1;
    end else begin
        rowDelimiters_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln12_fu_501_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_spmv_Pipeline_spmv_2_fu_436_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_507_p2 = (i_fu_152 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign bitcast_ln20_fu_1092_p1 = sum_0_lcssa_ph_fu_1085_p3;
assign cols_address0 = grp_spmv_Pipeline_spmv_2_fu_436_cols_address0;
assign cols_address1 = grp_spmv_Pipeline_spmv_2_fu_436_cols_address1;
assign cols_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_cols_ce0;
assign cols_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_cols_ce1;
assign empty_13_fu_671_p3 = ((empty_reg_1407[0:0] == 1'b1) ? sum_loc_fu_280 : sum_1_loc_fu_156);
assign empty_14_fu_608_p2 = ((grp_spmv_Pipeline_spmv_2_fu_436_ap_return == 5'd1) ? 1'b1 : 1'b0);
assign empty_15_fu_678_p3 = ((empty_14_reg_1412[0:0] == 1'b1) ? sum_31_loc_fu_276 : empty_13_fu_671_p3);
assign empty_16_fu_614_p2 = ((grp_spmv_Pipeline_spmv_2_fu_436_ap_return == 5'd2) ? 1'b1 : 1'b0);
assign empty_17_fu_685_p3 = ((empty_16_reg_1417[0:0] == 1'b1) ? sum_30_loc_fu_272 : empty_15_fu_678_p3);
assign empty_18_fu_620_p2 = ((grp_spmv_Pipeline_spmv_2_fu_436_ap_return == 5'd3) ? 1'b1 : 1'b0);
assign empty_19_fu_692_p3 = ((empty_18_reg_1422[0:0] == 1'b1) ? sum_29_loc_fu_268 : empty_17_fu_685_p3);
assign empty_20_fu_699_p2 = ((targetBlock_reg_1376 == 5'd4) ? 1'b1 : 1'b0);
assign empty_21_fu_704_p3 = ((empty_20_fu_699_p2[0:0] == 1'b1) ? sum_28_loc_fu_264 : empty_19_fu_692_p3);
assign empty_22_fu_712_p2 = ((targetBlock_reg_1376 == 5'd5) ? 1'b1 : 1'b0);
assign empty_23_fu_717_p3 = ((empty_22_fu_712_p2[0:0] == 1'b1) ? sum_27_loc_fu_260 : empty_21_fu_704_p3);
assign empty_24_fu_725_p2 = ((targetBlock_reg_1376 == 5'd6) ? 1'b1 : 1'b0);
assign empty_25_fu_730_p3 = ((empty_24_fu_725_p2[0:0] == 1'b1) ? sum_26_loc_fu_256 : empty_23_fu_717_p3);
assign empty_26_fu_738_p2 = ((targetBlock_reg_1376 == 5'd7) ? 1'b1 : 1'b0);
assign empty_27_fu_743_p3 = ((empty_26_fu_738_p2[0:0] == 1'b1) ? sum_25_loc_fu_252 : empty_25_fu_730_p3);
assign empty_28_fu_751_p2 = ((targetBlock_reg_1376 == 5'd8) ? 1'b1 : 1'b0);
assign empty_29_fu_756_p3 = ((empty_28_fu_751_p2[0:0] == 1'b1) ? sum_24_loc_fu_248 : empty_27_fu_743_p3);
assign empty_30_fu_764_p2 = ((targetBlock_reg_1376 == 5'd9) ? 1'b1 : 1'b0);
assign empty_31_fu_769_p3 = ((empty_30_fu_764_p2[0:0] == 1'b1) ? sum_23_loc_fu_244 : empty_29_fu_756_p3);
assign empty_32_fu_777_p2 = ((targetBlock_reg_1376 == 5'd10) ? 1'b1 : 1'b0);
assign empty_33_fu_782_p3 = ((empty_32_fu_777_p2[0:0] == 1'b1) ? sum_22_loc_fu_240 : empty_31_fu_769_p3);
assign empty_34_fu_790_p2 = ((targetBlock_reg_1376 == 5'd11) ? 1'b1 : 1'b0);
assign empty_35_fu_795_p3 = ((empty_34_fu_790_p2[0:0] == 1'b1) ? sum_21_loc_fu_236 : empty_33_fu_782_p3);
assign empty_36_fu_803_p2 = ((targetBlock_reg_1376 == 5'd12) ? 1'b1 : 1'b0);
assign empty_37_fu_808_p3 = ((empty_36_fu_803_p2[0:0] == 1'b1) ? sum_20_loc_fu_232 : empty_35_fu_795_p3);
assign empty_38_fu_816_p2 = ((targetBlock_reg_1376 == 5'd13) ? 1'b1 : 1'b0);
assign empty_39_fu_821_p3 = ((empty_38_fu_816_p2[0:0] == 1'b1) ? sum_19_loc_fu_228 : empty_37_fu_808_p3);
assign empty_40_fu_829_p2 = ((targetBlock_reg_1376 == 5'd14) ? 1'b1 : 1'b0);
assign empty_41_fu_891_p3 = ((empty_40_reg_1432[0:0] == 1'b1) ? sum_18_loc_fu_224 : empty_39_reg_1427);
assign empty_42_fu_834_p2 = ((targetBlock_reg_1376 == 5'd15) ? 1'b1 : 1'b0);
assign empty_43_fu_897_p3 = ((empty_42_reg_1437[0:0] == 1'b1) ? sum_17_loc_fu_220 : empty_41_fu_891_p3);
assign empty_44_fu_839_p2 = ((targetBlock_reg_1376 == 5'd16) ? 1'b1 : 1'b0);
assign empty_45_fu_904_p3 = ((empty_44_reg_1442[0:0] == 1'b1) ? sum_16_loc_fu_216 : empty_43_fu_897_p3);
assign empty_46_fu_844_p2 = ((targetBlock_reg_1376 == 5'd17) ? 1'b1 : 1'b0);
assign empty_47_fu_911_p3 = ((empty_46_reg_1447[0:0] == 1'b1) ? sum_15_loc_fu_212 : empty_45_fu_904_p3);
assign empty_48_fu_918_p2 = ((targetBlock_reg_1376 == 5'd18) ? 1'b1 : 1'b0);
assign empty_49_fu_923_p3 = ((empty_48_fu_918_p2[0:0] == 1'b1) ? sum_14_loc_fu_208 : empty_47_fu_911_p3);
assign empty_50_fu_931_p2 = ((targetBlock_reg_1376 == 5'd19) ? 1'b1 : 1'b0);
assign empty_51_fu_936_p3 = ((empty_50_fu_931_p2[0:0] == 1'b1) ? sum_13_loc_fu_204 : empty_49_fu_923_p3);
assign empty_52_fu_944_p2 = ((targetBlock_reg_1376 == 5'd20) ? 1'b1 : 1'b0);
assign empty_53_fu_949_p3 = ((empty_52_fu_944_p2[0:0] == 1'b1) ? sum_12_loc_fu_200 : empty_51_fu_936_p3);
assign empty_54_fu_957_p2 = ((targetBlock_reg_1376 == 5'd21) ? 1'b1 : 1'b0);
assign empty_55_fu_962_p3 = ((empty_54_fu_957_p2[0:0] == 1'b1) ? sum_11_loc_fu_196 : empty_53_fu_949_p3);
assign empty_56_fu_970_p2 = ((targetBlock_reg_1376 == 5'd22) ? 1'b1 : 1'b0);
assign empty_57_fu_975_p3 = ((empty_56_fu_970_p2[0:0] == 1'b1) ? sum_10_loc_fu_192 : empty_55_fu_962_p3);
assign empty_58_fu_983_p2 = ((targetBlock_reg_1376 == 5'd23) ? 1'b1 : 1'b0);
assign empty_59_fu_988_p3 = ((empty_58_fu_983_p2[0:0] == 1'b1) ? sum_9_loc_fu_188 : empty_57_fu_975_p3);
assign empty_60_fu_996_p2 = ((targetBlock_reg_1376 == 5'd24) ? 1'b1 : 1'b0);
assign empty_61_fu_1001_p3 = ((empty_60_fu_996_p2[0:0] == 1'b1) ? sum_8_loc_fu_184 : empty_59_fu_988_p3);
assign empty_62_fu_1009_p2 = ((targetBlock_reg_1376 == 5'd25) ? 1'b1 : 1'b0);
assign empty_63_fu_1014_p3 = ((empty_62_fu_1009_p2[0:0] == 1'b1) ? sum_7_loc_fu_180 : empty_61_fu_1001_p3);
assign empty_64_fu_1022_p2 = ((targetBlock_reg_1376 == 5'd26) ? 1'b1 : 1'b0);
assign empty_65_fu_1027_p3 = ((empty_64_fu_1022_p2[0:0] == 1'b1) ? sum_6_loc_fu_176 : empty_63_fu_1014_p3);
assign empty_66_fu_1035_p2 = ((targetBlock_reg_1376 == 5'd27) ? 1'b1 : 1'b0);
assign empty_67_fu_1040_p3 = ((empty_66_fu_1035_p2[0:0] == 1'b1) ? sum_5_loc_fu_172 : empty_65_fu_1027_p3);
assign empty_68_fu_1048_p2 = ((targetBlock_reg_1376 == 5'd28) ? 1'b1 : 1'b0);
assign empty_69_fu_1072_p3 = ((empty_68_reg_1457[0:0] == 1'b1) ? sum_4_loc_fu_168 : empty_67_reg_1452);
assign empty_70_fu_1053_p2 = ((targetBlock_reg_1376 == 5'd29) ? 1'b1 : 1'b0);
assign empty_71_fu_1078_p3 = ((empty_70_reg_1462[0:0] == 1'b1) ? sum_3_loc_fu_164 : empty_69_fu_1072_p3);
assign empty_72_fu_1058_p2 = ((targetBlock_reg_1376 == 5'd30) ? 1'b1 : 1'b0);
assign empty_fu_602_p2 = ((grp_spmv_Pipeline_spmv_2_fu_436_ap_return == 5'd0) ? 1'b1 : 1'b0);
assign grp_spmv_Pipeline_spmv_2_fu_436_ap_start = grp_spmv_Pipeline_spmv_2_fu_436_ap_start_reg;
assign icmp_ln12_fu_501_p2 = ((i_fu_152 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_517_p4 = {{i_fu_152[8:2]}};
assign lshr_ln_fu_535_p4 = {{add_ln15_fu_507_p2[8:2]}};
assign out_0_address0 = zext_ln9_reg_1317;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_1092_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_1317;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_fu_1092_p1;
assign out_1_we0 = out_1_we0_local;
assign out_2_address0 = zext_ln9_reg_1317;
assign out_2_ce0 = out_2_ce0_local;
assign out_2_d0 = bitcast_ln20_fu_1092_p1;
assign out_2_we0 = out_2_we0_local;
assign out_3_address0 = zext_ln9_reg_1317;
assign out_3_ce0 = out_3_ce0_local;
assign out_3_d0 = bitcast_ln20_fu_1092_p1;
assign out_3_we0 = out_3_we0_local;
assign rowDelimiters_0_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_0_address1 = zext_ln9_fu_527_p1;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_0_ce1 = rowDelimiters_0_ce1_local;
assign rowDelimiters_1_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_1_address1 = zext_ln9_fu_527_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign rowDelimiters_1_ce1 = rowDelimiters_1_ce1_local;
assign rowDelimiters_2_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_2_address1 = zext_ln9_fu_527_p1;
assign rowDelimiters_2_ce0 = rowDelimiters_2_ce0_local;
assign rowDelimiters_2_ce1 = rowDelimiters_2_ce1_local;
assign rowDelimiters_3_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_3_address1 = zext_ln9_fu_527_p1;
assign rowDelimiters_3_ce0 = rowDelimiters_3_ce0_local;
assign rowDelimiters_3_ce1 = rowDelimiters_3_ce1_local;
assign sum_0_lcssa_ph_fu_1085_p3 = ((empty_72_reg_1467[0:0] == 1'b1) ? sum_2_loc_fu_160 : empty_71_fu_1078_p3);
assign tmp_begin_fu_553_p9 = 'bx;
assign tmp_end_fu_577_p9 = 'bx;
assign trunc_ln12_fu_513_p1 = i_fu_152[1:0];
assign val_0_address0 = grp_spmv_Pipeline_spmv_2_fu_436_val_0_address0;
assign val_0_address1 = grp_spmv_Pipeline_spmv_2_fu_436_val_0_address1;
assign val_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_val_0_ce0;
assign val_0_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_val_0_ce1;
assign val_1_address0 = grp_spmv_Pipeline_spmv_2_fu_436_val_1_address0;
assign val_1_address1 = grp_spmv_Pipeline_spmv_2_fu_436_val_1_address1;
assign val_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_val_1_ce0;
assign val_1_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_val_1_ce1;
assign val_2_address0 = grp_spmv_Pipeline_spmv_2_fu_436_val_2_address0;
assign val_2_address1 = grp_spmv_Pipeline_spmv_2_fu_436_val_2_address1;
assign val_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_val_2_ce0;
assign val_2_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_val_2_ce1;
assign val_3_address0 = grp_spmv_Pipeline_spmv_2_fu_436_val_3_address0;
assign val_3_address1 = grp_spmv_Pipeline_spmv_2_fu_436_val_3_address1;
assign val_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_val_3_ce0;
assign val_3_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_val_3_ce1;
assign vec_0_address0 = grp_spmv_Pipeline_spmv_2_fu_436_vec_0_address0;
assign vec_0_address1 = grp_spmv_Pipeline_spmv_2_fu_436_vec_0_address1;
assign vec_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_vec_0_ce0;
assign vec_0_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_vec_0_ce1;
assign vec_1_address0 = grp_spmv_Pipeline_spmv_2_fu_436_vec_1_address0;
assign vec_1_address1 = grp_spmv_Pipeline_spmv_2_fu_436_vec_1_address1;
assign vec_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_vec_1_ce0;
assign vec_1_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_vec_1_ce1;
assign vec_2_address0 = grp_spmv_Pipeline_spmv_2_fu_436_vec_2_address0;
assign vec_2_address1 = grp_spmv_Pipeline_spmv_2_fu_436_vec_2_address1;
assign vec_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_vec_2_ce0;
assign vec_2_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_vec_2_ce1;
assign vec_3_address0 = grp_spmv_Pipeline_spmv_2_fu_436_vec_3_address0;
assign vec_3_address1 = grp_spmv_Pipeline_spmv_2_fu_436_vec_3_address1;
assign vec_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_436_vec_3_ce0;
assign vec_3_ce1 = grp_spmv_Pipeline_spmv_2_fu_436_vec_3_ce1;
assign zext_ln15_fu_545_p1 = lshr_ln_fu_535_p4;
assign zext_ln9_fu_527_p1 = lshr_ln9_fu_517_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_1317[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 