module md (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,n_points_address0,n_points_ce0,n_points_q0,force_r_address0,force_r_ce0,force_r_we0,force_r_d0,force_r_q0,position_address0,position_ce0,position_q0,position_address1,position_ce1,position_q1); 
parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] n_points_address0;
output   n_points_ce0;
input  [31:0] n_points_q0;
output  [9:0] force_r_address0;
output   force_r_ce0;
output   force_r_we0;
output  [191:0] force_r_d0;
input  [191:0] force_r_q0;
output  [9:0] position_address0;
output   position_ce0;
input  [191:0] position_q0;
output  [9:0] position_address1;
output   position_ce1;
input  [191:0] position_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] position_address0;
reg position_ce0;
reg position_ce1;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln14_fu_824_p2;
reg   [2:0] add_ln14_reg_3079;
wire    ap_CS_fsm_state2;
wire   [5:0] zext_ln14_fu_838_p1;
reg   [5:0] zext_ln14_reg_3084;
wire   [2:0] smax164_cast_fu_860_p1;
reg   [2:0] smax164_cast_reg_3089;
wire   [2:0] cond24_fu_876_p3;
reg   [2:0] cond24_reg_3094;
wire   [2:0] add_ln15_fu_890_p2;
reg   [2:0] add_ln15_reg_3102;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_fu_905_p3;
reg   [7:0] tmp_reg_3107;
wire   [2:0] smax159_cast_fu_931_p1;
reg   [2:0] smax159_cast_reg_3112;
wire   [2:0] cond47_fu_947_p3;
reg   [2:0] cond47_reg_3117;
wire   [2:0] add_ln16_fu_976_p2;
reg   [2:0] add_ln16_reg_3125;
wire    ap_CS_fsm_state4;
wire   [9:0] add_ln16_2_fu_1020_p2;
reg   [9:0] add_ln16_2_reg_3135;
wire   [2:0] cond70_fu_1038_p3;
reg   [2:0] cond70_reg_3140;
wire   [2:0] add_ln15_1_fu_1046_p2;
wire   [2:0] smax_cast_fu_1070_p1;
reg   [2:0] smax_cast_reg_3150;
wire    ap_CS_fsm_state5;
reg   [31:0] n_points_load_reg_3155;
wire   [5:0] zext_ln8_fu_1087_p1;
reg   [5:0] zext_ln8_reg_3163;
wire    ap_CS_fsm_state6;
wire   [2:0] add_ln16_1_fu_1091_p2;
wire   [7:0] tmp_140_fu_1111_p3;
reg   [7:0] tmp_140_reg_3176;
wire    ap_CS_fsm_state7;
wire   [2:0] add_ln18_fu_1119_p2;
wire    ap_CS_fsm_state8;
wire   [9:0] add_ln8_fu_1168_p2;
reg   [9:0] add_ln8_reg_3194;
wire   [2:0] add_ln19_fu_1174_p2;
reg   [31:0] q_idx_range_reg_3204;
wire    ap_CS_fsm_state9;
wire   [9:0] add_ln24_fu_1189_p2;
reg   [9:0] add_ln24_reg_3213;
wire    ap_CS_fsm_state10;
reg   [9:0] force_r_addr_reg_3218;
wire   [2:0] add_ln20_fu_1206_p2;
wire   [190:0] trunc_ln25_fu_1212_p1;
reg   [190:0] trunc_ln25_reg_3233;
wire    ap_CS_fsm_state11;
wire   [63:0] trunc_ln25_3_fu_1216_p1;
reg   [63:0] trunc_ln25_3_reg_3238;
reg   [63:0] trunc_ln25_1_reg_3243;
reg   [63:0] trunc_ln25_2_reg_3248;
wire   [51:0] trunc_ln34_fu_1240_p1;
reg   [51:0] trunc_ln34_reg_3253;
reg   [51:0] trunc_ln34_3_reg_3258;
reg   [51:0] trunc_ln34_5_reg_3263;
wire   [63:0] p_x_fu_1264_p1;
reg   [63:0] p_x_reg_3268;
wire    ap_CS_fsm_state12;
wire   [63:0] p_y_fu_1268_p1;
reg   [63:0] p_y_reg_3273;
wire   [63:0] p_z_fu_1272_p1;
reg   [63:0] p_z_reg_3278;
wire   [63:0] sum_x_fu_1280_p1;
reg   [63:0] sum_x_reg_3283;
wire   [63:0] sum_y_fu_1295_p1;
reg   [63:0] sum_y_reg_3288;
wire   [63:0] sum_z_fu_1310_p1;
reg   [63:0] sum_z_reg_3293;
wire   [4:0] grp_md_Pipeline_loop_q_fu_687_ap_return;
reg   [4:0] targetBlock_reg_3298;
wire    ap_CS_fsm_state13;
wire   [63:0] empty_45_fu_1536_p3;
reg   [63:0] empty_45_reg_3333;
wire    ap_CS_fsm_state14;
wire   [0:0] empty_46_fu_1544_p2;
reg   [0:0] empty_46_reg_3338;
wire   [0:0] empty_48_fu_1549_p2;
reg   [0:0] empty_48_reg_3345;
wire   [0:0] empty_50_fu_1554_p2;
reg   [0:0] empty_50_reg_3352;
wire   [0:0] empty_52_fu_1559_p2;
reg   [0:0] empty_52_reg_3359;
wire   [63:0] empty_96_fu_1636_p3;
reg   [63:0] empty_96_reg_3366;
wire   [63:0] empty_126_fu_1716_p3;
reg   [63:0] empty_126_reg_3371;
wire   [63:0] empty_73_fu_1999_p3;
reg   [63:0] empty_73_reg_3376;
wire    ap_CS_fsm_state15;
wire   [0:0] empty_74_fu_2007_p2;
reg   [0:0] empty_74_reg_3381;
wire   [0:0] empty_76_fu_2012_p2;
reg   [0:0] empty_76_reg_3388;
wire   [0:0] empty_78_fu_2017_p2;
reg   [0:0] empty_78_reg_3395;
wire   [0:0] empty_80_fu_2022_p2;
reg   [0:0] empty_80_reg_3402;
wire   [0:0] empty_82_fu_2027_p2;
reg   [0:0] empty_82_reg_3409;
wire   [0:0] empty_84_fu_2032_p2;
reg   [0:0] empty_84_reg_3416;
wire   [0:0] empty_86_fu_2037_p2;
reg   [0:0] empty_86_reg_3423;
wire   [63:0] empty_110_fu_2141_p3;
reg   [63:0] empty_110_reg_3430;
wire   [63:0] empty_140_fu_2248_p3;
reg   [63:0] empty_140_reg_3435;
wire    grp_md_Pipeline_loop_q_fu_687_ap_start;
wire    grp_md_Pipeline_loop_q_fu_687_ap_done;
wire    grp_md_Pipeline_loop_q_fu_687_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_687_ap_ready;
wire   [9:0] grp_md_Pipeline_loop_q_fu_687_position_address0;
wire    grp_md_Pipeline_loop_q_fu_687_position_ce0;
wire   [9:0] grp_md_Pipeline_loop_q_fu_687_position_address1;
wire    grp_md_Pipeline_loop_q_fu_687_position_ce1;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_1_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_1_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_1_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_63_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_63_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_63_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_63_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_63_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_63_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_61_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_61_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_61_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_61_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_61_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_61_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_59_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_59_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_59_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_59_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_59_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_59_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_57_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_57_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_57_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_57_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_57_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_57_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_55_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_55_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_55_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_55_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_55_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_55_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_53_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_53_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_53_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_53_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_53_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_53_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_51_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_51_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_51_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_51_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_51_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_51_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_49_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_49_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_49_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_49_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_49_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_49_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_47_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_47_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_47_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_47_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_47_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_47_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_45_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_45_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_45_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_45_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_45_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_45_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_43_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_43_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_43_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_43_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_43_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_43_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_41_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_41_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_41_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_41_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_41_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_41_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_39_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_39_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_39_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_39_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_39_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_39_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_37_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_37_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_37_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_37_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_37_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_37_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_35_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_35_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_35_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_35_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_35_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_35_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_33_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_33_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_33_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_33_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_33_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_33_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_31_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_31_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_31_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_29_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_29_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_29_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_27_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_27_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_27_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_25_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_25_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_25_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_23_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_23_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_23_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_21_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_21_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_21_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_19_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_19_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_19_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_17_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_17_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_17_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_15_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_15_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_15_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_13_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_13_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_13_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_11_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_11_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_11_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_9_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_9_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_9_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_7_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_7_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_7_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_5_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_5_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_5_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_x_3_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_x_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_y_3_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_y_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_687_sum_z_3_out;
wire    grp_md_Pipeline_loop_q_fu_687_sum_z_3_out_ap_vld;
reg   [2:0] b0_y_reg_600;
wire   [0:0] icmp_ln14_fu_818_p2;
wire   [0:0] icmp_ln16_fu_970_p2;
reg   [2:0] indvars_iv157_reg_611;
reg   [2:0] b0_z_reg_623;
wire   [0:0] icmp_ln15_fu_884_p2;
wire   [0:0] icmp_ln18_fu_1074_p2;
reg   [2:0] indvars_iv153_reg_634;
reg   [2:0] b1_x_reg_646;
wire   [0:0] icmp_ln19_fu_1097_p2;
reg   [2:0] b1_y_reg_656;
wire   [0:0] icmp_ln20_fu_1125_p2;
reg   [2:0] b1_z_reg_666;
wire   [0:0] icmp_ln24_fu_1184_p2;
reg   [9:0] p_idx_reg_676;
wire    ap_CS_fsm_state16;
reg    grp_md_Pipeline_loop_q_fu_687_ap_start_reg;
reg   [63:0] sum_z_1_loc_fu_550;
reg   [63:0] sum_y_1_loc_fu_546;
reg   [63:0] sum_x_1_loc_fu_542;
reg   [63:0] sum_x_63_loc_fu_538;
reg   [63:0] sum_y_63_loc_fu_534;
reg   [63:0] sum_z_63_loc_fu_530;
reg   [63:0] sum_x_61_loc_fu_526;
reg   [63:0] sum_y_61_loc_fu_522;
reg   [63:0] sum_z_61_loc_fu_518;
reg   [63:0] sum_x_59_loc_fu_514;
reg   [63:0] sum_y_59_loc_fu_510;
reg   [63:0] sum_z_59_loc_fu_506;
reg   [63:0] sum_x_57_loc_fu_502;
reg   [63:0] sum_y_57_loc_fu_498;
reg   [63:0] sum_z_57_loc_fu_494;
reg   [63:0] sum_x_55_loc_fu_490;
reg   [63:0] sum_y_55_loc_fu_486;
reg   [63:0] sum_z_55_loc_fu_482;
reg   [63:0] sum_x_53_loc_fu_478;
reg   [63:0] sum_y_53_loc_fu_474;
reg   [63:0] sum_z_53_loc_fu_470;
reg   [63:0] sum_x_51_loc_fu_466;
reg   [63:0] sum_y_51_loc_fu_462;
reg   [63:0] sum_z_51_loc_fu_458;
reg   [63:0] sum_x_49_loc_fu_454;
reg   [63:0] sum_y_49_loc_fu_450;
reg   [63:0] sum_z_49_loc_fu_446;
reg   [63:0] sum_x_47_loc_fu_442;
reg   [63:0] sum_y_47_loc_fu_438;
reg   [63:0] sum_z_47_loc_fu_434;
reg   [63:0] sum_x_45_loc_fu_430;
reg   [63:0] sum_y_45_loc_fu_426;
reg   [63:0] sum_z_45_loc_fu_422;
reg   [63:0] sum_x_43_loc_fu_418;
reg   [63:0] sum_y_43_loc_fu_414;
reg   [63:0] sum_z_43_loc_fu_410;
reg   [63:0] sum_x_41_loc_fu_406;
reg   [63:0] sum_y_41_loc_fu_402;
reg   [63:0] sum_z_41_loc_fu_398;
reg   [63:0] sum_x_39_loc_fu_394;
reg   [63:0] sum_y_39_loc_fu_390;
reg   [63:0] sum_z_39_loc_fu_386;
reg   [63:0] sum_x_37_loc_fu_382;
reg   [63:0] sum_y_37_loc_fu_378;
reg   [63:0] sum_z_37_loc_fu_374;
reg   [63:0] sum_x_35_loc_fu_370;
reg   [63:0] sum_y_35_loc_fu_366;
reg   [63:0] sum_z_35_loc_fu_362;
reg   [63:0] sum_x_33_loc_fu_358;
reg   [63:0] sum_y_33_loc_fu_354;
reg   [63:0] sum_z_33_loc_fu_350;
reg   [63:0] sum_x_31_loc_fu_346;
reg   [63:0] sum_y_31_loc_fu_342;
reg   [63:0] sum_z_31_loc_fu_338;
reg   [63:0] sum_x_29_loc_fu_334;
reg   [63:0] sum_y_29_loc_fu_330;
reg   [63:0] sum_z_29_loc_fu_326;
reg   [63:0] sum_x_27_loc_fu_322;
reg   [63:0] sum_y_27_loc_fu_318;
reg   [63:0] sum_z_27_loc_fu_314;
reg   [63:0] sum_x_25_loc_fu_310;
reg   [63:0] sum_y_25_loc_fu_306;
reg   [63:0] sum_z_25_loc_fu_302;
reg   [63:0] sum_x_23_loc_fu_298;
reg   [63:0] sum_y_23_loc_fu_294;
reg   [63:0] sum_z_23_loc_fu_290;
reg   [63:0] sum_x_21_loc_fu_286;
reg   [63:0] sum_y_21_loc_fu_282;
reg   [63:0] sum_z_21_loc_fu_278;
reg   [63:0] sum_x_19_loc_fu_274;
reg   [63:0] sum_y_19_loc_fu_270;
reg   [63:0] sum_z_19_loc_fu_266;
reg   [63:0] sum_x_17_loc_fu_262;
reg   [63:0] sum_y_17_loc_fu_258;
reg   [63:0] sum_z_17_loc_fu_254;
reg   [63:0] sum_x_15_loc_fu_250;
reg   [63:0] sum_y_15_loc_fu_246;
reg   [63:0] sum_z_15_loc_fu_242;
reg   [63:0] sum_x_13_loc_fu_238;
reg   [63:0] sum_y_13_loc_fu_234;
reg   [63:0] sum_z_13_loc_fu_230;
reg   [63:0] sum_x_11_loc_fu_226;
reg   [63:0] sum_y_11_loc_fu_222;
reg   [63:0] sum_z_11_loc_fu_218;
reg   [63:0] sum_x_9_loc_fu_214;
reg   [63:0] sum_y_9_loc_fu_210;
reg   [63:0] sum_z_9_loc_fu_206;
reg   [63:0] sum_x_7_loc_fu_202;
reg   [63:0] sum_y_7_loc_fu_198;
reg   [63:0] sum_z_7_loc_fu_194;
reg   [63:0] sum_x_5_loc_fu_190;
reg   [63:0] sum_y_5_loc_fu_186;
reg   [63:0] sum_z_5_loc_fu_182;
reg   [63:0] sum_x_3_loc_fu_178;
reg   [63:0] sum_y_3_loc_fu_174;
reg   [63:0] sum_z_3_loc_fu_170;
wire   [63:0] p_cast6_fu_991_p1;
wire   [63:0] zext_ln23_2_fu_1139_p1;
wire   [63:0] zext_ln26_fu_1200_p1;
reg   [2:0] indvars_iv162_fu_162;
wire   [2:0] add_ln14_1_fu_955_p2;
reg   [2:0] b0_x_fu_166;
reg    n_points_ce0_local;
reg   [5:0] n_points_address0_local;
reg    position_ce0_local;
reg    force_r_ce0_local;
reg    force_r_we0_local;
wire   [191:0] or_ln_fu_2475_p4;
wire   [4:0] tmp_10_fu_830_p3;
wire   [0:0] empty_fu_846_p2;
wire   [1:0] trunc_ln14_fu_842_p1;
wire   [1:0] smax164_fu_852_p3;
wire   [2:0] empty_19_fu_864_p2;
wire   [0:0] cmp18_fu_870_p2;
wire   [5:0] b0_y_cast_fu_896_p1;
wire   [5:0] empty_20_fu_900_p2;
wire   [0:0] empty_21_fu_917_p2;
wire   [1:0] trunc_ln15_fu_913_p1;
wire   [1:0] smax159_fu_923_p3;
wire   [2:0] empty_22_fu_935_p2;
wire   [0:0] cmp41_fu_941_p2;
wire   [7:0] b0_z_cast_fu_982_p1;
wire   [7:0] empty_23_fu_986_p2;
wire   [6:0] trunc_ln26_fu_996_p1;
wire   [8:0] tmp_139_fu_1008_p3;
wire   [9:0] p_shl1_fu_1000_p3;
wire   [9:0] zext_ln16_fu_1016_p1;
wire   [2:0] empty_25_fu_1026_p2;
wire   [0:0] cmp64_fu_1032_p2;
wire   [0:0] empty_24_fu_1056_p2;
wire   [1:0] trunc_ln16_fu_1052_p1;
wire   [1:0] smax_fu_1062_p3;
wire   [4:0] tmp_19_fu_1079_p3;
wire   [5:0] zext_ln23_fu_1102_p1;
wire   [5:0] add_ln23_fu_1106_p2;
wire   [7:0] zext_ln23_1_fu_1130_p1;
wire   [7:0] add_ln23_1_fu_1134_p2;
wire   [6:0] trunc_ln31_fu_1144_p1;
wire   [8:0] tmp_141_fu_1156_p3;
wire   [9:0] p_shl_fu_1148_p3;
wire   [9:0] zext_ln8_1_fu_1164_p1;
wire   [31:0] zext_ln24_fu_1180_p1;
wire   [9:0] add_ln26_fu_1195_p2;
wire   [63:0] trunc_ln26_1_fu_1276_p1;
wire   [63:0] trunc_ln5_fu_1285_p4;
wire   [63:0] trunc_ln6_fu_1300_p4;
wire   [0:0] empty_26_fu_1414_p2;
wire   [0:0] empty_28_fu_1427_p2;
wire   [63:0] empty_27_fu_1419_p3;
wire   [0:0] empty_30_fu_1440_p2;
wire   [63:0] empty_29_fu_1432_p3;
wire   [0:0] empty_32_fu_1453_p2;
wire   [63:0] empty_31_fu_1445_p3;
wire   [0:0] empty_34_fu_1466_p2;
wire   [63:0] empty_33_fu_1458_p3;
wire   [0:0] empty_36_fu_1479_p2;
wire   [63:0] empty_35_fu_1471_p3;
wire   [0:0] empty_38_fu_1492_p2;
wire   [63:0] empty_37_fu_1484_p3;
wire   [0:0] empty_40_fu_1505_p2;
wire   [63:0] empty_39_fu_1497_p3;
wire   [0:0] empty_42_fu_1518_p2;
wire   [63:0] empty_41_fu_1510_p3;
wire   [0:0] empty_44_fu_1531_p2;
wire   [63:0] empty_43_fu_1523_p3;
wire   [63:0] empty_87_fu_1564_p3;
wire   [63:0] empty_88_fu_1572_p3;
wire   [63:0] empty_89_fu_1580_p3;
wire   [63:0] empty_90_fu_1588_p3;
wire   [63:0] empty_91_fu_1596_p3;
wire   [63:0] empty_92_fu_1604_p3;
wire   [63:0] empty_93_fu_1612_p3;
wire   [63:0] empty_94_fu_1620_p3;
wire   [63:0] empty_95_fu_1628_p3;
wire   [63:0] empty_117_fu_1644_p3;
wire   [63:0] empty_118_fu_1652_p3;
wire   [63:0] empty_119_fu_1660_p3;
wire   [63:0] empty_120_fu_1668_p3;
wire   [63:0] empty_121_fu_1676_p3;
wire   [63:0] empty_122_fu_1684_p3;
wire   [63:0] empty_123_fu_1692_p3;
wire   [63:0] empty_124_fu_1700_p3;
wire   [63:0] empty_125_fu_1708_p3;
wire   [63:0] empty_47_fu_1850_p3;
wire   [63:0] empty_49_fu_1856_p3;
wire   [63:0] empty_51_fu_1863_p3;
wire   [0:0] empty_54_fu_1877_p2;
wire   [63:0] empty_53_fu_1870_p3;
wire   [0:0] empty_56_fu_1890_p2;
wire   [63:0] empty_55_fu_1882_p3;
wire   [0:0] empty_58_fu_1903_p2;
wire   [63:0] empty_57_fu_1895_p3;
wire   [0:0] empty_60_fu_1916_p2;
wire   [63:0] empty_59_fu_1908_p3;
wire   [0:0] empty_62_fu_1929_p2;
wire   [63:0] empty_61_fu_1921_p3;
wire   [0:0] empty_64_fu_1942_p2;
wire   [63:0] empty_63_fu_1934_p3;
wire   [0:0] empty_66_fu_1955_p2;
wire   [63:0] empty_65_fu_1947_p3;
wire   [0:0] empty_68_fu_1968_p2;
wire   [63:0] empty_67_fu_1960_p3;
wire   [0:0] empty_70_fu_1981_p2;
wire   [63:0] empty_69_fu_1973_p3;
wire   [0:0] empty_72_fu_1994_p2;
wire   [63:0] empty_71_fu_1986_p3;
wire   [63:0] empty_97_fu_2042_p3;
wire   [63:0] empty_98_fu_2048_p3;
wire   [63:0] empty_99_fu_2055_p3;
wire   [63:0] empty_100_fu_2062_p3;
wire   [63:0] empty_101_fu_2069_p3;
wire   [63:0] empty_102_fu_2077_p3;
wire   [63:0] empty_103_fu_2085_p3;
wire   [63:0] empty_104_fu_2093_p3;
wire   [63:0] empty_105_fu_2101_p3;
wire   [63:0] empty_106_fu_2109_p3;
wire   [63:0] empty_107_fu_2117_p3;
wire   [63:0] empty_108_fu_2125_p3;
wire   [63:0] empty_109_fu_2133_p3;
wire   [63:0] empty_127_fu_2149_p3;
wire   [63:0] empty_128_fu_2155_p3;
wire   [63:0] empty_129_fu_2162_p3;
wire   [63:0] empty_130_fu_2169_p3;
wire   [63:0] empty_131_fu_2176_p3;
wire   [63:0] empty_132_fu_2184_p3;
wire   [63:0] empty_133_fu_2192_p3;
wire   [63:0] empty_134_fu_2200_p3;
wire   [63:0] empty_135_fu_2208_p3;
wire   [63:0] empty_136_fu_2216_p3;
wire   [63:0] empty_137_fu_2224_p3;
wire   [63:0] empty_138_fu_2232_p3;
wire   [63:0] empty_139_fu_2240_p3;
wire   [63:0] empty_75_fu_2319_p3;
wire   [63:0] empty_77_fu_2325_p3;
wire   [63:0] empty_79_fu_2332_p3;
wire   [63:0] empty_81_fu_2339_p3;
wire   [63:0] empty_83_fu_2346_p3;
wire   [63:0] empty_85_fu_2353_p3;
wire   [63:0] empty_111_fu_2367_p3;
wire   [63:0] empty_112_fu_2373_p3;
wire   [63:0] empty_113_fu_2380_p3;
wire   [63:0] empty_114_fu_2387_p3;
wire   [63:0] empty_115_fu_2394_p3;
wire   [63:0] empty_116_fu_2401_p3;
wire   [63:0] empty_141_fu_2415_p3;
wire   [63:0] empty_142_fu_2421_p3;
wire   [63:0] empty_143_fu_2428_p3;
wire   [63:0] empty_144_fu_2435_p3;
wire   [63:0] empty_145_fu_2442_p3;
wire   [63:0] empty_146_fu_2449_p3;
wire   [63:0] sum_x_0_lcssa_ph_fu_2456_p3;
wire   [63:0] sum_y_0_lcssa_ph_fu_2408_p3;
wire   [63:0] sum_z_0_lcssa_ph_fu_2360_p3;
wire   [63:0] bitcast_ln51_fu_2471_p1;
wire   [63:0] bitcast_ln50_fu_2467_p1;
wire   [63:0] bitcast_ln49_fu_2463_p1;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_md_Pipeline_loop_q_fu_687_ap_start_reg = 1'b0;
#0 indvars_iv162_fu_162 = 3'd0;
#0 b0_x_fu_166 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_687(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_687_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_687_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_687_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_687_ap_ready),.sum_z(sum_z_reg_3293),.sum_y(sum_y_reg_3288),.sum_x(sum_x_reg_3283),.sext_ln24(q_idx_range_reg_3204),.p_x(p_x_reg_3268),.p_y(p_y_reg_3273),.p_z(p_z_reg_3278),.mul_ln31(add_ln8_reg_3194),.position_address0(grp_md_Pipeline_loop_q_fu_687_position_address0),.position_ce0(grp_md_Pipeline_loop_q_fu_687_position_ce0),.position_q0(position_q0),.position_address1(grp_md_Pipeline_loop_q_fu_687_position_address1),.position_ce1(grp_md_Pipeline_loop_q_fu_687_position_ce1),.position_q1(position_q1),.q_idx_range(q_idx_range_reg_3204),.position_load(trunc_ln25_reg_3233),.empty(trunc_ln34_reg_3253),.trunc_ln34_3(trunc_ln34_3_reg_3258),.trunc_ln34_5(trunc_ln34_5_reg_3263),.sum_z_1_out(grp_md_Pipeline_loop_q_fu_687_sum_z_1_out),.sum_z_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_1_out_ap_vld),.sum_y_1_out(grp_md_Pipeline_loop_q_fu_687_sum_y_1_out),.sum_y_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_1_out_ap_vld),.sum_x_1_out(grp_md_Pipeline_loop_q_fu_687_sum_x_1_out),.sum_x_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_1_out_ap_vld),.sum_x_63_out(grp_md_Pipeline_loop_q_fu_687_sum_x_63_out),.sum_x_63_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_63_out_ap_vld),.sum_y_63_out(grp_md_Pipeline_loop_q_fu_687_sum_y_63_out),.sum_y_63_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_63_out_ap_vld),.sum_z_63_out(grp_md_Pipeline_loop_q_fu_687_sum_z_63_out),.sum_z_63_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_63_out_ap_vld),.sum_x_61_out(grp_md_Pipeline_loop_q_fu_687_sum_x_61_out),.sum_x_61_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_61_out_ap_vld),.sum_y_61_out(grp_md_Pipeline_loop_q_fu_687_sum_y_61_out),.sum_y_61_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_61_out_ap_vld),.sum_z_61_out(grp_md_Pipeline_loop_q_fu_687_sum_z_61_out),.sum_z_61_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_61_out_ap_vld),.sum_x_59_out(grp_md_Pipeline_loop_q_fu_687_sum_x_59_out),.sum_x_59_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_59_out_ap_vld),.sum_y_59_out(grp_md_Pipeline_loop_q_fu_687_sum_y_59_out),.sum_y_59_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_59_out_ap_vld),.sum_z_59_out(grp_md_Pipeline_loop_q_fu_687_sum_z_59_out),.sum_z_59_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_59_out_ap_vld),.sum_x_57_out(grp_md_Pipeline_loop_q_fu_687_sum_x_57_out),.sum_x_57_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_57_out_ap_vld),.sum_y_57_out(grp_md_Pipeline_loop_q_fu_687_sum_y_57_out),.sum_y_57_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_57_out_ap_vld),.sum_z_57_out(grp_md_Pipeline_loop_q_fu_687_sum_z_57_out),.sum_z_57_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_57_out_ap_vld),.sum_x_55_out(grp_md_Pipeline_loop_q_fu_687_sum_x_55_out),.sum_x_55_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_55_out_ap_vld),.sum_y_55_out(grp_md_Pipeline_loop_q_fu_687_sum_y_55_out),.sum_y_55_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_55_out_ap_vld),.sum_z_55_out(grp_md_Pipeline_loop_q_fu_687_sum_z_55_out),.sum_z_55_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_55_out_ap_vld),.sum_x_53_out(grp_md_Pipeline_loop_q_fu_687_sum_x_53_out),.sum_x_53_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_53_out_ap_vld),.sum_y_53_out(grp_md_Pipeline_loop_q_fu_687_sum_y_53_out),.sum_y_53_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_53_out_ap_vld),.sum_z_53_out(grp_md_Pipeline_loop_q_fu_687_sum_z_53_out),.sum_z_53_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_53_out_ap_vld),.sum_x_51_out(grp_md_Pipeline_loop_q_fu_687_sum_x_51_out),.sum_x_51_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_51_out_ap_vld),.sum_y_51_out(grp_md_Pipeline_loop_q_fu_687_sum_y_51_out),.sum_y_51_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_51_out_ap_vld),.sum_z_51_out(grp_md_Pipeline_loop_q_fu_687_sum_z_51_out),.sum_z_51_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_51_out_ap_vld),.sum_x_49_out(grp_md_Pipeline_loop_q_fu_687_sum_x_49_out),.sum_x_49_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_49_out_ap_vld),.sum_y_49_out(grp_md_Pipeline_loop_q_fu_687_sum_y_49_out),.sum_y_49_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_49_out_ap_vld),.sum_z_49_out(grp_md_Pipeline_loop_q_fu_687_sum_z_49_out),.sum_z_49_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_49_out_ap_vld),.sum_x_47_out(grp_md_Pipeline_loop_q_fu_687_sum_x_47_out),.sum_x_47_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_47_out_ap_vld),.sum_y_47_out(grp_md_Pipeline_loop_q_fu_687_sum_y_47_out),.sum_y_47_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_47_out_ap_vld),.sum_z_47_out(grp_md_Pipeline_loop_q_fu_687_sum_z_47_out),.sum_z_47_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_47_out_ap_vld),.sum_x_45_out(grp_md_Pipeline_loop_q_fu_687_sum_x_45_out),.sum_x_45_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_45_out_ap_vld),.sum_y_45_out(grp_md_Pipeline_loop_q_fu_687_sum_y_45_out),.sum_y_45_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_45_out_ap_vld),.sum_z_45_out(grp_md_Pipeline_loop_q_fu_687_sum_z_45_out),.sum_z_45_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_45_out_ap_vld),.sum_x_43_out(grp_md_Pipeline_loop_q_fu_687_sum_x_43_out),.sum_x_43_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_43_out_ap_vld),.sum_y_43_out(grp_md_Pipeline_loop_q_fu_687_sum_y_43_out),.sum_y_43_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_43_out_ap_vld),.sum_z_43_out(grp_md_Pipeline_loop_q_fu_687_sum_z_43_out),.sum_z_43_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_43_out_ap_vld),.sum_x_41_out(grp_md_Pipeline_loop_q_fu_687_sum_x_41_out),.sum_x_41_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_41_out_ap_vld),.sum_y_41_out(grp_md_Pipeline_loop_q_fu_687_sum_y_41_out),.sum_y_41_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_41_out_ap_vld),.sum_z_41_out(grp_md_Pipeline_loop_q_fu_687_sum_z_41_out),.sum_z_41_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_41_out_ap_vld),.sum_x_39_out(grp_md_Pipeline_loop_q_fu_687_sum_x_39_out),.sum_x_39_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_39_out_ap_vld),.sum_y_39_out(grp_md_Pipeline_loop_q_fu_687_sum_y_39_out),.sum_y_39_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_39_out_ap_vld),.sum_z_39_out(grp_md_Pipeline_loop_q_fu_687_sum_z_39_out),.sum_z_39_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_39_out_ap_vld),.sum_x_37_out(grp_md_Pipeline_loop_q_fu_687_sum_x_37_out),.sum_x_37_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_37_out_ap_vld),.sum_y_37_out(grp_md_Pipeline_loop_q_fu_687_sum_y_37_out),.sum_y_37_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_37_out_ap_vld),.sum_z_37_out(grp_md_Pipeline_loop_q_fu_687_sum_z_37_out),.sum_z_37_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_37_out_ap_vld),.sum_x_35_out(grp_md_Pipeline_loop_q_fu_687_sum_x_35_out),.sum_x_35_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_35_out_ap_vld),.sum_y_35_out(grp_md_Pipeline_loop_q_fu_687_sum_y_35_out),.sum_y_35_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_35_out_ap_vld),.sum_z_35_out(grp_md_Pipeline_loop_q_fu_687_sum_z_35_out),.sum_z_35_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_35_out_ap_vld),.sum_x_33_out(grp_md_Pipeline_loop_q_fu_687_sum_x_33_out),.sum_x_33_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_33_out_ap_vld),.sum_y_33_out(grp_md_Pipeline_loop_q_fu_687_sum_y_33_out),.sum_y_33_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_33_out_ap_vld),.sum_z_33_out(grp_md_Pipeline_loop_q_fu_687_sum_z_33_out),.sum_z_33_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_33_out_ap_vld),.sum_x_31_out(grp_md_Pipeline_loop_q_fu_687_sum_x_31_out),.sum_x_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_31_out_ap_vld),.sum_y_31_out(grp_md_Pipeline_loop_q_fu_687_sum_y_31_out),.sum_y_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_31_out_ap_vld),.sum_z_31_out(grp_md_Pipeline_loop_q_fu_687_sum_z_31_out),.sum_z_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_31_out_ap_vld),.sum_x_29_out(grp_md_Pipeline_loop_q_fu_687_sum_x_29_out),.sum_x_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_29_out_ap_vld),.sum_y_29_out(grp_md_Pipeline_loop_q_fu_687_sum_y_29_out),.sum_y_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_29_out_ap_vld),.sum_z_29_out(grp_md_Pipeline_loop_q_fu_687_sum_z_29_out),.sum_z_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_29_out_ap_vld),.sum_x_27_out(grp_md_Pipeline_loop_q_fu_687_sum_x_27_out),.sum_x_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_27_out_ap_vld),.sum_y_27_out(grp_md_Pipeline_loop_q_fu_687_sum_y_27_out),.sum_y_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_27_out_ap_vld),.sum_z_27_out(grp_md_Pipeline_loop_q_fu_687_sum_z_27_out),.sum_z_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_27_out_ap_vld),.sum_x_25_out(grp_md_Pipeline_loop_q_fu_687_sum_x_25_out),.sum_x_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_25_out_ap_vld),.sum_y_25_out(grp_md_Pipeline_loop_q_fu_687_sum_y_25_out),.sum_y_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_25_out_ap_vld),.sum_z_25_out(grp_md_Pipeline_loop_q_fu_687_sum_z_25_out),.sum_z_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_25_out_ap_vld),.sum_x_23_out(grp_md_Pipeline_loop_q_fu_687_sum_x_23_out),.sum_x_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_23_out_ap_vld),.sum_y_23_out(grp_md_Pipeline_loop_q_fu_687_sum_y_23_out),.sum_y_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_23_out_ap_vld),.sum_z_23_out(grp_md_Pipeline_loop_q_fu_687_sum_z_23_out),.sum_z_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_23_out_ap_vld),.sum_x_21_out(grp_md_Pipeline_loop_q_fu_687_sum_x_21_out),.sum_x_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_21_out_ap_vld),.sum_y_21_out(grp_md_Pipeline_loop_q_fu_687_sum_y_21_out),.sum_y_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_21_out_ap_vld),.sum_z_21_out(grp_md_Pipeline_loop_q_fu_687_sum_z_21_out),.sum_z_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_21_out_ap_vld),.sum_x_19_out(grp_md_Pipeline_loop_q_fu_687_sum_x_19_out),.sum_x_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_19_out_ap_vld),.sum_y_19_out(grp_md_Pipeline_loop_q_fu_687_sum_y_19_out),.sum_y_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_19_out_ap_vld),.sum_z_19_out(grp_md_Pipeline_loop_q_fu_687_sum_z_19_out),.sum_z_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_19_out_ap_vld),.sum_x_17_out(grp_md_Pipeline_loop_q_fu_687_sum_x_17_out),.sum_x_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_17_out_ap_vld),.sum_y_17_out(grp_md_Pipeline_loop_q_fu_687_sum_y_17_out),.sum_y_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_17_out_ap_vld),.sum_z_17_out(grp_md_Pipeline_loop_q_fu_687_sum_z_17_out),.sum_z_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_17_out_ap_vld),.sum_x_15_out(grp_md_Pipeline_loop_q_fu_687_sum_x_15_out),.sum_x_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_15_out_ap_vld),.sum_y_15_out(grp_md_Pipeline_loop_q_fu_687_sum_y_15_out),.sum_y_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_15_out_ap_vld),.sum_z_15_out(grp_md_Pipeline_loop_q_fu_687_sum_z_15_out),.sum_z_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_15_out_ap_vld),.sum_x_13_out(grp_md_Pipeline_loop_q_fu_687_sum_x_13_out),.sum_x_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_13_out_ap_vld),.sum_y_13_out(grp_md_Pipeline_loop_q_fu_687_sum_y_13_out),.sum_y_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_13_out_ap_vld),.sum_z_13_out(grp_md_Pipeline_loop_q_fu_687_sum_z_13_out),.sum_z_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_13_out_ap_vld),.sum_x_11_out(grp_md_Pipeline_loop_q_fu_687_sum_x_11_out),.sum_x_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_11_out_ap_vld),.sum_y_11_out(grp_md_Pipeline_loop_q_fu_687_sum_y_11_out),.sum_y_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_11_out_ap_vld),.sum_z_11_out(grp_md_Pipeline_loop_q_fu_687_sum_z_11_out),.sum_z_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_11_out_ap_vld),.sum_x_9_out(grp_md_Pipeline_loop_q_fu_687_sum_x_9_out),.sum_x_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_9_out_ap_vld),.sum_y_9_out(grp_md_Pipeline_loop_q_fu_687_sum_y_9_out),.sum_y_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_9_out_ap_vld),.sum_z_9_out(grp_md_Pipeline_loop_q_fu_687_sum_z_9_out),.sum_z_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_9_out_ap_vld),.sum_x_7_out(grp_md_Pipeline_loop_q_fu_687_sum_x_7_out),.sum_x_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_7_out_ap_vld),.sum_y_7_out(grp_md_Pipeline_loop_q_fu_687_sum_y_7_out),.sum_y_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_7_out_ap_vld),.sum_z_7_out(grp_md_Pipeline_loop_q_fu_687_sum_z_7_out),.sum_z_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_7_out_ap_vld),.sum_x_5_out(grp_md_Pipeline_loop_q_fu_687_sum_x_5_out),.sum_x_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_5_out_ap_vld),.sum_y_5_out(grp_md_Pipeline_loop_q_fu_687_sum_y_5_out),.sum_y_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_5_out_ap_vld),.sum_z_5_out(grp_md_Pipeline_loop_q_fu_687_sum_z_5_out),.sum_z_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_5_out_ap_vld),.sum_x_3_out(grp_md_Pipeline_loop_q_fu_687_sum_x_3_out),.sum_x_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_x_3_out_ap_vld),.sum_y_3_out(grp_md_Pipeline_loop_q_fu_687_sum_y_3_out),.sum_y_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_y_3_out_ap_vld),.sum_z_3_out(grp_md_Pipeline_loop_q_fu_687_sum_z_3_out),.sum_z_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_687_sum_z_3_out_ap_vld),.ap_return(grp_md_Pipeline_loop_q_fu_687_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_687_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_687_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_687_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_687_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b0_x_fu_166 <= 3'd0;
    end else if (((icmp_ln15_fu_884_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_166 <= add_ln14_reg_3079;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_970_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_600 <= add_ln15_reg_3102;
    end else if (((icmp_ln14_fu_818_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_600 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1074_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_623 <= add_ln16_reg_3125;
    end else if (((icmp_ln15_fu_884_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_623 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_646 <= smax164_cast_reg_3089;
    end else if (((icmp_ln19_fu_1097_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_646 <= add_ln18_fu_1119_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1074_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_656 <= smax159_cast_reg_3112;
    end else if (((icmp_ln20_fu_1125_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_656 <= add_ln19_fu_1174_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_1097_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_666 <= smax_cast_reg_3150;
    end else if (((icmp_ln24_fu_1184_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_666 <= add_ln20_fu_1206_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_1074_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv153_reg_634 <= add_ln16_1_fu_1091_p2;
    end else if (((icmp_ln15_fu_884_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv153_reg_634 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_970_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv157_reg_611 <= add_ln15_1_fu_1046_p2;
    end else if (((icmp_ln14_fu_818_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv157_reg_611 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvars_iv162_fu_162 <= 3'd7;
    end else if (((icmp_ln15_fu_884_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv162_fu_162 <= add_ln14_1_fu_955_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        p_idx_reg_676 <= add_ln24_reg_3213;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_676 <= 10'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_3079 <= add_ln14_fu_824_p2;
        cond24_reg_3094 <= cond24_fu_876_p3;
        smax164_cast_reg_3089[1 : 0] <= smax164_cast_fu_860_p1[1 : 0];
        zext_ln14_reg_3084[4 : 2] <= zext_ln14_fu_838_p1[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_3102 <= add_ln15_fu_890_p2;
        cond47_reg_3117 <= cond47_fu_947_p3;
        smax159_cast_reg_3112[1 : 0] <= smax159_cast_fu_931_p1[1 : 0];
        tmp_reg_3107[7 : 2] <= tmp_fu_905_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_2_reg_3135[9 : 1] <= add_ln16_2_fu_1020_p2[9 : 1];
        add_ln16_reg_3125 <= add_ln16_fu_976_p2;
        cond70_reg_3140 <= cond70_fu_1038_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_3213 <= add_ln24_fu_1189_p2;
        force_r_addr_reg_3218 <= zext_ln26_fu_1200_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln8_reg_3194[9 : 1] <= add_ln8_fu_1168_p2[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        empty_110_reg_3430 <= empty_110_fu_2141_p3;
        empty_140_reg_3435 <= empty_140_fu_2248_p3;
        empty_73_reg_3376 <= empty_73_fu_1999_p3;
        empty_74_reg_3381 <= empty_74_fu_2007_p2;
        empty_76_reg_3388 <= empty_76_fu_2012_p2;
        empty_78_reg_3395 <= empty_78_fu_2017_p2;
        empty_80_reg_3402 <= empty_80_fu_2022_p2;
        empty_82_reg_3409 <= empty_82_fu_2027_p2;
        empty_84_reg_3416 <= empty_84_fu_2032_p2;
        empty_86_reg_3423 <= empty_86_fu_2037_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_126_reg_3371 <= empty_126_fu_1716_p3;
        empty_45_reg_3333 <= empty_45_fu_1536_p3;
        empty_46_reg_3338 <= empty_46_fu_1544_p2;
        empty_48_reg_3345 <= empty_48_fu_1549_p2;
        empty_50_reg_3352 <= empty_50_fu_1554_p2;
        empty_52_reg_3359 <= empty_52_fu_1559_p2;
        empty_96_reg_3366 <= empty_96_fu_1636_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        n_points_load_reg_3155 <= n_points_q0;
        smax_cast_reg_3150[1 : 0] <= smax_cast_fu_1070_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_3268 <= p_x_fu_1264_p1;
        p_y_reg_3273 <= p_y_fu_1268_p1;
        p_z_reg_3278 <= p_z_fu_1272_p1;
        sum_x_reg_3283 <= sum_x_fu_1280_p1;
        sum_y_reg_3288 <= sum_y_fu_1295_p1;
        sum_z_reg_3293 <= sum_z_fu_1310_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        q_idx_range_reg_3204 <= n_points_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_11_loc_fu_226 <= grp_md_Pipeline_loop_q_fu_687_sum_x_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_13_loc_fu_238 <= grp_md_Pipeline_loop_q_fu_687_sum_x_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_15_loc_fu_250 <= grp_md_Pipeline_loop_q_fu_687_sum_x_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_17_loc_fu_262 <= grp_md_Pipeline_loop_q_fu_687_sum_x_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_19_loc_fu_274 <= grp_md_Pipeline_loop_q_fu_687_sum_x_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_1_loc_fu_542 <= grp_md_Pipeline_loop_q_fu_687_sum_x_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_21_loc_fu_286 <= grp_md_Pipeline_loop_q_fu_687_sum_x_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_23_loc_fu_298 <= grp_md_Pipeline_loop_q_fu_687_sum_x_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_25_loc_fu_310 <= grp_md_Pipeline_loop_q_fu_687_sum_x_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_27_loc_fu_322 <= grp_md_Pipeline_loop_q_fu_687_sum_x_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_29_loc_fu_334 <= grp_md_Pipeline_loop_q_fu_687_sum_x_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_31_loc_fu_346 <= grp_md_Pipeline_loop_q_fu_687_sum_x_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_33_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_33_loc_fu_358 <= grp_md_Pipeline_loop_q_fu_687_sum_x_33_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_35_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_35_loc_fu_370 <= grp_md_Pipeline_loop_q_fu_687_sum_x_35_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_37_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_37_loc_fu_382 <= grp_md_Pipeline_loop_q_fu_687_sum_x_37_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_39_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_39_loc_fu_394 <= grp_md_Pipeline_loop_q_fu_687_sum_x_39_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_3_loc_fu_178 <= grp_md_Pipeline_loop_q_fu_687_sum_x_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_41_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_41_loc_fu_406 <= grp_md_Pipeline_loop_q_fu_687_sum_x_41_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_43_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_43_loc_fu_418 <= grp_md_Pipeline_loop_q_fu_687_sum_x_43_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_45_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_45_loc_fu_430 <= grp_md_Pipeline_loop_q_fu_687_sum_x_45_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_47_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_47_loc_fu_442 <= grp_md_Pipeline_loop_q_fu_687_sum_x_47_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_49_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_49_loc_fu_454 <= grp_md_Pipeline_loop_q_fu_687_sum_x_49_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_51_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_51_loc_fu_466 <= grp_md_Pipeline_loop_q_fu_687_sum_x_51_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_53_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_53_loc_fu_478 <= grp_md_Pipeline_loop_q_fu_687_sum_x_53_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_55_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_55_loc_fu_490 <= grp_md_Pipeline_loop_q_fu_687_sum_x_55_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_57_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_57_loc_fu_502 <= grp_md_Pipeline_loop_q_fu_687_sum_x_57_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_59_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_59_loc_fu_514 <= grp_md_Pipeline_loop_q_fu_687_sum_x_59_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_5_loc_fu_190 <= grp_md_Pipeline_loop_q_fu_687_sum_x_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_61_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_61_loc_fu_526 <= grp_md_Pipeline_loop_q_fu_687_sum_x_61_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_63_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_63_loc_fu_538 <= grp_md_Pipeline_loop_q_fu_687_sum_x_63_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_7_loc_fu_202 <= grp_md_Pipeline_loop_q_fu_687_sum_x_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_x_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_9_loc_fu_214 <= grp_md_Pipeline_loop_q_fu_687_sum_x_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_11_loc_fu_222 <= grp_md_Pipeline_loop_q_fu_687_sum_y_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_13_loc_fu_234 <= grp_md_Pipeline_loop_q_fu_687_sum_y_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_15_loc_fu_246 <= grp_md_Pipeline_loop_q_fu_687_sum_y_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_17_loc_fu_258 <= grp_md_Pipeline_loop_q_fu_687_sum_y_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_19_loc_fu_270 <= grp_md_Pipeline_loop_q_fu_687_sum_y_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_1_loc_fu_546 <= grp_md_Pipeline_loop_q_fu_687_sum_y_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_21_loc_fu_282 <= grp_md_Pipeline_loop_q_fu_687_sum_y_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_23_loc_fu_294 <= grp_md_Pipeline_loop_q_fu_687_sum_y_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_25_loc_fu_306 <= grp_md_Pipeline_loop_q_fu_687_sum_y_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_27_loc_fu_318 <= grp_md_Pipeline_loop_q_fu_687_sum_y_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_29_loc_fu_330 <= grp_md_Pipeline_loop_q_fu_687_sum_y_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_31_loc_fu_342 <= grp_md_Pipeline_loop_q_fu_687_sum_y_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_33_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_33_loc_fu_354 <= grp_md_Pipeline_loop_q_fu_687_sum_y_33_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_35_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_35_loc_fu_366 <= grp_md_Pipeline_loop_q_fu_687_sum_y_35_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_37_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_37_loc_fu_378 <= grp_md_Pipeline_loop_q_fu_687_sum_y_37_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_39_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_39_loc_fu_390 <= grp_md_Pipeline_loop_q_fu_687_sum_y_39_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_3_loc_fu_174 <= grp_md_Pipeline_loop_q_fu_687_sum_y_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_41_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_41_loc_fu_402 <= grp_md_Pipeline_loop_q_fu_687_sum_y_41_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_43_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_43_loc_fu_414 <= grp_md_Pipeline_loop_q_fu_687_sum_y_43_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_45_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_45_loc_fu_426 <= grp_md_Pipeline_loop_q_fu_687_sum_y_45_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_47_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_47_loc_fu_438 <= grp_md_Pipeline_loop_q_fu_687_sum_y_47_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_49_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_49_loc_fu_450 <= grp_md_Pipeline_loop_q_fu_687_sum_y_49_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_51_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_51_loc_fu_462 <= grp_md_Pipeline_loop_q_fu_687_sum_y_51_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_53_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_53_loc_fu_474 <= grp_md_Pipeline_loop_q_fu_687_sum_y_53_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_55_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_55_loc_fu_486 <= grp_md_Pipeline_loop_q_fu_687_sum_y_55_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_57_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_57_loc_fu_498 <= grp_md_Pipeline_loop_q_fu_687_sum_y_57_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_59_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_59_loc_fu_510 <= grp_md_Pipeline_loop_q_fu_687_sum_y_59_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_5_loc_fu_186 <= grp_md_Pipeline_loop_q_fu_687_sum_y_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_61_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_61_loc_fu_522 <= grp_md_Pipeline_loop_q_fu_687_sum_y_61_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_63_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_63_loc_fu_534 <= grp_md_Pipeline_loop_q_fu_687_sum_y_63_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_7_loc_fu_198 <= grp_md_Pipeline_loop_q_fu_687_sum_y_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_y_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_9_loc_fu_210 <= grp_md_Pipeline_loop_q_fu_687_sum_y_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_11_loc_fu_218 <= grp_md_Pipeline_loop_q_fu_687_sum_z_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_13_loc_fu_230 <= grp_md_Pipeline_loop_q_fu_687_sum_z_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_15_loc_fu_242 <= grp_md_Pipeline_loop_q_fu_687_sum_z_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_17_loc_fu_254 <= grp_md_Pipeline_loop_q_fu_687_sum_z_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_19_loc_fu_266 <= grp_md_Pipeline_loop_q_fu_687_sum_z_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_1_loc_fu_550 <= grp_md_Pipeline_loop_q_fu_687_sum_z_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_21_loc_fu_278 <= grp_md_Pipeline_loop_q_fu_687_sum_z_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_23_loc_fu_290 <= grp_md_Pipeline_loop_q_fu_687_sum_z_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_25_loc_fu_302 <= grp_md_Pipeline_loop_q_fu_687_sum_z_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_27_loc_fu_314 <= grp_md_Pipeline_loop_q_fu_687_sum_z_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_29_loc_fu_326 <= grp_md_Pipeline_loop_q_fu_687_sum_z_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_31_loc_fu_338 <= grp_md_Pipeline_loop_q_fu_687_sum_z_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_33_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_33_loc_fu_350 <= grp_md_Pipeline_loop_q_fu_687_sum_z_33_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_35_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_35_loc_fu_362 <= grp_md_Pipeline_loop_q_fu_687_sum_z_35_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_37_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_37_loc_fu_374 <= grp_md_Pipeline_loop_q_fu_687_sum_z_37_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_39_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_39_loc_fu_386 <= grp_md_Pipeline_loop_q_fu_687_sum_z_39_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_3_loc_fu_170 <= grp_md_Pipeline_loop_q_fu_687_sum_z_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_41_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_41_loc_fu_398 <= grp_md_Pipeline_loop_q_fu_687_sum_z_41_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_43_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_43_loc_fu_410 <= grp_md_Pipeline_loop_q_fu_687_sum_z_43_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_45_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_45_loc_fu_422 <= grp_md_Pipeline_loop_q_fu_687_sum_z_45_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_47_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_47_loc_fu_434 <= grp_md_Pipeline_loop_q_fu_687_sum_z_47_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_49_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_49_loc_fu_446 <= grp_md_Pipeline_loop_q_fu_687_sum_z_49_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_51_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_51_loc_fu_458 <= grp_md_Pipeline_loop_q_fu_687_sum_z_51_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_53_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_53_loc_fu_470 <= grp_md_Pipeline_loop_q_fu_687_sum_z_53_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_55_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_55_loc_fu_482 <= grp_md_Pipeline_loop_q_fu_687_sum_z_55_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_57_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_57_loc_fu_494 <= grp_md_Pipeline_loop_q_fu_687_sum_z_57_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_59_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_59_loc_fu_506 <= grp_md_Pipeline_loop_q_fu_687_sum_z_59_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_5_loc_fu_182 <= grp_md_Pipeline_loop_q_fu_687_sum_z_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_61_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_61_loc_fu_518 <= grp_md_Pipeline_loop_q_fu_687_sum_z_61_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_63_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_63_loc_fu_530 <= grp_md_Pipeline_loop_q_fu_687_sum_z_63_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_7_loc_fu_194 <= grp_md_Pipeline_loop_q_fu_687_sum_z_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_687_sum_z_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_9_loc_fu_206 <= grp_md_Pipeline_loop_q_fu_687_sum_z_9_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        targetBlock_reg_3298 <= grp_md_Pipeline_loop_q_fu_687_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_140_reg_3176[7 : 2] <= tmp_140_fu_1111_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        trunc_ln25_1_reg_3243 <= {{position_q0[127:64]}};
        trunc_ln25_2_reg_3248 <= {{position_q0[191:128]}};
        trunc_ln25_3_reg_3238 <= trunc_ln25_3_fu_1216_p1;
        trunc_ln25_reg_3233 <= trunc_ln25_fu_1212_p1;
        trunc_ln34_3_reg_3258 <= {{position_q0[115:64]}};
        trunc_ln34_5_reg_3263 <= {{position_q0[179:128]}};
        trunc_ln34_reg_3253 <= trunc_ln34_fu_1240_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        zext_ln8_reg_3163[4 : 2] <= zext_ln8_fu_1087_p1[4 : 2];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_687_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln14_fu_818_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln14_fu_818_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state11))) begin
        force_r_ce0_local = 1'b1;
    end else begin
        force_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        force_r_we0_local = 1'b1;
    end else begin
        force_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_address0_local = zext_ln23_2_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_address0_local = p_cast6_fu_991_p1;
    end else begin
        n_points_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8))) begin
        n_points_ce0_local = 1'b1;
    end else begin
        n_points_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_address0 = grp_md_Pipeline_loop_q_fu_687_position_address0;
    end else begin
        position_address0 = zext_ln26_fu_1200_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_ce0 = grp_md_Pipeline_loop_q_fu_687_position_ce0;
    end else begin
        position_ce0 = position_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_ce0_local = 1'b1;
    end else begin
        position_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_ce1 = grp_md_Pipeline_loop_q_fu_687_position_ce1;
    end else begin
        position_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln14_fu_818_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_884_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_970_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_1074_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_1097_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_1125_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_1184_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_md_Pipeline_loop_q_fu_687_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_1_fu_955_p2 = (indvars_iv162_fu_162 + 3'd1);
assign add_ln14_fu_824_p2 = (b0_x_fu_166 + 3'd1);
assign add_ln15_1_fu_1046_p2 = (indvars_iv157_reg_611 + 3'd1);
assign add_ln15_fu_890_p2 = (b0_y_reg_600 + 3'd1);
assign add_ln16_1_fu_1091_p2 = (indvars_iv153_reg_634 + 3'd1);
assign add_ln16_2_fu_1020_p2 = (p_shl1_fu_1000_p3 + zext_ln16_fu_1016_p1);
assign add_ln16_fu_976_p2 = (b0_z_reg_623 + 3'd1);
assign add_ln18_fu_1119_p2 = (b1_x_reg_646 + 3'd1);
assign add_ln19_fu_1174_p2 = (b1_y_reg_656 + 3'd1);
assign add_ln20_fu_1206_p2 = (b1_z_reg_666 + 3'd1);
assign add_ln23_1_fu_1134_p2 = (tmp_140_reg_3176 + zext_ln23_1_fu_1130_p1);
assign add_ln23_fu_1106_p2 = (zext_ln8_reg_3163 + zext_ln23_fu_1102_p1);
assign add_ln24_fu_1189_p2 = (p_idx_reg_676 + 10'd1);
assign add_ln26_fu_1195_p2 = (add_ln16_2_reg_3135 + p_idx_reg_676);
assign add_ln8_fu_1168_p2 = (p_shl_fu_1148_p3 + zext_ln8_1_fu_1164_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign b0_y_cast_fu_896_p1 = b0_y_reg_600;
assign b0_z_cast_fu_982_p1 = b0_z_reg_623;
assign bitcast_ln49_fu_2463_p1 = sum_x_0_lcssa_ph_fu_2456_p3;
assign bitcast_ln50_fu_2467_p1 = sum_y_0_lcssa_ph_fu_2408_p3;
assign bitcast_ln51_fu_2471_p1 = sum_z_0_lcssa_ph_fu_2360_p3;
assign cmp18_fu_870_p2 = ((empty_19_fu_864_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_941_p2 = ((empty_22_fu_935_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_1032_p2 = ((empty_25_fu_1026_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_876_p3 = ((cmp18_fu_870_p2[0:0] == 1'b1) ? 3'd4 : empty_19_fu_864_p2);
assign cond47_fu_947_p3 = ((cmp41_fu_941_p2[0:0] == 1'b1) ? 3'd4 : empty_22_fu_935_p2);
assign cond70_fu_1038_p3 = ((cmp64_fu_1032_p2[0:0] == 1'b1) ? 3'd4 : empty_25_fu_1026_p2);
assign empty_100_fu_2062_p3 = ((empty_52_reg_3359[0:0] == 1'b1) ? sum_y_39_loc_fu_390 : empty_99_fu_2055_p3);
assign empty_101_fu_2069_p3 = ((empty_54_fu_1877_p2[0:0] == 1'b1) ? sum_y_37_loc_fu_378 : empty_100_fu_2062_p3);
assign empty_102_fu_2077_p3 = ((empty_56_fu_1890_p2[0:0] == 1'b1) ? sum_y_35_loc_fu_366 : empty_101_fu_2069_p3);
assign empty_103_fu_2085_p3 = ((empty_58_fu_1903_p2[0:0] == 1'b1) ? sum_y_33_loc_fu_354 : empty_102_fu_2077_p3);
assign empty_104_fu_2093_p3 = ((empty_60_fu_1916_p2[0:0] == 1'b1) ? sum_y_31_loc_fu_342 : empty_103_fu_2085_p3);
assign empty_105_fu_2101_p3 = ((empty_62_fu_1929_p2[0:0] == 1'b1) ? sum_y_29_loc_fu_330 : empty_104_fu_2093_p3);
assign empty_106_fu_2109_p3 = ((empty_64_fu_1942_p2[0:0] == 1'b1) ? sum_y_27_loc_fu_318 : empty_105_fu_2101_p3);
assign empty_107_fu_2117_p3 = ((empty_66_fu_1955_p2[0:0] == 1'b1) ? sum_y_25_loc_fu_306 : empty_106_fu_2109_p3);
assign empty_108_fu_2125_p3 = ((empty_68_fu_1968_p2[0:0] == 1'b1) ? sum_y_23_loc_fu_294 : empty_107_fu_2117_p3);
assign empty_109_fu_2133_p3 = ((empty_70_fu_1981_p2[0:0] == 1'b1) ? sum_y_21_loc_fu_282 : empty_108_fu_2125_p3);
assign empty_110_fu_2141_p3 = ((empty_72_fu_1994_p2[0:0] == 1'b1) ? sum_y_19_loc_fu_270 : empty_109_fu_2133_p3);
assign empty_111_fu_2367_p3 = ((empty_74_reg_3381[0:0] == 1'b1) ? sum_y_17_loc_fu_258 : empty_110_reg_3430);
assign empty_112_fu_2373_p3 = ((empty_76_reg_3388[0:0] == 1'b1) ? sum_y_15_loc_fu_246 : empty_111_fu_2367_p3);
assign empty_113_fu_2380_p3 = ((empty_78_reg_3395[0:0] == 1'b1) ? sum_y_13_loc_fu_234 : empty_112_fu_2373_p3);
assign empty_114_fu_2387_p3 = ((empty_80_reg_3402[0:0] == 1'b1) ? sum_y_11_loc_fu_222 : empty_113_fu_2380_p3);
assign empty_115_fu_2394_p3 = ((empty_82_reg_3409[0:0] == 1'b1) ? sum_y_9_loc_fu_210 : empty_114_fu_2387_p3);
assign empty_116_fu_2401_p3 = ((empty_84_reg_3416[0:0] == 1'b1) ? sum_y_7_loc_fu_198 : empty_115_fu_2394_p3);
assign empty_117_fu_1644_p3 = ((empty_26_fu_1414_p2[0:0] == 1'b1) ? sum_x_1_loc_fu_542 : sum_x_3_loc_fu_178);
assign empty_118_fu_1652_p3 = ((empty_28_fu_1427_p2[0:0] == 1'b1) ? sum_x_63_loc_fu_538 : empty_117_fu_1644_p3);
assign empty_119_fu_1660_p3 = ((empty_30_fu_1440_p2[0:0] == 1'b1) ? sum_x_61_loc_fu_526 : empty_118_fu_1652_p3);
assign empty_120_fu_1668_p3 = ((empty_32_fu_1453_p2[0:0] == 1'b1) ? sum_x_59_loc_fu_514 : empty_119_fu_1660_p3);
assign empty_121_fu_1676_p3 = ((empty_34_fu_1466_p2[0:0] == 1'b1) ? sum_x_57_loc_fu_502 : empty_120_fu_1668_p3);
assign empty_122_fu_1684_p3 = ((empty_36_fu_1479_p2[0:0] == 1'b1) ? sum_x_55_loc_fu_490 : empty_121_fu_1676_p3);
assign empty_123_fu_1692_p3 = ((empty_38_fu_1492_p2[0:0] == 1'b1) ? sum_x_53_loc_fu_478 : empty_122_fu_1684_p3);
assign empty_124_fu_1700_p3 = ((empty_40_fu_1505_p2[0:0] == 1'b1) ? sum_x_51_loc_fu_466 : empty_123_fu_1692_p3);
assign empty_125_fu_1708_p3 = ((empty_42_fu_1518_p2[0:0] == 1'b1) ? sum_x_49_loc_fu_454 : empty_124_fu_1700_p3);
assign empty_126_fu_1716_p3 = ((empty_44_fu_1531_p2[0:0] == 1'b1) ? sum_x_47_loc_fu_442 : empty_125_fu_1708_p3);
assign empty_127_fu_2149_p3 = ((empty_46_reg_3338[0:0] == 1'b1) ? sum_x_45_loc_fu_430 : empty_126_reg_3371);
assign empty_128_fu_2155_p3 = ((empty_48_reg_3345[0:0] == 1'b1) ? sum_x_43_loc_fu_418 : empty_127_fu_2149_p3);
assign empty_129_fu_2162_p3 = ((empty_50_reg_3352[0:0] == 1'b1) ? sum_x_41_loc_fu_406 : empty_128_fu_2155_p3);
assign empty_130_fu_2169_p3 = ((empty_52_reg_3359[0:0] == 1'b1) ? sum_x_39_loc_fu_394 : empty_129_fu_2162_p3);
assign empty_131_fu_2176_p3 = ((empty_54_fu_1877_p2[0:0] == 1'b1) ? sum_x_37_loc_fu_382 : empty_130_fu_2169_p3);
assign empty_132_fu_2184_p3 = ((empty_56_fu_1890_p2[0:0] == 1'b1) ? sum_x_35_loc_fu_370 : empty_131_fu_2176_p3);
assign empty_133_fu_2192_p3 = ((empty_58_fu_1903_p2[0:0] == 1'b1) ? sum_x_33_loc_fu_358 : empty_132_fu_2184_p3);
assign empty_134_fu_2200_p3 = ((empty_60_fu_1916_p2[0:0] == 1'b1) ? sum_x_31_loc_fu_346 : empty_133_fu_2192_p3);
assign empty_135_fu_2208_p3 = ((empty_62_fu_1929_p2[0:0] == 1'b1) ? sum_x_29_loc_fu_334 : empty_134_fu_2200_p3);
assign empty_136_fu_2216_p3 = ((empty_64_fu_1942_p2[0:0] == 1'b1) ? sum_x_27_loc_fu_322 : empty_135_fu_2208_p3);
assign empty_137_fu_2224_p3 = ((empty_66_fu_1955_p2[0:0] == 1'b1) ? sum_x_25_loc_fu_310 : empty_136_fu_2216_p3);
assign empty_138_fu_2232_p3 = ((empty_68_fu_1968_p2[0:0] == 1'b1) ? sum_x_23_loc_fu_298 : empty_137_fu_2224_p3);
assign empty_139_fu_2240_p3 = ((empty_70_fu_1981_p2[0:0] == 1'b1) ? sum_x_21_loc_fu_286 : empty_138_fu_2232_p3);
assign empty_140_fu_2248_p3 = ((empty_72_fu_1994_p2[0:0] == 1'b1) ? sum_x_19_loc_fu_274 : empty_139_fu_2240_p3);
assign empty_141_fu_2415_p3 = ((empty_74_reg_3381[0:0] == 1'b1) ? sum_x_17_loc_fu_262 : empty_140_reg_3435);
assign empty_142_fu_2421_p3 = ((empty_76_reg_3388[0:0] == 1'b1) ? sum_x_15_loc_fu_250 : empty_141_fu_2415_p3);
assign empty_143_fu_2428_p3 = ((empty_78_reg_3395[0:0] == 1'b1) ? sum_x_13_loc_fu_238 : empty_142_fu_2421_p3);
assign empty_144_fu_2435_p3 = ((empty_80_reg_3402[0:0] == 1'b1) ? sum_x_11_loc_fu_226 : empty_143_fu_2428_p3);
assign empty_145_fu_2442_p3 = ((empty_82_reg_3409[0:0] == 1'b1) ? sum_x_9_loc_fu_214 : empty_144_fu_2435_p3);
assign empty_146_fu_2449_p3 = ((empty_84_reg_3416[0:0] == 1'b1) ? sum_x_7_loc_fu_202 : empty_145_fu_2442_p3);
assign empty_19_fu_864_p2 = (b0_x_fu_166 + 3'd2);
assign empty_20_fu_900_p2 = (zext_ln14_reg_3084 + b0_y_cast_fu_896_p1);
assign empty_21_fu_917_p2 = (($signed(indvars_iv157_reg_611) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_22_fu_935_p2 = (b0_y_reg_600 + 3'd2);
assign empty_23_fu_986_p2 = (tmp_reg_3107 + b0_z_cast_fu_982_p1);
assign empty_24_fu_1056_p2 = (($signed(indvars_iv153_reg_634) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_25_fu_1026_p2 = (b0_z_reg_623 + 3'd2);
assign empty_26_fu_1414_p2 = ((targetBlock_reg_3298 == 5'd0) ? 1'b1 : 1'b0);
assign empty_27_fu_1419_p3 = ((empty_26_fu_1414_p2[0:0] == 1'b1) ? sum_z_1_loc_fu_550 : sum_z_3_loc_fu_170);
assign empty_28_fu_1427_p2 = ((targetBlock_reg_3298 == 5'd1) ? 1'b1 : 1'b0);
assign empty_29_fu_1432_p3 = ((empty_28_fu_1427_p2[0:0] == 1'b1) ? sum_z_63_loc_fu_530 : empty_27_fu_1419_p3);
assign empty_30_fu_1440_p2 = ((targetBlock_reg_3298 == 5'd2) ? 1'b1 : 1'b0);
assign empty_31_fu_1445_p3 = ((empty_30_fu_1440_p2[0:0] == 1'b1) ? sum_z_61_loc_fu_518 : empty_29_fu_1432_p3);
assign empty_32_fu_1453_p2 = ((targetBlock_reg_3298 == 5'd3) ? 1'b1 : 1'b0);
assign empty_33_fu_1458_p3 = ((empty_32_fu_1453_p2[0:0] == 1'b1) ? sum_z_59_loc_fu_506 : empty_31_fu_1445_p3);
assign empty_34_fu_1466_p2 = ((targetBlock_reg_3298 == 5'd4) ? 1'b1 : 1'b0);
assign empty_35_fu_1471_p3 = ((empty_34_fu_1466_p2[0:0] == 1'b1) ? sum_z_57_loc_fu_494 : empty_33_fu_1458_p3);
assign empty_36_fu_1479_p2 = ((targetBlock_reg_3298 == 5'd5) ? 1'b1 : 1'b0);
assign empty_37_fu_1484_p3 = ((empty_36_fu_1479_p2[0:0] == 1'b1) ? sum_z_55_loc_fu_482 : empty_35_fu_1471_p3);
assign empty_38_fu_1492_p2 = ((targetBlock_reg_3298 == 5'd6) ? 1'b1 : 1'b0);
assign empty_39_fu_1497_p3 = ((empty_38_fu_1492_p2[0:0] == 1'b1) ? sum_z_53_loc_fu_470 : empty_37_fu_1484_p3);
assign empty_40_fu_1505_p2 = ((targetBlock_reg_3298 == 5'd7) ? 1'b1 : 1'b0);
assign empty_41_fu_1510_p3 = ((empty_40_fu_1505_p2[0:0] == 1'b1) ? sum_z_51_loc_fu_458 : empty_39_fu_1497_p3);
assign empty_42_fu_1518_p2 = ((targetBlock_reg_3298 == 5'd8) ? 1'b1 : 1'b0);
assign empty_43_fu_1523_p3 = ((empty_42_fu_1518_p2[0:0] == 1'b1) ? sum_z_49_loc_fu_446 : empty_41_fu_1510_p3);
assign empty_44_fu_1531_p2 = ((targetBlock_reg_3298 == 5'd9) ? 1'b1 : 1'b0);
assign empty_45_fu_1536_p3 = ((empty_44_fu_1531_p2[0:0] == 1'b1) ? sum_z_47_loc_fu_434 : empty_43_fu_1523_p3);
assign empty_46_fu_1544_p2 = ((targetBlock_reg_3298 == 5'd10) ? 1'b1 : 1'b0);
assign empty_47_fu_1850_p3 = ((empty_46_reg_3338[0:0] == 1'b1) ? sum_z_45_loc_fu_422 : empty_45_reg_3333);
assign empty_48_fu_1549_p2 = ((targetBlock_reg_3298 == 5'd11) ? 1'b1 : 1'b0);
assign empty_49_fu_1856_p3 = ((empty_48_reg_3345[0:0] == 1'b1) ? sum_z_43_loc_fu_410 : empty_47_fu_1850_p3);
assign empty_50_fu_1554_p2 = ((targetBlock_reg_3298 == 5'd12) ? 1'b1 : 1'b0);
assign empty_51_fu_1863_p3 = ((empty_50_reg_3352[0:0] == 1'b1) ? sum_z_41_loc_fu_398 : empty_49_fu_1856_p3);
assign empty_52_fu_1559_p2 = ((targetBlock_reg_3298 == 5'd13) ? 1'b1 : 1'b0);
assign empty_53_fu_1870_p3 = ((empty_52_reg_3359[0:0] == 1'b1) ? sum_z_39_loc_fu_386 : empty_51_fu_1863_p3);
assign empty_54_fu_1877_p2 = ((targetBlock_reg_3298 == 5'd14) ? 1'b1 : 1'b0);
assign empty_55_fu_1882_p3 = ((empty_54_fu_1877_p2[0:0] == 1'b1) ? sum_z_37_loc_fu_374 : empty_53_fu_1870_p3);
assign empty_56_fu_1890_p2 = ((targetBlock_reg_3298 == 5'd15) ? 1'b1 : 1'b0);
assign empty_57_fu_1895_p3 = ((empty_56_fu_1890_p2[0:0] == 1'b1) ? sum_z_35_loc_fu_362 : empty_55_fu_1882_p3);
assign empty_58_fu_1903_p2 = ((targetBlock_reg_3298 == 5'd16) ? 1'b1 : 1'b0);
assign empty_59_fu_1908_p3 = ((empty_58_fu_1903_p2[0:0] == 1'b1) ? sum_z_33_loc_fu_350 : empty_57_fu_1895_p3);
assign empty_60_fu_1916_p2 = ((targetBlock_reg_3298 == 5'd17) ? 1'b1 : 1'b0);
assign empty_61_fu_1921_p3 = ((empty_60_fu_1916_p2[0:0] == 1'b1) ? sum_z_31_loc_fu_338 : empty_59_fu_1908_p3);
assign empty_62_fu_1929_p2 = ((targetBlock_reg_3298 == 5'd18) ? 1'b1 : 1'b0);
assign empty_63_fu_1934_p3 = ((empty_62_fu_1929_p2[0:0] == 1'b1) ? sum_z_29_loc_fu_326 : empty_61_fu_1921_p3);
assign empty_64_fu_1942_p2 = ((targetBlock_reg_3298 == 5'd19) ? 1'b1 : 1'b0);
assign empty_65_fu_1947_p3 = ((empty_64_fu_1942_p2[0:0] == 1'b1) ? sum_z_27_loc_fu_314 : empty_63_fu_1934_p3);
assign empty_66_fu_1955_p2 = ((targetBlock_reg_3298 == 5'd20) ? 1'b1 : 1'b0);
assign empty_67_fu_1960_p3 = ((empty_66_fu_1955_p2[0:0] == 1'b1) ? sum_z_25_loc_fu_302 : empty_65_fu_1947_p3);
assign empty_68_fu_1968_p2 = ((targetBlock_reg_3298 == 5'd21) ? 1'b1 : 1'b0);
assign empty_69_fu_1973_p3 = ((empty_68_fu_1968_p2[0:0] == 1'b1) ? sum_z_23_loc_fu_290 : empty_67_fu_1960_p3);
assign empty_70_fu_1981_p2 = ((targetBlock_reg_3298 == 5'd22) ? 1'b1 : 1'b0);
assign empty_71_fu_1986_p3 = ((empty_70_fu_1981_p2[0:0] == 1'b1) ? sum_z_21_loc_fu_278 : empty_69_fu_1973_p3);
assign empty_72_fu_1994_p2 = ((targetBlock_reg_3298 == 5'd23) ? 1'b1 : 1'b0);
assign empty_73_fu_1999_p3 = ((empty_72_fu_1994_p2[0:0] == 1'b1) ? sum_z_19_loc_fu_266 : empty_71_fu_1986_p3);
assign empty_74_fu_2007_p2 = ((targetBlock_reg_3298 == 5'd24) ? 1'b1 : 1'b0);
assign empty_75_fu_2319_p3 = ((empty_74_reg_3381[0:0] == 1'b1) ? sum_z_17_loc_fu_254 : empty_73_reg_3376);
assign empty_76_fu_2012_p2 = ((targetBlock_reg_3298 == 5'd25) ? 1'b1 : 1'b0);
assign empty_77_fu_2325_p3 = ((empty_76_reg_3388[0:0] == 1'b1) ? sum_z_15_loc_fu_242 : empty_75_fu_2319_p3);
assign empty_78_fu_2017_p2 = ((targetBlock_reg_3298 == 5'd26) ? 1'b1 : 1'b0);
assign empty_79_fu_2332_p3 = ((empty_78_reg_3395[0:0] == 1'b1) ? sum_z_13_loc_fu_230 : empty_77_fu_2325_p3);
assign empty_80_fu_2022_p2 = ((targetBlock_reg_3298 == 5'd27) ? 1'b1 : 1'b0);
assign empty_81_fu_2339_p3 = ((empty_80_reg_3402[0:0] == 1'b1) ? sum_z_11_loc_fu_218 : empty_79_fu_2332_p3);
assign empty_82_fu_2027_p2 = ((targetBlock_reg_3298 == 5'd28) ? 1'b1 : 1'b0);
assign empty_83_fu_2346_p3 = ((empty_82_reg_3409[0:0] == 1'b1) ? sum_z_9_loc_fu_206 : empty_81_fu_2339_p3);
assign empty_84_fu_2032_p2 = ((targetBlock_reg_3298 == 5'd29) ? 1'b1 : 1'b0);
assign empty_85_fu_2353_p3 = ((empty_84_reg_3416[0:0] == 1'b1) ? sum_z_7_loc_fu_194 : empty_83_fu_2346_p3);
assign empty_86_fu_2037_p2 = ((targetBlock_reg_3298 == 5'd30) ? 1'b1 : 1'b0);
assign empty_87_fu_1564_p3 = ((empty_26_fu_1414_p2[0:0] == 1'b1) ? sum_y_1_loc_fu_546 : sum_y_3_loc_fu_174);
assign empty_88_fu_1572_p3 = ((empty_28_fu_1427_p2[0:0] == 1'b1) ? sum_y_63_loc_fu_534 : empty_87_fu_1564_p3);
assign empty_89_fu_1580_p3 = ((empty_30_fu_1440_p2[0:0] == 1'b1) ? sum_y_61_loc_fu_522 : empty_88_fu_1572_p3);
assign empty_90_fu_1588_p3 = ((empty_32_fu_1453_p2[0:0] == 1'b1) ? sum_y_59_loc_fu_510 : empty_89_fu_1580_p3);
assign empty_91_fu_1596_p3 = ((empty_34_fu_1466_p2[0:0] == 1'b1) ? sum_y_57_loc_fu_498 : empty_90_fu_1588_p3);
assign empty_92_fu_1604_p3 = ((empty_36_fu_1479_p2[0:0] == 1'b1) ? sum_y_55_loc_fu_486 : empty_91_fu_1596_p3);
assign empty_93_fu_1612_p3 = ((empty_38_fu_1492_p2[0:0] == 1'b1) ? sum_y_53_loc_fu_474 : empty_92_fu_1604_p3);
assign empty_94_fu_1620_p3 = ((empty_40_fu_1505_p2[0:0] == 1'b1) ? sum_y_51_loc_fu_462 : empty_93_fu_1612_p3);
assign empty_95_fu_1628_p3 = ((empty_42_fu_1518_p2[0:0] == 1'b1) ? sum_y_49_loc_fu_450 : empty_94_fu_1620_p3);
assign empty_96_fu_1636_p3 = ((empty_44_fu_1531_p2[0:0] == 1'b1) ? sum_y_47_loc_fu_438 : empty_95_fu_1628_p3);
assign empty_97_fu_2042_p3 = ((empty_46_reg_3338[0:0] == 1'b1) ? sum_y_45_loc_fu_426 : empty_96_reg_3366);
assign empty_98_fu_2048_p3 = ((empty_48_reg_3345[0:0] == 1'b1) ? sum_y_43_loc_fu_414 : empty_97_fu_2042_p3);
assign empty_99_fu_2055_p3 = ((empty_50_reg_3352[0:0] == 1'b1) ? sum_y_41_loc_fu_402 : empty_98_fu_2048_p3);
assign empty_fu_846_p2 = (($signed(indvars_iv162_fu_162) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_r_address0 = force_r_addr_reg_3218;
assign force_r_ce0 = force_r_ce0_local;
assign force_r_d0 = or_ln_fu_2475_p4;
assign force_r_we0 = force_r_we0_local;
assign grp_md_Pipeline_loop_q_fu_687_ap_start = grp_md_Pipeline_loop_q_fu_687_ap_start_reg;
assign icmp_ln14_fu_818_p2 = ((b0_x_fu_166 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_884_p2 = ((b0_y_reg_600 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_970_p2 = ((b0_z_reg_623 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1074_p2 = ((b1_x_reg_646 < cond24_reg_3094) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1097_p2 = ((b1_y_reg_656 < cond47_reg_3117) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_1125_p2 = ((b1_z_reg_666 < cond70_reg_3140) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_1184_p2 = (($signed(zext_ln24_fu_1180_p1) < $signed(n_points_load_reg_3155)) ? 1'b1 : 1'b0);
assign n_points_address0 = n_points_address0_local;
assign n_points_ce0 = n_points_ce0_local;
assign or_ln_fu_2475_p4 = {{{bitcast_ln51_fu_2471_p1}, {bitcast_ln50_fu_2467_p1}}, {bitcast_ln49_fu_2463_p1}};
assign p_cast6_fu_991_p1 = empty_23_fu_986_p2;
assign p_shl1_fu_1000_p3 = {{trunc_ln26_fu_996_p1}, {3'd0}};
assign p_shl_fu_1148_p3 = {{trunc_ln31_fu_1144_p1}, {3'd0}};
assign p_x_fu_1264_p1 = trunc_ln25_3_reg_3238;
assign p_y_fu_1268_p1 = trunc_ln25_1_reg_3243;
assign p_z_fu_1272_p1 = trunc_ln25_2_reg_3248;
assign position_address1 = grp_md_Pipeline_loop_q_fu_687_position_address1;
assign smax159_cast_fu_931_p1 = smax159_fu_923_p3;
assign smax159_fu_923_p3 = ((empty_21_fu_917_p2[0:0] == 1'b1) ? trunc_ln15_fu_913_p1 : 2'd0);
assign smax164_cast_fu_860_p1 = smax164_fu_852_p3;
assign smax164_fu_852_p3 = ((empty_fu_846_p2[0:0] == 1'b1) ? trunc_ln14_fu_842_p1 : 2'd0);
assign smax_cast_fu_1070_p1 = smax_fu_1062_p3;
assign smax_fu_1062_p3 = ((empty_24_fu_1056_p2[0:0] == 1'b1) ? trunc_ln16_fu_1052_p1 : 2'd0);
assign sum_x_0_lcssa_ph_fu_2456_p3 = ((empty_86_reg_3423[0:0] == 1'b1) ? sum_x_5_loc_fu_190 : empty_146_fu_2449_p3);
assign sum_x_fu_1280_p1 = trunc_ln26_1_fu_1276_p1;
assign sum_y_0_lcssa_ph_fu_2408_p3 = ((empty_86_reg_3423[0:0] == 1'b1) ? sum_y_5_loc_fu_186 : empty_116_fu_2401_p3);
assign sum_y_fu_1295_p1 = trunc_ln5_fu_1285_p4;
assign sum_z_0_lcssa_ph_fu_2360_p3 = ((empty_86_reg_3423[0:0] == 1'b1) ? sum_z_5_loc_fu_182 : empty_85_fu_2353_p3);
assign sum_z_fu_1310_p1 = trunc_ln6_fu_1300_p4;
assign tmp_10_fu_830_p3 = {{b0_x_fu_166}, {2'd0}};
assign tmp_139_fu_1008_p3 = {{empty_23_fu_986_p2}, {1'd0}};
assign tmp_140_fu_1111_p3 = {{add_ln23_fu_1106_p2}, {2'd0}};
assign tmp_141_fu_1156_p3 = {{add_ln23_1_fu_1134_p2}, {1'd0}};
assign tmp_19_fu_1079_p3 = {{b1_x_reg_646}, {2'd0}};
assign tmp_fu_905_p3 = {{empty_20_fu_900_p2}, {2'd0}};
assign trunc_ln14_fu_842_p1 = indvars_iv162_fu_162[1:0];
assign trunc_ln15_fu_913_p1 = indvars_iv157_reg_611[1:0];
assign trunc_ln16_fu_1052_p1 = indvars_iv153_reg_634[1:0];
assign trunc_ln25_3_fu_1216_p1 = position_q0[63:0];
assign trunc_ln25_fu_1212_p1 = position_q0[190:0];
assign trunc_ln26_1_fu_1276_p1 = force_r_q0[63:0];
assign trunc_ln26_fu_996_p1 = empty_23_fu_986_p2[6:0];
assign trunc_ln31_fu_1144_p1 = add_ln23_1_fu_1134_p2[6:0];
assign trunc_ln34_fu_1240_p1 = position_q0[51:0];
assign trunc_ln5_fu_1285_p4 = {{force_r_q0[127:64]}};
assign trunc_ln6_fu_1300_p4 = {{force_r_q0[191:128]}};
assign zext_ln14_fu_838_p1 = tmp_10_fu_830_p3;
assign zext_ln16_fu_1016_p1 = tmp_139_fu_1008_p3;
assign zext_ln23_1_fu_1130_p1 = b1_z_reg_666;
assign zext_ln23_2_fu_1139_p1 = add_ln23_1_fu_1134_p2;
assign zext_ln23_fu_1102_p1 = b1_y_reg_656;
assign zext_ln24_fu_1180_p1 = p_idx_reg_676;
assign zext_ln26_fu_1200_p1 = add_ln26_fu_1195_p2;
assign zext_ln8_1_fu_1164_p1 = tmp_141_fu_1156_p3;
assign zext_ln8_fu_1087_p1 = tmp_19_fu_1079_p3;
always @ (posedge ap_clk) begin
    zext_ln14_reg_3084[1:0] <= 2'b00;
    zext_ln14_reg_3084[5] <= 1'b0;
    smax164_cast_reg_3089[2] <= 1'b0;
    tmp_reg_3107[1:0] <= 2'b00;
    smax159_cast_reg_3112[2] <= 1'b0;
    add_ln16_2_reg_3135[0] <= 1'b0;
    smax_cast_reg_3150[2] <= 1'b0;
    zext_ln8_reg_3163[1:0] <= 2'b00;
    zext_ln8_reg_3163[5] <= 1'b0;
    tmp_140_reg_3176[1:0] <= 2'b00;
    add_ln8_reg_3194[0] <= 1'b0;
end
endmodule 